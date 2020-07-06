;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Mon Mar 24 13:04:13 2014
;--------------------------------------------------------
	.module SleepMode
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RTC_Write_PARM_2
	.globl __SPKR
	.globl _PBSW
	.globl _INT
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _SPI0EN
	.globl _TXBMT0
	.globl _NSS0MD0
	.globl _NSS0MD1
	.globl _RXOVRN0
	.globl _MODF0
	.globl _WCOL0
	.globl _SPIF0
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0CM2
	.globl _AD0WINT
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _BURSTEN
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _T2XCLK
	.globl _T2RCLK
	.globl _TR2
	.globl _T2SPLIT
	.globl _TF2CEN
	.globl _TF2LEN
	.globl _TF2L
	.globl _TF2H
	.globl _SI
	.globl _ACK
	.globl _ARBLOST
	.globl _ACKRQ
	.globl _STO
	.globl _STA
	.globl _TXMODE
	.globl _MASTER
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _PSPI0
	.globl _SPI1EN
	.globl _TXBMT1
	.globl _NSS1MD0
	.globl _NSS1MD1
	.globl _RXOVRN1
	.globl _MODF1
	.globl _WCOL1
	.globl _SPIF1
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _ESPI0
	.globl _EA
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _MCE0
	.globl _S0MODE
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _PCA0CP4
	.globl _PCA0CP0
	.globl _PCA0
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP5
	.globl _TMR2
	.globl _TMR2RL
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _TMR3
	.globl _TMR3RL
	.globl _TOFF
	.globl _DP
	.globl _VDM0CN
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _SMB0ADM
	.globl _SMB0ADR
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _P0MDIN
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _FLWR
	.globl _IT01CF
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0PWM
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _P0MAT
	.globl _P2SKIP
	.globl _P1SKIP
	.globl _P0SKIP
	.globl _PCA0CPH5
	.globl _PCA0CPL5
	.globl _REF0CN
	.globl _PSW
	.globl _P1MAT
	.globl _PCA0CPM5
	.globl _TMR2H
	.globl _TMR2L
	.globl _TMR2RLH
	.globl _TMR2RLL
	.globl _REG0CN
	.globl _TMR2CN
	.globl _P0MASK
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _P1MASK
	.globl _ADC0H
	.globl _ADC0L
	.globl _ADC0TK
	.globl _ADC0CF
	.globl _ADC0MX
	.globl _ADC0PWR
	.globl _ADC0AC
	.globl _IREF0CN
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _PMU0CF
	.globl _OSCICL
	.globl _OSCICN
	.globl _OSCXCN
	.globl _SPI1CN
	.globl _ONESHOT
	.globl _EMI0TC
	.globl _RTC0KEY
	.globl _RTC0DAT
	.globl _RTC0ADR
	.globl _EMI0CF
	.globl _EMI0CN
	.globl _CLKSEL
	.globl _IE
	.globl _SFRPAGE
	.globl _P2DRV
	.globl _P2MDOUT
	.globl _P1DRV
	.globl _P1MDOUT
	.globl _P0DRV
	.globl _P0MDOUT
	.globl _SPI0DAT
	.globl _SPI0CKR
	.globl _SPI0CFG
	.globl _P2
	.globl _CPT0MX
	.globl _CPT1MX
	.globl _CPT0MD
	.globl _CPT1MD
	.globl _CPT0CN
	.globl _CPT1CN
	.globl _SBUF0
	.globl _SCON0
	.globl _CRC0CNT
	.globl _DC0CN
	.globl _CRC0AUTO
	.globl _DC0CF
	.globl _TMR3H
	.globl _CRC0FLIP
	.globl _TMR3L
	.globl _CRC0IN
	.globl _TMR3RLH
	.globl _CRC0CN
	.globl _TMR3RLL
	.globl _CRC0DAT
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _TOFFH
	.globl _SPI1DAT
	.globl _TOFFL
	.globl _SPI1CKR
	.globl _SPI1CFG
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Port_Match_Wakeup
	.globl _Comparator_Wakeup
	.globl _RTC_Failure
	.globl _RTC_Alarm
	.globl _PMU0CF_Local
	.globl _RTC0CN_Local
	.globl _LPM_Init
	.globl _LPM_Enable_Wakeup
	.globl _LPM
	.globl _OSCILLATOR_Init
	.globl _RTC_Read
	.globl _RTC_Write
	.globl _RTC_WriteAlarm
	.globl _RTC0CN_SetBits
	.globl _RTC_Init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$SPI1CFG$0$0 == 0x0084
