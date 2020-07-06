#include <f930lib.h>
//#include <compiler_defs.h>             // compiler declarations
//#include <C8051F912_defs.h>            // SFR declarations

#include "SleepMode.h"
#include "SPIOnRF24.h"

U8 RTC0CN_Local;                       // Holds the desired RTC0CN settings
U8 PMU0CF_Local;                       // Holds the desired Wake-up sources

// Define Wake-Up Flags
U8 RTC_Alarm;
U8 RTC_Failure;
U8 Comparator_Wakeup;
U8 Port_Match_Wakeup;


void LPM_Init (void)
{
  	PMU0CF = CLEAR;
  	PMU0CF_Local = 0;
  	RTC_Alarm = 0;
  	RTC_Failure = 0;
  	Comparator_Wakeup = 0;
  	Port_Match_Wakeup = 0;
  	P2MDOUT |= 0x01;
}

void LPM_Enable_Wakeup (U8 wakeup)
{
  	PMU0CF_Local |= (wakeup & (RTC | PORT_MATCH | COMPARATOR));
}

void LPM(U8 mode)
{
   	U8 b;
   	U8 CLKSEL_save;
   	U8 EA_save;
   	U8 PMU0CF_snapshot;
   	U8 RTC0CN_snapshot;
   
   	// Save current interrupt state and disable interrupts 
   	EA_save = EA;
   	EA = 0;
   
   	// Save current system clock selection and select the low power oscillator
   	// divided by 2 as the system clock
   	CLKSEL_save = CLKSEL;
   	CLKSEL = 0x14;
   
   	// Enable the Flash read one-shot timer   
   	FLSCL &= ~BYPASS;                   // Clear the one-shot bypass bit
   	FLWR  =   NON_ZERO;                 // Write a "dummy" value to FLWR
   
   	// Verify that the system clock setting has been applied
   	while(!(CLKSEL & 0x80));            // Wait until CLKRDY -> 1
   

   	//----------------------------------
   	// ~~~ Device in Low Power Mode ~~~
   	//
    PMU0CF = (mode | PMU0CF_Local);
   	//
   	// ~~~   Device is now Awake    ~~~
   	//----------------------------------
   

   	// Restore the System Clock
   	CLKSEL = CLKSEL_save;
   
   	// Disable (Bypass) the Flash Read one-shot timer if the system clock
   	// frequency is higher than 10 MHz
   	if(SYSCLK > 10000000)
   	{
      	FLSCL |= BYPASS;                 // Set the one-shot bypass bit                     
   	}
  
   	// Capture the wake-up source and clear all wake-up source flags   
   	PMU0CF_snapshot = PMU0CF;
   	PMU0CF = CLEAR;

   	// Capture RTC events that occured while PMU0CF was being cleared
   	RTC0CN_snapshot = RTC_Read(RTC0CN); 

   	// If an RTC Alarm occured while PMU0CF was being cleared, clear 
   	// the PCU0CF flag again   
   	if(RTC0CN_snapshot & (ALRM) && ((PMU0CF_snapshot & RTCAWK) == 0))
   	{
      	PMU0CF_snapshot |= PMU0CF;
      	PMU0CF = CLEAR;
   	}

   	//----------------------------------
   	// Decode Wake-Up Sources
   	//----------------------------------

   	// Check for an RTC Alarm
   	if((PMU0CF_snapshot & RTCAWK) || (RTC0CN_snapshot & ALRM))
   	{
      	RTC_Alarm = 1;
   	}
   	// Check for an RTC Clock Failure
   	if((PMU0CF_snapshot & RTCFWK) || (RTC0CN_snapshot & OSCFAIL))
   	{
      	RTC_Failure = 1;  
   	}
   	// Check for a Port Match Wakeup
   	if(PMU0CF_snapshot & PMATWK)
   	{
      	Port_Match_Wakeup = 1;  
   	}
   	// Check for a Comparator Wakeup
   	if(PMU0CF_snapshot & CPT0WK)
   	{
      	Comparator_Wakeup = 1;  
   	}
   
   	// Restore Interrupt State
   		EA = EA_save;
   
   	// Check for a reset pin Wakeup
   	if(PMU0CF_snapshot & RSTWK)
   	{
      	// Delay 15uS per datasheet recommendation
      	for(b = 255; b > 0; b--);
   	}
    
} 

void OSCILLATOR_Init (void)
{
   RSTSRC = 0x06;                      // Enable missing clock detector and
                                       // leave VDD Monitor enabled.
   CLKSEL = 0x24;                      // Select low power internal osc.
                                       // divided by 1 as the system clock
   FLSCL |= 0x40;                      // Set the BYPASS bit for operation > 10MHz
}

