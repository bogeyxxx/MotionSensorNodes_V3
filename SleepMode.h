
#include <f930lib.h>
#define SELFOSC 0
#define CRYSTAL 1

// RTC Clock Source
#define RTC_CLKSRC   SELFOSC

// Crystal Load Capacitance
#define LOADCAP_VALUE  3               //  0 =  4.0 pf,  1 =  4.5 pf
                                       //  2 =  5.0 pf,  3 =  5.5 pf
                                       //  4 =  6.0 pf,  5 =  6.5 pf
                                       //  6 =  7.0 pf,  7 =  7.5 pf 
                                       //  8 =  8.0 pf,  9 =  8.5 pf
                                       // 10 =  9.0 pf, 11 =  9.5 pf
                                       // 12 = 10.5 pf, 13 = 11.5 pf
                                       // 14 = 12.5 pf, 15 = 13.5 pf

//#define RTCCLK  	3125000	// ~6 seconds		// 50,000 => 1 seconds //(31250 * 2)
//#define RTCCLK		5208333	// ~10 seconds
//#define RTCCLK		520833	// 1 seconds
//#define RTCCLK		52083	// 100ms
//#define RTCCLK		5208	//10ms


//#define SYSCLK		25000000		//25MHz
#define SYSCLK		3125000			//25MHz /8

// Constants for determining the RTC wake-up interval
//#define WAKE_INTERVAL   100         // Wakeup-interval in milliseconds
//#define WAKE_INTERVAL_TICKS  ((RTCCLK * 100) / 1000L)
//#define WAKE_INTERVAL_TICKS	RTCCLK / 10
//#define ONE_MS_TICKS         ((RTCCLK * 1 ) / 1000L)

// SmaRTClock Internal Registers
#define CAPTURE0  0x00                 // RTC address of CAPTURE0 register
#define CAPTURE1  0x01                 // RTC address of CAPTURE1 register
#define CAPTURE2  0x02                 // RTC address of CAPTURE2 register
#define CAPTURE3  0x03                 // RTC address of CAPTURE3 register
#define RTC0CN    0x04                 // RTC address of RTC0CN register
#define RTC0XCN   0x05                 // RTC address of RTC0XCN register
#define RTC0XCF   0x06                 // RTC address of RTC0XCF register
#define RTC0PIN   0x07                 // RTC address of RTC0PIN register
#define ALARM0    0x08                 // RTC address of ALARM0 register
#define ALARM1    0x09                 // RTC address of ALARM1 register
#define ALARM2    0x0A                 // RTC address of ALARM2 register
#define ALARM3    0x0B                 // RTC address of ALARM3 register

// SmaRTClock Bit Definitions
#define RTC0CAP   0x01
#define RTC0SET   0x02
#define ALRM      0x04
#define RTC0AEN   0x08
#define RTC0TR    0x10
#define OSCFAIL   0x20
#define MCLKEN    0x40
#define RTC0EN    0x80

// Power Management Bit Definitions
#define SLEEP        0x80              // Sleep Mode Select
#define SUSPEND      0x40              // Suspend Mode Select
#define CLEAR        0x20              // Wake-Up Flag Clear
#define RSTWK        0x10              // Reset Pin Falling Edge Wake-Up
#define RTCFWK       0x08              // SmaRTClock Failure Wake-Up
#define RTCAWK       0x04              // SmaRTClock Alarm Wake-Up
#define PMATWK       0x02              // Port Match Wake-Up
#define CPT0WK       0x01              // Comparator0 Wake-Up

// Friendly names for the LPM function arguments
#define PORT_MATCH   PMATWK
#define RTC          RTCFWK + RTCAWK
#define COMPARATOR   CPT0WK

// FLSCL Bit Definition
#define BYPASS    0x40
#define NON_ZERO  0x01

extern U8 RTC0CN_Local;                       // Holds the desired RTC0CN settings
extern U8 PMU0CF_Local;                       // Holds the desired Wake-up sources

// Define Wake-Up Flags
extern U8 RTC_Alarm;
extern U8 RTC_Failure;
extern U8 Comparator_Wakeup;
extern U8 Port_Match_Wakeup;


void OSCILLATOR_Init (void);
void RTC_Init (void);
U8 RTC_Read (U8 reg);
void RTC_Write (U8 reg, U8 value);
void RTC_WriteAlarm (U32 alarm);
void RTC0CN_SetBits(U8 bits);
void LPM_Init (void);
void LPM_Enable_Wakeup (U8 wakeup);
void LPM(U8 mode);