_SPI1CFG	=	0x0084
G$SPI1CKR$0$0 == 0x0085
_SPI1CKR	=	0x0085
G$TOFFL$0$0 == 0x0085
_TOFFL	=	0x0085
G$SPI1DAT$0$0 == 0x0086
_SPI1DAT	=	0x0086
G$TOFFH$0$0 == 0x0086
_TOFFH	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$CRC0DAT$0$0 == 0x0091
_CRC0DAT	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$CRC0CN$0$0 == 0x0092
_CRC0CN	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$CRC0IN$0$0 == 0x0093
_CRC0IN	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$CRC0FLIP$0$0 == 0x0095
_CRC0FLIP	=	0x0095
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$DC0CF$0$0 == 0x0096
_DC0CF	=	0x0096
G$CRC0AUTO$0$0 == 0x0096
_CRC0AUTO	=	0x0096
G$DC0CN$0$0 == 0x0097
_DC0CN	=	0x0097
G$CRC0CNT$0$0 == 0x0097
_CRC0CNT	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$CPT1CN$0$0 == 0x009a
_CPT1CN	=	0x009a
G$CPT0CN$0$0 == 0x009b
_CPT0CN	=	0x009b
G$CPT1MD$0$0 == 0x009c
_CPT1MD	=	0x009c
G$CPT0MD$0$0 == 0x009d
_CPT0MD	=	0x009d
G$CPT1MX$0$0 == 0x009e
_CPT1MX	=	0x009e
G$CPT0MX$0$0 == 0x009f
_CPT0MX	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$SPI0CFG$0$0 == 0x00a1
_SPI0CFG	=	0x00a1
G$SPI0CKR$0$0 == 0x00a2
_SPI0CKR	=	0x00a2
G$SPI0DAT$0$0 == 0x00a3
_SPI0DAT	=	0x00a3
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P0DRV$0$0 == 0x00a4
_P0DRV	=	0x00a4
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P1DRV$0$0 == 0x00a5
_P1DRV	=	0x00a5
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P2DRV$0$0 == 0x00a6
_P2DRV	=	0x00a6
G$SFRPAGE$0$0 == 0x00a7
_SFRPAGE	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$CLKSEL$0$0 == 0x00a9
_CLKSEL	=	0x00a9
G$EMI0CN$0$0 == 0x00aa
_EMI0CN	=	0x00aa
G$EMI0CF$0$0 == 0x00ab
_EMI0CF	=	0x00ab
G$RTC0ADR$0$0 == 0x00ac
_RTC0ADR	=	0x00ac
G$RTC0DAT$0$0 == 0x00ad
_RTC0DAT	=	0x00ad
G$RTC0KEY$0$0 == 0x00ae
_RTC0KEY	=	0x00ae
G$EMI0TC$0$0 == 0x00af
_EMI0TC	=	0x00af
G$ONESHOT$0$0 == 0x00af
_ONESHOT	=	0x00af
G$SPI1CN$0$0 == 0x00b0
_SPI1CN	=	0x00b0
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$OSCICL$0$0 == 0x00b3
_OSCICL	=	0x00b3
G$PMU0CF$0$0 == 0x00b5
_PMU0CF	=	0x00b5
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLKEY$0$0 == 0x00b7
_FLKEY	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$IREF0CN$0$0 == 0x00b9
_IREF0CN	=	0x00b9
G$ADC0AC$0$0 == 0x00ba
_ADC0AC	=	0x00ba
G$ADC0PWR$0$0 == 0x00ba
_ADC0PWR	=	0x00ba
G$ADC0MX$0$0 == 0x00bb
_ADC0MX	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC0TK$0$0 == 0x00bd
_ADC0TK	=	0x00bd
G$ADC0L$0$0 == 0x00bd
_ADC0L	=	0x00bd
G$ADC0H$0$0 == 0x00be
_ADC0H	=	0x00be
G$P1MASK$0$0 == 0x00bf
_P1MASK	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0CF$0$0 == 0x00c1
_SMB0CF	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$ADC0GTL$0$0 == 0x00c3
_ADC0GTL	=	0x00c3
G$ADC0GTH$0$0 == 0x00c4
_ADC0GTH	=	0x00c4
G$ADC0LTL$0$0 == 0x00c5
_ADC0LTL	=	0x00c5
G$ADC0LTH$0$0 == 0x00c6
_ADC0LTH	=	0x00c6
G$P0MASK$0$0 == 0x00c7
_P0MASK	=	0x00c7
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$REG0CN$0$0 == 0x00c9
_REG0CN	=	0x00c9
G$TMR2RLL$0$0 == 0x00ca
_TMR2RLL	=	0x00ca
G$TMR2RLH$0$0 == 0x00cb
_TMR2RLH	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$PCA0CPM5$0$0 == 0x00ce
_PCA0CPM5	=	0x00ce
G$P1MAT$0$0 == 0x00cf
_P1MAT	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$PCA0CPL5$0$0 == 0x00d2
_PCA0CPL5	=	0x00d2
G$PCA0CPH5$0$0 == 0x00d3
_PCA0CPH5	=	0x00d3
G$P0SKIP$0$0 == 0x00d4
_P0SKIP	=	0x00d4
G$P1SKIP$0$0 == 0x00d5
_P1SKIP	=	0x00d5
G$P2SKIP$0$0 == 0x00d6
_P2SKIP	=	0x00d6
G$P0MAT$0$0 == 0x00d7
_P0MAT	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$PCA0PWM$0$0 == 0x00df
_PCA0PWM	=	0x00df
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$IT01CF$0$0 == 0x00e4
_IT01CF	=	0x00e4
G$FLWR$0$0 == 0x00e5
_FLWR	=	0x00e5
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0CPL1$0$0 == 0x00e9
_PCA0CPL1	=	0x00e9
G$PCA0CPH1$0$0 == 0x00ea
_PCA0CPH1	=	0x00ea
G$PCA0CPL2$0$0 == 0x00eb
_PCA0CPL2	=	0x00eb
G$PCA0CPH2$0$0 == 0x00ec
_PCA0CPH2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPH3$0$0 == 0x00ee
_PCA0CPH3	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$P0MDIN$0$0 == 0x00f1
_P0MDIN	=	0x00f1
G$P1MDIN$0$0 == 0x00f2
_P1MDIN	=	0x00f2
G$P2MDIN$0$0 == 0x00f3
_P2MDIN	=	0x00f3
G$SMB0ADR$0$0 == 0x00f4
_SMB0ADR	=	0x00f4
G$SMB0ADM$0$0 == 0x00f5
_SMB0ADM	=	0x00f5
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPL4$0$0 == 0x00fd
_PCA0CPL4	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$VDM0CN$0$0 == 0x00ff
_VDM0CN	=	0x00ff
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$TOFF$0$0 == 0x8685
_TOFF	=	0x8685
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$ADC0$0$0 == 0xbebd
_ADC0	=	0xbebd
G$ADC0GT$0$0 == 0xc4c3
_ADC0GT	=	0xc4c3
G$ADC0LT$0$0 == 0xc6c5
_ADC0LT	=	0xc6c5
G$TMR2RL$0$0 == 0xcbca
_TMR2RL	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$PCA0CP5$0$0 == 0xd3d2
_PCA0CP5	=	0xd3d2
G$PCA0CP1$0$0 == 0xeae9
_PCA0CP1	=	0xeae9
G$PCA0CP2$0$0 == 0xeceb
_PCA0CP2	=	0xeceb
G$PCA0CP3$0$0 == 0xeeed
_PCA0CP3	=	0xeeed
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA0CP4$0$0 == 0xfefd
_PCA0CP4	=	0xfefd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ESPI0$0$0 == 0x00ae
_ESPI0	=	0x00ae
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$SPIF1$0$0 == 0x00b7
_SPIF1	=	0x00b7
G$WCOL1$0$0 == 0x00b6
_WCOL1	=	0x00b6
G$MODF1$0$0 == 0x00b5
_MODF1	=	0x00b5
G$RXOVRN1$0$0 == 0x00b4
_RXOVRN1	=	0x00b4
G$NSS1MD1$0$0 == 0x00b3
_NSS1MD1	=	0x00b3
G$NSS1MD0$0$0 == 0x00b2
_NSS1MD0	=	0x00b2
G$TXBMT1$0$0 == 0x00b1
_TXBMT1	=	0x00b1
G$SPI1EN$0$0 == 0x00b0
_SPI1EN	=	0x00b0
G$PSPI0$0$0 == 0x00be
_PSPI0	=	0x00be
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$MASTER$0$0 == 0x00c7
_MASTER	=	0x00c7
G$TXMODE$0$0 == 0x00c6
_TXMODE	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$ACKRQ$0$0 == 0x00c3
_ACKRQ	=	0x00c3
G$ARBLOST$0$0 == 0x00c2
_ARBLOST	=	0x00c2
G$ACK$0$0 == 0x00c1
_ACK	=	0x00c1
G$SI$0$0 == 0x00c0
_SI	=	0x00c0
G$TF2H$0$0 == 0x00cf
_TF2H	=	0x00cf
G$TF2L$0$0 == 0x00ce
_TF2L	=	0x00ce
G$TF2LEN$0$0 == 0x00cd
_TF2LEN	=	0x00cd
G$TF2CEN$0$0 == 0x00cc
_TF2CEN	=	0x00cc
G$T2SPLIT$0$0 == 0x00cb
_T2SPLIT	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$T2RCLK$0$0 == 0x00c9
_T2RCLK	=	0x00c9
G$T2XCLK$0$0 == 0x00c8
_T2XCLK	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF5$0$0 == 0x00dd
_CCF5	=	0x00dd
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$BURSTEN$0$0 == 0x00ee
_BURSTEN	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0WINT$0$0 == 0x00eb
_AD0WINT	=	0x00eb
G$AD0CM2$0$0 == 0x00ea
_AD0CM2	=	0x00ea
G$AD0CM1$0$0 == 0x00e9
_AD0CM1	=	0x00e9
G$AD0CM0$0$0 == 0x00e8
_AD0CM0	=	0x00e8
G$SPIF0$0$0 == 0x00ff
_SPIF0	=	0x00ff
G$WCOL0$0$0 == 0x00fe
_WCOL0	=	0x00fe
G$MODF0$0$0 == 0x00fd
_MODF0	=	0x00fd
G$RXOVRN0$0$0 == 0x00fc
_RXOVRN0	=	0x00fc
G$NSS0MD1$0$0 == 0x00fb
_NSS0MD1	=	0x00fb
G$NSS0MD0$0$0 == 0x00fa
_NSS0MD0	=	0x00fa
G$TXBMT0$0$0 == 0x00f9
_TXBMT0	=	0x00f9
G$SPI0EN$0$0 == 0x00f8
_SPI0EN	=	0x00f8
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$INT$0$0 == 0x0086
_INT	=	0x0086
G$PBSW$0$0 == 0x0086
_PBSW	=	0x0086
G$_SPKR$0$0 == 0x0087
__SPKR	=	0x0087
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$RTC0CN_Local$0$0==.
_RTC0CN_Local::
	.ds 1