U8 RTC_Read (U8 reg)
{

   	RTC0ADR  = (0x90 | reg);            // pick register and set BUSY to 
                                       // initiate the read                              
   	NOP(); NOP(); NOP();                // delay 3 system clocks   
   	return RTC0DAT;                     // return value
}

void RTC_Write (U8 reg, U8 value)
{
   	RTC0ADR  = (0x10 | reg);            // pick register
   	RTC0DAT = value;                    // write data
}

void RTC_WriteAlarm (U32 alarm)
{   
   	UU32 alarm_value;

	alarm = alarm/60000.0 * SYSCLK;

   	alarm_value.U32 = alarm;   

   	// Temporarily disable alarm while updating registers
   	RTC0ADR = (0x10 | RTC0CN);
   	RTC0DAT = (RTC0CN_Local & ~RTC0AEN);       
   	NOP();
   
   	// Write the value to the alarm registers
   	RTC0ADR = (0x10 | ALARM0);       
   	RTC0DAT = alarm_value.U8[b0];    // write data
   	NOP();
   	RTC0DAT = alarm_value.U8[b1];    // write data
   	NOP();
   	RTC0DAT = alarm_value.U8[b2];    // write data
   	NOP(); 
   	RTC0DAT = alarm_value.U8[b3];    // write data
   	NOP(); 
   
   	// Restore alarm state after registers have been written
   	RTC0ADR = (0x10 | RTC0CN);
   	RTC0DAT = RTC0CN_Local;  
}

void RTC0CN_SetBits(U8 bits)
{
	RTC0CN_Local |= (bits & ~0x03);
   	RTC_Write( RTC0CN, RTC0CN_Local | bits);
}

void RTC_Init (void)
{
   	unsigned int i;

   	unsigned char CLKSEL_SAVE = CLKSEL;
   	unsigned char RTC0PIN_READ;

   	// If the interface is locked
   	if(RTC0KEY == 0x00)
   	{
      	RTC0KEY = 0xA5;                  // Unlock the smaRTClock interface
      	RTC0KEY = 0xF1;
   	}

   	//----------------------------------------
   	// Configure the SmaRTClock to crystal
   	// or self-oscillate mode
   	//----------------------------------------  

   	#if(RTC_CLKSRC == CRYSTAL)
         
      	RTC_Write (RTC0XCN, 0x60);       // Configure the smaRTClock
                                       // oscillator for crystal mode
                                       // Bias Doubling Enabled
                                       // AGC Disabled

      	RTC_Write (RTC0XCF, 0x83);       // Enable Automatic Load Capacitance
                                       // stepping and set the desired
                                       // load capacitance to 4.5pF plus
                                       // the stray PCB capacitance
   	#elif(RTC_CLKSRC == SELFOSC)
     	// Short XTAL3 and XTAL4 together
      	RTC0PIN_READ = RTC_Read (RTC0PIN);
      	RTC_Write (RTC0PIN, RTC0PIN_READ | 0x80);   

      	// Configure smaRTClock to self-oscillate mode with bias X2 disabled
      	// If device has an LFO, then it will be used instead of self-oscillate mode
      	RTC_Write (RTC0XCN, 0x08);   
                                      
      	// Disable Auto Load Cap Stepping
      	RTC_Write (RTC0XCF, (0x00 | LOADCAP_VALUE));   
   	#else
      	#error "Must select crystal or self oscillate mode"                                   
   	#endif


   	RTC_Write (RTC0CN, 0x80);           // Enable smaRTClock oscillator
   	CLKSEL    =  0x74;                  // Switch to 156 kHz low power
                                        // internal oscillator

   	//----------------------------------------
   	// Wait for crystal to start
   	// No need to wait in self-oscillate mode
   	//---------------------------------------- 
   
   	#if(RTC_CLKSRC == CRYSTAL)
      // Wait > 20 ms
      	for (i=0x150; i!=0; i--);

      	// Wait for smaRTClock valid
      	while ((RTC_Read (RTC0XCN) & 0x10)== 0x00);

	    // Wait for Load Capacitance Ready
      	while ((RTC_Read (RTC0XCF) & 0x40)== 0x00);

      	RTC_Write (RTC0XCN, 0xC0);          // Enable Automatic Gain Control
   	#endif

	
   	RTC_Write (RTC0CN, 0xC0);           // Enable missing smaRTClock detector
                                        // and leave smaRTClock oscillator
                                        // enabled.
   	// Wait > 2 ms
   	for (i=0x340; i!=0; i--);

   	RTC_Write (RTC0CN, 0xC0);           // Clear the clock fail flag (precautionary).
   
   	PMU0CF = 0x20;                      // Clear PMU wake-up source flags

   	CLKSEL = CLKSEL_SAVE;               // Restore system clock
   	while(!(CLKSEL & 0x80));            // Poll CLKRDY

   	RTC0CN_Local = 0xC0;                // Initialize Local Copy of RTC0CN
}