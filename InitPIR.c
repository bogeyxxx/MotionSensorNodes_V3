/////////////////////////////////////
//  Generated Initialization File  //
/////////////////////////////////////

#include "compiler_defs.h"
#include "C8051F912_defs.h"

// Peripheral specific initialization functions,
// Called from the Init_Device() function
void PCA_Init()
{
    PCA0MD    &= ~0x40;
    PCA0MD    = 0x00;
}

void Port_IO_Init()
{
	/*
    ; P0.0  -  Unassigned,  Open-Drain, Digital
    ; P0.1  -  Unassigned,  Open-Drain, Digital
    ; P0.2  -  Unassigned,  Open-Drain, Digital
    ; P0.3  -  Unassigned,  Open-Drain, Digital
    ; P0.4  -  TX0 (UART0), Open-Drain, Digital
    ; P0.5  -  RX0 (UART0), Open-Drain, Digital
    ; P0.6  -  Unassigned,  Open-Drain, Digital
    ; P0.7  -  Unassigned,  Open-Drain, Digital //Change to push-Pull

    ; P1.0  -  Unassigned,  Open-Drain, Digital
    ; P1.1  -  Unassigned,  Open-Drain, Digital
    ; P1.2  -  Unassigned,  Open-Drain, Digital
    ; P1.3  -  Unassigned,  Push-Pull,  Digital
    ; P1.4  -  Unassigned,  Push-Pull,  Digital
    ; P1.5  -  Unassigned,  Open-Drain, Digital
    ; P1.6  -  Unassigned,  Open-Drain, Digital
    ; P1.7  -  Unassigned,  Open-Drain, Digital

    ; P2.0  -  Unassigned,  Open-Drain, Digital
    ; P2.1  -  Unassigned,  Open-Drain, Digital
    ; P2.2  -  Unassigned,  Open-Drain, Digital
    ; P2.3  -  Unassigned,  Open-Drain, Digital
    ; P2.4  -  Unassigned,  Open-Drain, Digital
    ; P2.5  -  Unassigned,  Open-Drain, Digital
    ; P2.6  -  Unassigned,  Open-Drain, Digital
    ; P2.7  -  Skipped,     Open-Drain, Digital 
	*/

	P1MDIN    = 0xFB;		//	0b11111011; P1_2 Adc
	P0MDOUT   = 0b10001101;	//	0:SCK; 2:MOSI; 3:CSN; 4:
	P1MDOUT   = 0b00111000; //	3:XBeeSleep; 4:LED; 5:CE
    XBR0      = 0x02;		// 	Enable SPIO only
    XBR2      = 0x40;		//	Enable Crossbar
}

void Interrupts_Init()
{
    IT01CF    = 0x0F;		// Interrupt 0 on High
	IE        = 0x01;		// Interrupt 0 Enable
}

// Initialization function for device,
// Call Init_Device() from your main program
void Init_Device(void)
{
    PCA_Init();
    Port_IO_Init();
//    Interrupts_Init();
}