G$PMU0CF_Local$0$0==.
_PMU0CF_Local::
	.ds 1
G$RTC_Alarm$0$0==.
_RTC_Alarm::
	.ds 1
G$RTC_Failure$0$0==.
_RTC_Failure::
	.ds 1
G$Comparator_Wakeup$0$0==.
_Comparator_Wakeup::
	.ds 1
G$Port_Match_Wakeup$0$0==.
_Port_Match_Wakeup::
	.ds 1
LSleepMode.RTC_WriteAlarm$alarm_value$1$266==.
_RTC_WriteAlarm_alarm_value_1_266:
	.ds 4
LSleepMode.RTC_WriteAlarm$sloc0$1$0==.
_RTC_WriteAlarm_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
LSleepMode.RTC_Write$value$1$263==.
_RTC_Write_PARM_2:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LPM_Init'
;------------------------------------------------------------
	G$LPM_Init$0$0 ==.
	C$SleepMode.c$18$0$0 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:18: void LPM_Init (void)
;	-----------------------------------------
;	 function LPM_Init
;	-----------------------------------------
_LPM_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$SleepMode.c$20$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:20: PMU0CF = CLEAR;
	mov	_PMU0CF,#0x20
	C$SleepMode.c$21$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:21: PMU0CF_Local = 0;
	mov	_PMU0CF_Local,#0x00
	C$SleepMode.c$22$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:22: RTC_Alarm = 0;
	mov	_RTC_Alarm,#0x00
	C$SleepMode.c$23$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:23: RTC_Failure = 0;
	mov	_RTC_Failure,#0x00
	C$SleepMode.c$24$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:24: Comparator_Wakeup = 0;
	mov	_Comparator_Wakeup,#0x00
	C$SleepMode.c$25$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:25: Port_Match_Wakeup = 0;
	mov	_Port_Match_Wakeup,#0x00
	C$SleepMode.c$26$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:26: P2MDOUT |= 0x01;
	orl	_P2MDOUT,#0x01
	C$SleepMode.c$27$1$247 ==.
	XG$LPM_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LPM_Enable_Wakeup'
