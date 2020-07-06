#define LED			P1_4
#define SW2			P0_7	// Magnetic switch
#define PIR2		P1_1	// PIR 

#define	NODE_ID		0x54

#define NETWORK_ID	0xAA
#define NODE_CTRL	0x41
#define NODE_PIR0	0x50
#define NODE_PIR1	0x51
#define NODE_PIR2	0x52
#define NODE_PIR3	0x53
#define NODE_PIR4	0x54
#define NODE_E_SW	0x56

#define	PIR			0x11
#define	MAG_SW		0x21
#define HEART_BEAT	0x01

#define	DATA_NULL	0x00

#define T_REPORT	10	// default = 3minutes or 180 (1secs *180)

#include <f930lib.h>
//#include <f930uart.h>
#include "SleepMode.h"
#include "SPIOnRF24.h"
#include "Config.h"

bit swValOldSW2;
bit swValOldPIR2;
//unsigned char checkSum;
//xdata unsigned char Tx_Buff[6]={0x88,0x88,0xef,0xbe,0xad,0xde};
xdata unsigned char Tx_Buff[6]={0x00,DATA_NULL,DATA_NULL,NODE_ID,NODE_CTRL,NETWORK_ID};
xdata unsigned char Rx_Buff[6];

tmr2DlyGType	heartBeatTmr;
tmr2DlyGType	checkEventTmr;

void dlyHeartBeatTmrSet(unsigned int n)
{
	tmr2DlyGSet(&heartBeatTmr,n,0);
}
bit dlyHeartBeatTmrExpired(void)
{
	return tmr2DlyGExpired(&heartBeatTmr);
}

void dlyCheckEventTmrSet(unsigned int n)
{
	tmr2DlyGSet(&checkEventTmr,n,0);
}
bit dlyCheckEventTmrExpired(void)
{
	return tmr2DlyGExpired(&checkEventTmr);
}

bit swPressedSW2 (void)
{
	bit swVal;
	swVal = SW2;
	if(swValOldSW2 == 1 && swVal == 0)
	{
		swValOldSW2 = swVal;
	//	delayms(10);
		return 1;
	}
	swValOldSW2 = swVal;
	//delayms(10);
	return 0;
}

bit swPressedPIR2 (void)
{
	bit swVal;
	swVal = PIR2;
	if(swValOldPIR2 == 1 && swVal == 0)
	{
		swValOldPIR2 = swVal;
		delayms(10);
		return 1;
	}
	swValOldPIR2 = swVal;
	delayms(10);
	return 0;
}

void sysInit( void )
{
	sysClkSetParNDlyPrec(&sc_precisionD4); // first call after Init_Device();
	// there are D1, D2, D4, D8, D16, D32, D64, D128
//	uartInit2(B9600_CD4); // baud rate based on precision clock divide;
	// there are CD1, CD2, CD4, ... CD128; not all rates are supported
	setAddress0();		// call routine to change ID at SPIOnRF24.h and .c
	setAddress1();
	SPI0_Init();
	adcInit(29, AP1_2);
//	delayms(100);
}

void smaRTCInit(void)
{
	OSCILLATOR_Init ();                 // Initialize Oscillator
	RTC_Init ();                        // Initialize SmaRTClock
	RTC_WriteAlarm(1000);// Set the Alarm Value
	RTC0CN_SetBits(RTC0TR+RTC0AEN+ALRM);// Enable Counter, Alarm, and Auto-Reset
}

void powerMgmInit(void)
{
	LPM_Init();                         // Initialize Power Management
	LPM_Enable_Wakeup(RTC);
}

void swLEDInit(void)
{
	swValOldSW2 = SW2;
	LED = 1;
	delayms(1000);
	LED =  0;
}

unsigned char getCheckSum(unsigned char Data2, unsigned char Data1, unsigned char DestID)
{
	unsigned char checkSum;

	checkSum = NETWORK_ID ^ DestID ^ NODE_ID ^ Data1 ^ Data2;
	return checkSum;
}

void blinkLED(int n)
{
	char i;
	for (i = 0; i<n; i++)
	{
		LED = 1;
		delayms(200);
		LED = 0;
		delayms(200);
	}
}

void main (void)
{
	bit bWake = 0;
	unsigned char swFlag = 0;
	int iCount = 0;
	int iTry = 0;
	unsigned char nodeByte = 0x22;
	unsigned char battery = 0x00;
	int iInterval = 0;
	Init_Device();
	sysInit();
	swLEDInit();
	smaRTCInit();
	powerMgmInit();

	EA = 1;
	RTC_Alarm = 1;                      // Set the RTC Alarm Flag on startup
//	tmr2Init(1);
//	dlyHeartBeatTmrSet(1000);	// ~45s 1 heartbeat (2000*1000/1000 * 22.5s)

	while (1)
	{
		if(RTC_Alarm)
     	{	
         	RTC_Alarm = 0;          // Reset RTC Alarm Flag to indicate that we have detected an alarm 
									// and are handling the alarm event
									// Alarm  = moment of wake up
			bWake = 1;
			sysInit();
			tmr2Init(1);
			dlyCheckEventTmrSet(50);
			iCount++;

			while(1)
			{	
				if (iCount == T_REPORT)	// Every 3 minutes
				{
					CE = 1;
					
					Tx_Buff[2] = nodeByte;
					Tx_Buff[1] = adcGet() >> 2;
					Tx_Buff[0] = getCheckSum(Tx_Buff[1], nodeByte, NODE_CTRL);
					//if (Tx_Mode(&Tx_Buff[0]) == 0x00)
					//{
					Tx_Mode(&Tx_Buff[0]);
				//	blinkLED(1);
					
					iCount = 0;
					nodeByte = 0x22;
				}
				
				if ( swPressedPIR2() )
				{
					nodeByte = (nodeByte & 0xF0 ) | 0x01;
				//	blinkLED(2);
				}

				if ( swPressedSW2() )
				{
					nodeByte = (nodeByte & 0x0F ) | 0x10;
				//	blinkLED(2);
				}

				if (dlyCheckEventTmrExpired())
				{
					break;
				}
			}

			                      // Enter Sleep Until Next Alarm
			bWake = 0;
			CE = 0;

     	}// If Loop for RTC Alarm

		if(bWake == 1)
      	{
         // Wait for next alarm or clock failure, then clear flags
        	while((PMU0CF & RTCAWK) == 0);
         	if(PMU0CF & RTCAWK) RTC_Alarm = 1;
         	if(PMU0CF & RTCFWK) RTC_Failure = 1;
         	PMU0CF = CLEAR;
              
      	}
      	else
      	{
			CE = 0;
			LPM(SLEEP);                      // Enter Sleep Until Next Alarm
      	}
		
		
	}	// while loop
}	// Main loop