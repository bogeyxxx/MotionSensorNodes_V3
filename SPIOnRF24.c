#include <f930lib.h>
#include "SPIOnRF24.h"
#include "Config.h"

//void SPI0_Init(void);

//xdata unsigned char Tx_Address[5]={0x35,0x43,0x10,0x01,0x01};
xdata unsigned char Tx_Address[5]={0x50,0x46,0x2C,0x2C,0x2C};

void setAddress0(void)
{
	unsigned char ID;
	ID = getAddress0();		// call routine at Config.h and .c to allow user to change
	Tx_Address[0] = ID;
}

void setAddress1(void)
{
	unsigned char ID;
	ID = getAddress1();
	Tx_Address[1] = ID;
}

void SPI0_Init()
{
	SPI0CFG=0x40;
	SPI0CN =0x0D;
	SPI0CKR=0x08;
}

void WR_nRF24(char reg,char reg_val)
{
	NSS0MD0=0; //Chip Select Active
   	SPI_SendByte(0x20+reg); //
   	SPI_SendByte(reg_val);
   	NSS0MD0=1;
}

void SPI_SendByte(char byte)
{		
	SPI0DAT = byte;
	while(!SPIF0); //Wait for the interrupt flag	
	SPIF0=0;
}

char SPI_RecByte(void)
{	
	SPI_SendByte(0x00);	
	return SPI0DAT;
}

unsigned char Tx_Mode(unsigned char *dataPtr)
{
	unsigned char i,status;
		///////*******Write to NRF24L01********///////
	CE=0;
	WR_nRF24(EN_AA,0x01); 		//Enable Auto-Ack
	WR_nRF24(EN_RXADDR,0x01); 	//Enable Data Pine0
	WR_nRF24(SETUP_RETR,0xFF);  	//Setup Retry 500us and 15 times 
	WR_nRF24(RF_CH,0x00);  		//Setup RF channel 0x00, write data in to this reg and freq=2.4GHz+data.
	WR_nRF24(RF_SETUP,0x26); 	//RF front end at 250kbps, 0dBm
	WR_nRF24(CONFIG,0x0E); 		//2 Bytes CRC. Power Up and TX.

	/////********Write Tx Addr*************/////
	NSS0MD0=0; //Chip Select Active
	SPI_SendByte(0x20+0x10); //
	for(i=0;i<TX_ADDR_WIDTH;i++)
	{
		SPI_SendByte(Tx_Address[i]);
	}
	NSS0MD0=1;
	
	/////********Write Rx Addr*************/////
	//For Auto-Acknowledgement, the Rx address must be the same as the Tx.
	NSS0MD0=0; //Chip Select Active
	SPI_SendByte(0x20+0x0A); //
	for(i=0;i<TX_ADDR_WIDTH;i++)
	{
		SPI_SendByte(Tx_Address[i]);
	}
	NSS0MD0=1;

	///Flush Tx FIFO////
   NSS0MD0=0; //Chip Select Active
   SPI_SendByte(0xE1); //
   NSS0MD0=1;
   
   /////Send the Data
	NSS0MD0=0; //Chip Select Active
	SPI_SendByte(0xA0); //
	for(i=0;i<DATA_LENGTH;i++)
	{
		SPI_SendByte(*dataPtr);
		dataPtr++;
	}
	NSS0MD0=1;
   
	WR_nRF24(7,0x3E); 
	
	CE=1;
    
	while(INT_NRF==1); //Wait For Interrupt.
   
    NSS0MD0=0; //Chip Select Active
	status=SPI_RecByte(); //
    NSS0MD0=1;	
    
    Rx_Mode();
    
    if(((status) & (0x20)) ==0x20 )
	{	
		return 0x00; //Successfully.
	}
	else 
		return 0xFF;
   
}

void Rx_Mode(void)
{
	unsigned char i;
	CE=0;
	   ///////*******Write to NRF24L01********///////   
	WR_nRF24(EN_AA,0x3F); 		//Enable Auto-Ack
	WR_nRF24(EN_RXADDR,0x03); 	//Enable Data Pine0
	WR_nRF24(RF_CH,0x00);  		//Setup RF channel 0x00
	WR_nRF24(RF_SETUP,0x26); 	//RF front end at 250kbps, 0dBm
	WR_nRF24(RX_PW_P0,DATA_LENGTH); 	//RX Payload size 5 bytes.
	WR_nRF24(RX_PW_P1,DATA_LENGTH); 	//RX Payload size 5 bytes.
	WR_nRF24(CONFIG,0x0F);  	//2 Bytes CRC. Power Up and RX Mode.

	/////********Write Tx Addr*************/////
	NSS0MD0=0; //Chip Select Active
	SPI_SendByte(0x20+0x10); //
	for(i=0;i<TX_ADDR_WIDTH;i++)
	{
		SPI_SendByte(Tx_Address[i]);
	}
	NSS0MD0=1;
	
	/////********Write Rx Addr*************/////
	NSS0MD0=0; //Chip Select Active
	SPI_SendByte(0x20+0x0A); //
	for(i=0;i<TX_ADDR_WIDTH;i++)
	{
		SPI_SendByte(Tx_Address[i]);
	}
	NSS0MD0=1;
	
		///*********Flush Rx FIFO**********///
	NSS0MD0=0; 			//Chip Select Active
	SPI_SendByte(0xE2); //
	NSS0MD0=1;
	CE=1;
}