;------------------------------------------------------------
;wakeup                    Allocated to registers r7 
;------------------------------------------------------------
	G$LPM_Enable_Wakeup$0$0 ==.
	C$SleepMode.c$29$1$247 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:29: void LPM_Enable_Wakeup (U8 wakeup)
;	-----------------------------------------
;	 function LPM_Enable_Wakeup
;	-----------------------------------------
_LPM_Enable_Wakeup:
	mov	r7,dpl
	C$SleepMode.c$31$1$249 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:31: PMU0CF_Local |= (wakeup & (RTC | PORT_MATCH | COMPARATOR));
	mov	a,#0x0F
	anl	a,r7
	orl	_PMU0CF_Local,a
	C$SleepMode.c$32$1$249 ==.
	XG$LPM_Enable_Wakeup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LPM'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;b                         Allocated to registers r7 
;CLKSEL_save               Allocated to registers r5 
;EA_save                   Allocated to registers r6 
;PMU0CF_snapshot           Allocated to registers r7 
;RTC0CN_snapshot           Allocated to registers r5 
;------------------------------------------------------------
	G$LPM$0$0 ==.
	C$SleepMode.c$34$1$249 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:34: void LPM(U8 mode)
;	-----------------------------------------
;	 function LPM
;	-----------------------------------------
_LPM:
	mov	r7,dpl
	C$SleepMode.c$43$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:43: EA_save = EA;
	mov	c,_EA
	clr	a
	rlc	a
	mov	r6,a
	C$SleepMode.c$44$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:44: EA = 0;
	clr	_EA
	C$SleepMode.c$48$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:48: CLKSEL_save = CLKSEL;
	mov	r5,_CLKSEL
	C$SleepMode.c$49$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:49: CLKSEL = 0x14;
	mov	_CLKSEL,#0x14
	C$SleepMode.c$52$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:52: FLSCL &= ~BYPASS;                   // Clear the one-shot bypass bit
	mov	r4,_FLSCL
	mov	a,#0xBF
	anl	a,r4
	mov	_FLSCL,a
	C$SleepMode.c$53$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:53: FLWR  =   NON_ZERO;                 // Write a "dummy" value to FLWR
	mov	_FLWR,#0x01
	C$SleepMode.c$56$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:56: while(!(CLKSEL & 0x80));            // Wait until CLKRDY -> 1
00101$:
	mov	a,_CLKSEL
	jnb	acc.7,00101$
	C$SleepMode.c$62$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:62: PMU0CF = (mode | PMU0CF_Local);
	mov	a,_PMU0CF_Local
	orl	a,r7
	mov	_PMU0CF,a
	C$SleepMode.c$69$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:69: CLKSEL = CLKSEL_save;
	mov	_CLKSEL,r5
	C$SleepMode.c$79$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:79: PMU0CF_snapshot = PMU0CF;
	mov	r7,_PMU0CF
	C$SleepMode.c$80$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:80: PMU0CF = CLEAR;
	mov	_PMU0CF,#0x20
	C$SleepMode.c$83$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:83: RTC0CN_snapshot = RTC_Read(RTC0CN); 
	mov	dpl,#0x04
	push	ar7
	push	ar6
	lcall	_RTC_Read
	mov	r5,dpl
	pop	ar6
	pop	ar7
	C$SleepMode.c$87$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:87: if(RTC0CN_snapshot & (ALRM) && ((PMU0CF_snapshot & RTCAWK) == 0))
	mov	a,r5
	jnb	acc.2,00107$
	mov	a,r7
	jb	acc.2,00107$
	C$SleepMode.c$89$2$253 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:89: PMU0CF_snapshot |= PMU0CF;
	mov	a,_PMU0CF
	orl	ar7,a
	C$SleepMode.c$90$2$253 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:90: PMU0CF = CLEAR;
	mov	_PMU0CF,#0x20
00107$:
	C$SleepMode.c$98$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:98: if((PMU0CF_snapshot & RTCAWK) || (RTC0CN_snapshot & ALRM))
	mov	a,r7
	jb	acc.2,00109$
	mov	a,r5
	jnb	acc.2,00110$
00109$:
	C$SleepMode.c$100$2$254 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:100: RTC_Alarm = 1;
	mov	_RTC_Alarm,#0x01
00110$:
	C$SleepMode.c$103$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:103: if((PMU0CF_snapshot & RTCFWK) || (RTC0CN_snapshot & OSCFAIL))
	mov	a,r7
	jb	acc.3,00112$
	mov	a,r5
	jnb	acc.5,00113$
00112$:
	C$SleepMode.c$105$2$255 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:105: RTC_Failure = 1;  
	mov	_RTC_Failure,#0x01
00113$:
	C$SleepMode.c$108$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:108: if(PMU0CF_snapshot & PMATWK)
	mov	a,r7
	jnb	acc.1,00116$
	C$SleepMode.c$110$2$256 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:110: Port_Match_Wakeup = 1;  
	mov	_Port_Match_Wakeup,#0x01
00116$:
	C$SleepMode.c$113$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:113: if(PMU0CF_snapshot & CPT0WK)
	mov	a,r7
	jnb	acc.0,00118$
	C$SleepMode.c$115$2$257 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:115: Comparator_Wakeup = 1;  
	mov	_Comparator_Wakeup,#0x01
00118$:
	C$SleepMode.c$119$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:119: EA = EA_save;
	mov	a,r6
	add	a,#0xff
	mov	_EA,c
	C$SleepMode.c$122$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:122: if(PMU0CF_snapshot & RSTWK)
	mov	a,r7
	jnb	acc.4,00125$
	C$SleepMode.c$125$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:125: for(b = 255; b > 0; b--);
	mov	r7,#0xFF
00121$:
	mov	a,r7
	jz	00125$
	dec	r7
	sjmp	00121$
00125$:
	C$SleepMode.c$128$1$251 ==.
	XG$LPM$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OSCILLATOR_Init'
;------------------------------------------------------------
	G$OSCILLATOR_Init$0$0 ==.
	C$SleepMode.c$130$1$251 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:130: void OSCILLATOR_Init (void)
;	-----------------------------------------
;	 function OSCILLATOR_Init
;	-----------------------------------------
_OSCILLATOR_Init:
	C$SleepMode.c$132$1$260 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:132: RSTSRC = 0x06;                      // Enable missing clock detector and
	mov	_RSTSRC,#0x06
	C$SleepMode.c$134$1$260 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:134: CLKSEL = 0x24;                      // Select low power internal osc.
	mov	_CLKSEL,#0x24
	C$SleepMode.c$136$1$260 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:136: FLSCL |= 0x40;                      // Set the BYPASS bit for operation > 10MHz
	orl	_FLSCL,#0x40
	C$SleepMode.c$137$1$260 ==.
	XG$OSCILLATOR_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RTC_Read'
;------------------------------------------------------------
;reg                       Allocated to registers r7 
;------------------------------------------------------------
	G$RTC_Read$0$0 ==.
	C$SleepMode.c$139$1$260 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:139: U8 RTC_Read (U8 reg)
;	-----------------------------------------
;	 function RTC_Read
;	-----------------------------------------
_RTC_Read:
	mov	r7,dpl
	C$SleepMode.c$142$1$262 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:142: RTC0ADR  = (0x90 | reg);            // pick register and set BUSY to 
	mov	a,#0x90
	orl	a,r7
	mov	_RTC0ADR,a
	C$SleepMode.c$144$1$262 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:144: NOP(); NOP(); NOP();                // delay 3 system clocks   
	NOP 
	NOP 
	NOP 
	C$SleepMode.c$145$1$262 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:145: return RTC0DAT;                     // return value
	mov	dpl,_RTC0DAT
	C$SleepMode.c$146$1$262 ==.
	XG$RTC_Read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RTC_Write'
;------------------------------------------------------------
;value                     Allocated with name '_RTC_Write_PARM_2'
;reg                       Allocated to registers r7 
;------------------------------------------------------------
	G$RTC_Write$0$0 ==.
	C$SleepMode.c$148$1$262 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:148: void RTC_Write (U8 reg, U8 value)
;	-----------------------------------------
;	 function RTC_Write
;	-----------------------------------------
_RTC_Write:
	mov	r7,dpl
	C$SleepMode.c$150$1$264 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:150: RTC0ADR  = (0x10 | reg);            // pick register
	mov	a,#0x10
	orl	a,r7
	mov	_RTC0ADR,a
	C$SleepMode.c$151$1$264 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:151: RTC0DAT = value;                    // write data
	mov	_RTC0DAT,_RTC_Write_PARM_2
	C$SleepMode.c$152$1$264 ==.
	XG$RTC_Write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RTC_WriteAlarm'
;------------------------------------------------------------
;alarm                     Allocated to registers r4 r5 r6 r7 
;alarm_value               Allocated with name '_RTC_WriteAlarm_alarm_value_1_266'
;sloc0                     Allocated with name '_RTC_WriteAlarm_sloc0_1_0'
;------------------------------------------------------------
	G$RTC_WriteAlarm$0$0 ==.
	C$SleepMode.c$154$1$264 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:154: void RTC_WriteAlarm (U32 alarm)
;	-----------------------------------------
;	 function RTC_WriteAlarm
;	-----------------------------------------
_RTC_WriteAlarm:
	C$SleepMode.c$158$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:158: alarm = alarm/60000.0 * SYSCLK;
	lcall	___ulong2fs
	mov	_RTC_WriteAlarm_sloc0_1_0,dpl
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 1),dph
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 2),b
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 3),a
	clr	a
	push	acc
	mov	a,#0x60
	push	acc
	mov	a,#0x6A
	push	acc
	mov	a,#0x47
	push	acc
	mov	dpl,_RTC_WriteAlarm_sloc0_1_0
	mov	dph,(_RTC_WriteAlarm_sloc0_1_0 + 1)
	mov	b,(_RTC_WriteAlarm_sloc0_1_0 + 2)
	mov	a,(_RTC_WriteAlarm_sloc0_1_0 + 3)
	lcall	___fsdiv
	mov	_RTC_WriteAlarm_sloc0_1_0,dpl
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 1),dph
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 2),b
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_RTC_WriteAlarm_sloc0_1_0
	push	(_RTC_WriteAlarm_sloc0_1_0 + 1)
	push	(_RTC_WriteAlarm_sloc0_1_0 + 2)
	push	(_RTC_WriteAlarm_sloc0_1_0 + 3)
	mov	dptr,#0xBC20
	mov	b,#0x3E
	mov	a,#0x4A
	lcall	___fsmul
	mov	_RTC_WriteAlarm_sloc0_1_0,dpl
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 1),dph
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 2),b
	mov	(_RTC_WriteAlarm_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_RTC_WriteAlarm_sloc0_1_0
	mov	dph,(_RTC_WriteAlarm_sloc0_1_0 + 1)
	mov	b,(_RTC_WriteAlarm_sloc0_1_0 + 2)
	mov	a,(_RTC_WriteAlarm_sloc0_1_0 + 3)
	lcall	___fs2ulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$SleepMode.c$160$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:160: alarm_value.U32 = alarm;   
	mov	(_RTC_WriteAlarm_alarm_value_1_266 + 0),r4
	mov	(_RTC_WriteAlarm_alarm_value_1_266 + 1),r5
	mov	(_RTC_WriteAlarm_alarm_value_1_266 + 2),r6
	mov	(_RTC_WriteAlarm_alarm_value_1_266 + 3),r7
	C$SleepMode.c$163$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:163: RTC0ADR = (0x10 | RTC0CN);
	mov	_RTC0ADR,#0x14
	C$SleepMode.c$164$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:164: RTC0DAT = (RTC0CN_Local & ~RTC0AEN);       
	mov	r7,_RTC0CN_Local
	mov	a,#0xF7
	anl	a,r7
	mov	_RTC0DAT,a
	C$SleepMode.c$165$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:165: NOP();
	NOP 
	C$SleepMode.c$168$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:168: RTC0ADR = (0x10 | ALARM0);       
	mov	_RTC0ADR,#0x18
	C$SleepMode.c$169$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:169: RTC0DAT = alarm_value.U8[b0];    // write data
	mov	_RTC0DAT,_RTC_WriteAlarm_alarm_value_1_266
	C$SleepMode.c$170$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:170: NOP();
	NOP 
	C$SleepMode.c$171$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:171: RTC0DAT = alarm_value.U8[b1];    // write data
	mov	_RTC0DAT,(_RTC_WriteAlarm_alarm_value_1_266 + 0x0001)
	C$SleepMode.c$172$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:172: NOP();
	NOP 
	C$SleepMode.c$173$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:173: RTC0DAT = alarm_value.U8[b2];    // write data
	mov	_RTC0DAT,(_RTC_WriteAlarm_alarm_value_1_266 + 0x0002)
	C$SleepMode.c$174$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:174: NOP(); 
	NOP 
	C$SleepMode.c$175$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:175: RTC0DAT = alarm_value.U8[b3];    // write data
	mov	_RTC0DAT,(_RTC_WriteAlarm_alarm_value_1_266 + 0x0003)
	C$SleepMode.c$176$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:176: NOP(); 
	NOP 
	C$SleepMode.c$179$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:179: RTC0ADR = (0x10 | RTC0CN);
	mov	_RTC0ADR,#0x14
	C$SleepMode.c$180$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:180: RTC0DAT = RTC0CN_Local;  
	mov	_RTC0DAT,_RTC0CN_Local
	C$SleepMode.c$181$1$266 ==.
	XG$RTC_WriteAlarm$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RTC0CN_SetBits'
;------------------------------------------------------------
;bits                      Allocated to registers r7 
;------------------------------------------------------------
	G$RTC0CN_SetBits$0$0 ==.
	C$SleepMode.c$183$1$266 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:183: void RTC0CN_SetBits(U8 bits)
;	-----------------------------------------
;	 function RTC0CN_SetBits
;	-----------------------------------------
_RTC0CN_SetBits:
	mov	r7,dpl
	C$SleepMode.c$185$1$268 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:185: RTC0CN_Local |= (bits & ~0x03);
	mov	ar6,r7
	anl	ar6,#0xFC
	mov	r5,_RTC0CN_Local
	mov	a,r6
	orl	a,r5
	mov	_RTC0CN_Local,a
	C$SleepMode.c$186$1$268 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:186: RTC_Write( RTC0CN, RTC0CN_Local | bits);
	mov	a,r7
	orl	a,_RTC0CN_Local
	mov	_RTC_Write_PARM_2,a
	mov	dpl,#0x04
	lcall	_RTC_Write
	C$SleepMode.c$187$1$268 ==.
	XG$RTC0CN_SetBits$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RTC_Init'
;------------------------------------------------------------
;i                         Allocated to registers r5 r6 
;CLKSEL_SAVE               Allocated to registers r7 
;RTC0PIN_READ              Allocated to registers 
;------------------------------------------------------------
	G$RTC_Init$0$0 ==.
	C$SleepMode.c$189$1$268 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:189: void RTC_Init (void)
;	-----------------------------------------
;	 function RTC_Init
;	-----------------------------------------
_RTC_Init:
	C$SleepMode.c$193$1$268 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:193: unsigned char CLKSEL_SAVE = CLKSEL;
	mov	r7,_CLKSEL
	C$SleepMode.c$197$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:197: if(RTC0KEY == 0x00)
	mov	a,_RTC0KEY
	jnz	00102$
	C$SleepMode.c$199$2$271 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:199: RTC0KEY = 0xA5;                  // Unlock the smaRTClock interface
	mov	_RTC0KEY,#0xA5
	C$SleepMode.c$200$2$271 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:200: RTC0KEY = 0xF1;
	mov	_RTC0KEY,#0xF1
00102$:
	C$SleepMode.c$221$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:221: RTC0PIN_READ = RTC_Read (RTC0PIN);
	mov	dpl,#0x07
	push	ar7
	lcall	_RTC_Read
	mov	a,dpl
	C$SleepMode.c$222$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:222: RTC_Write (RTC0PIN, RTC0PIN_READ | 0x80);   
	orl	a,#0x80
	mov	_RTC_Write_PARM_2,a
	mov	dpl,#0x07
	lcall	_RTC_Write
	C$SleepMode.c$226$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:226: RTC_Write (RTC0XCN, 0x08);   
	mov	_RTC_Write_PARM_2,#0x08
	mov	dpl,#0x05
	lcall	_RTC_Write
	C$SleepMode.c$229$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:229: RTC_Write (RTC0XCF, (0x00 | LOADCAP_VALUE));   
	mov	_RTC_Write_PARM_2,#0x03
	mov	dpl,#0x06
	lcall	_RTC_Write
	C$SleepMode.c$235$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:235: RTC_Write (RTC0CN, 0x80);           // Enable smaRTClock oscillator
	mov	_RTC_Write_PARM_2,#0x80
	mov	dpl,#0x04
	lcall	_RTC_Write
	C$SleepMode.c$236$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:236: CLKSEL    =  0x74;                  // Switch to 156 kHz low power
	mov	_CLKSEL,#0x74
	C$SleepMode.c$258$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:258: RTC_Write (RTC0CN, 0xC0);           // Enable missing smaRTClock detector
	mov	_RTC_Write_PARM_2,#0xC0
	mov	dpl,#0x04
	lcall	_RTC_Write
	pop	ar7
	C$SleepMode.c$262$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:262: for (i=0x340; i!=0; i--);
	mov	r5,#0x40
	mov	r6,#0x03
00106$:
	cjne	r5,#0x00,00124$
	cjne	r6,#0x00,00124$
	sjmp	00109$
00124$:
	dec	r5
	cjne	r5,#0xFF,00125$
	dec	r6
00125$:
	sjmp	00106$
00109$:
	C$SleepMode.c$264$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:264: RTC_Write (RTC0CN, 0xC0);           // Clear the clock fail flag (precautionary).
	mov	_RTC_Write_PARM_2,#0xC0
	mov	dpl,#0x04
	push	ar7
	lcall	_RTC_Write
	pop	ar7
	C$SleepMode.c$266$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:266: PMU0CF = 0x20;                      // Clear PMU wake-up source flags
	mov	_PMU0CF,#0x20
	C$SleepMode.c$268$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:268: CLKSEL = CLKSEL_SAVE;               // Restore system clock
	mov	_CLKSEL,r7
	C$SleepMode.c$269$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:269: while(!(CLKSEL & 0x80));            // Poll CLKRDY
00103$:
	mov	a,_CLKSEL
	jnb	acc.7,00103$
	C$SleepMode.c$271$1$270 ==.
;	C:\Users\Admin\Desktop\INTERNSHIP\MotionSenseNodes_V3\MotionSenseNodes_V3\SleepMode.c:271: RTC0CN_Local = 0xC0;                // Initialize Local Copy of RTC0CN
	mov	_RTC0CN_Local,#0xC0
	C$SleepMode.c$272$1$270 ==.
	XG$RTC_Init$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
