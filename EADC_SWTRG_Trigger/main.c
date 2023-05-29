/**************************************************************************//**
 * @Author   Niagara Automations
 * @file     main.c
 * @version  V3.00
 * @Product  ORO PUMP     
 * @brief
 * @copyright (C) 2023 Nuvoton Technology Corp. All rights reserved.
 ******************************************************************************/
#include <stdio.h>
#include <string.h>
#include "NuMicro.h"
#include "math.h"
#include "lcd.h"
#include "Rtc_I2c.h"
/*---------------------------------------------------------------------------------------------------------*/
/* USER INCLUEDS                                                                                           */
/*---------------------------------------------------------------------------------------------------------*/
#include "Platform.h"

/*System clock macro*/
#define PLL_CLOCK       192000000
#define TICKS_PER_MS     12000    //assuming 12MHZ system clock
/*Debug Related*/
#define DEBUG    0
/*ADC macro*/
#define SAMPLE_RATE    7000

/*flashmemory related*/ 
#define DATA_FLASH_TEST_BASE        0x3F000      /* Data Flash test start address            */
#define DATA_FLASH_TEST_END         0x3FFFF      /* Data Flash test end address              */
 
/*---------------------------------------------------------------------------------------------------------*/
/* Define global variables and constants                                                                   */
/*---------------------------------------------------------------------------------------------------------*/
/*Functon Prototype */
void ADC_Init(void);
void ADC_Process(void);
uint8_t uart_receive_function(void);

/*UART Related*/ 
uint8_t uart_rcv_flag=0,uart_rcv_flag1=0;
volatile char ModemString[200]={0};
volatile int ModemDataCounter = 0;
char c;
uint8_t exitdelay=0;
uint8_t c_crc;

/*ADC Related */
struct CurrentCond nCurretnCond;
/*Motor Related extern struct*/
struct TimerSettings nTimerSettings;
struct MSettings nMSettings;



volatile uint32_t g_u32AdcIntFlag;
volatile int16_t RV_Adc_Data =0,YV_Adc_Data=0,BV_Adc_Data=0,RC_Adc_Data=0,YC_Adc_Data=0,BC_Adc_Data=0; 
static uint16_t Adc_Result_PB06=0,Adc_Result_PB05=0,Adc_Result_PB04=0,Adc_Result_PB03=0,Adc_Result_PB02=0,Adc_Result_PB01=0; 
static uint32_t Avg_adcresult_PB06=0,Avg_adcresult_PB05=0,Avg_adcresult_PB04=0,Avg_adcresult_PB03=0,Avg_adcresult_PB02=0,Avg_adcresult_PB01=0;
static uint16_t  Adc_Flag_Count_PB06=0,Adc_Flag_Count_PB05=0,Adc_Flag_Count_PB04=0,Adc_Flag_Count_PB03=0,Adc_Flag_Count_PB02=0,Adc_Flag_Count_PB01=0;


uint8_t DebounceDelaycounter=0,dtmfDebounceDelaycounter=0,DebounceDelay=0,dtmfDebounceDelay=0,Phase23selectionDelay=0,AutoMobileKeyDelayOFF=0,ActpowerOnDelayPrvSec=0;
uint16_t TargetTimerCnt=0;
 
 
/*Timer Related*/
 volatile uint8_t Timer1_Flag=0,Timer0_Flag=0;
 

 
 
void SYS_Init(void)
{
	  
	  #if 1	
    /* Set XT1_OUT(PF.2) and XT1_IN(PF.3) to input mode */
    PF->MODE &= ~(GPIO_MODE_MODE2_Msk | GPIO_MODE_MODE3_Msk);

    /* Enable HXT clock (external XTAL 8MHz) */
    CLK_EnableXtalRC(CLK_PWRCTL_HXTEN_Msk);

    /* Wait for HXT clock ready */
    CLK_WaitClockReady(CLK_STATUS_HXTSTB_Msk);

    /* Set core clock as PLL_CLOCK from PLL */
    CLK_SetCoreClock(PLL_CLOCK);

    /* Set PCLK0 = PCLK1 = HCLK/2 */
    CLK->PCLKDIV = (CLK_PCLKDIV_APB0DIV_DIV2 | CLK_PCLKDIV_APB1DIV_DIV2);		  
	
    /* Enable UART module 0 clock */
    CLK_EnableModuleClock(UART0_MODULE);
	
	  /* Enable UART module 1 clock */
    CLK_EnableModuleClock(UART1_MODULE);
	
	    /* Enable UART module 2 clock */
    CLK_EnableModuleClock(UART2_MODULE);
		
	  /* Enable I2C0 clock */
    CLK_EnableModuleClock(I2C0_MODULE);

    /* Select UART module clock source as HXT and UART module clock divider as 1 */
    CLK_SetModuleClock(UART0_MODULE, CLK_CLKSEL1_UART0SEL_HXT, CLK_CLKDIV0_UART0(1));

    /* Enable EADC module clock */
    CLK_EnableModuleClock(EADC_MODULE);		
		

    /* EADC clock source is 96MHz, set divider to 8, ADC clock is 96/8 MHz */
    CLK_SetModuleClock(EADC_MODULE, 0, CLK_CLKDIV0_EADC(8));
    
		/* Enable TIMER module clock */
    CLK_EnableModuleClock(TMR0_MODULE);
    CLK_EnableModuleClock(TMR1_MODULE);
    CLK_EnableModuleClock(TMR2_MODULE);
    CLK_EnableModuleClock(TMR3_MODULE);
    CLK_SetModuleClock(TMR0_MODULE, CLK_CLKSEL1_TMR0SEL_HXT, 0);
    CLK_SetModuleClock(TMR1_MODULE, CLK_CLKSEL1_TMR1SEL_PCLK0, 0);
    CLK_SetModuleClock(TMR2_MODULE, CLK_CLKSEL1_TMR2SEL_HIRC, 0);
    CLK_SetModuleClock(TMR3_MODULE, CLK_CLKSEL1_TMR3SEL_HXT, 0);

    /*UART Pin Configuration Set GPB multi-function pins for UART0 RXD and TXD */
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB12MFP_Msk | SYS_GPB_MFPH_PB13MFP_Msk);
    SYS->GPB_MFPH |= (SYS_GPB_MFPH_PB12MFP_UART0_RXD | SYS_GPB_MFPH_PB13MFP_UART0_TXD);
		
		/* Set PA multi-function pins for UART1 TXD, RXD, CTS and RTS */
    SYS->GPA_MFPL &= ~(SYS_GPA_MFPL_PA0MFP_Msk | SYS_GPA_MFPL_PA1MFP_Msk |
                       SYS_GPA_MFPL_PA2MFP_Msk | SYS_GPA_MFPL_PA3MFP_Msk);
    SYS->GPA_MFPL |= (0x8 << SYS_GPA_MFPL_PA0MFP_Pos) | (0x8 << SYS_GPA_MFPL_PA1MFP_Pos) |
                     (0x8 << SYS_GPA_MFPL_PA2MFP_Pos) | (0x8 << SYS_GPA_MFPL_PA3MFP_Pos);
										 
		/* Set PC multi-function pins for UART2 TXD, RXD*/
    SYS->GPC_MFPL &= ~(SYS_GPC_MFPL_PC4MFP_Msk | SYS_GPC_MFPL_PC5MFP_Msk);
    SYS->GPC_MFPL |=  (0x8 << SYS_GPC_MFPL_PC4MFP_Pos) | (0x8 << SYS_GPC_MFPL_PC5MFP_Pos);		
                     						 
		
    /*ADC Pin configuration Set PB.0 ~ PB.6 to input mode */
    PB->MODE &= ~(GPIO_MODE_MODE0_Msk | GPIO_MODE_MODE1_Msk | GPIO_MODE_MODE2_Msk | GPIO_MODE_MODE3_Msk | 
		              GPIO_MODE_MODE4_Msk | GPIO_MODE_MODE5_Msk | GPIO_MODE_MODE6_Msk );
									
    /* Configure the GPB0 - GPB6 ADC analog input pins.  */
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB0MFP_Msk | SYS_GPB_MFPL_PB1MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk | SYS_GPB_MFPL_PB3MFP_Msk | 
		                    SYS_GPB_MFPL_PB4MFP_Msk | SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB6MFP_Msk);
    SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB0MFP_EADC0_CH0 | SYS_GPB_MFPL_PB1MFP_EADC0_CH1 | SYS_GPB_MFPL_PB2MFP_EADC0_CH2 | 
											SYS_GPB_MFPL_PB3MFP_EADC0_CH3 | SYS_GPB_MFPL_PB4MFP_EADC0_CH4 | SYS_GPB_MFPL_PB5MFP_EADC0_CH5 | SYS_GPB_MFPL_PB6MFP_EADC0_CH6);
  
    /* Set I2C0 multi-function pins */
   SYS->GPA_MFPL = (SYS->GPA_MFPL & ~(SYS_GPA_MFPL_PA4MFP_Msk | SYS_GPA_MFPL_PA5MFP_Msk)) |
                   (SYS_GPA_MFPL_PA4MFP_I2C0_SDA | SYS_GPA_MFPL_PA5MFP_I2C0_SCL); 

    /* I2C pin enable schmitt trigger */
   PA->SMTEN |= GPIO_SMTEN_SMTEN4_Msk | GPIO_SMTEN_SMTEN5_Msk;
 
 
		
		
    /* Disable the GPB0 - GPB3 digital input path to avoid the leakage current. */
    GPIO_DISABLE_DIGITAL_PATH(PB, BIT6|BIT5|BIT4|BIT3|BIT2|BIT1|BIT0);
		
		#endif
} 
void LCD_pinConfig(void)	
{
    // Configure the LCD control lines (RS, EN) as GPIO outputs
    GPIO_SetMode(PB, BIT14, GPIO_MODE_OUTPUT);
    GPIO_SetMode(PB, BIT15, GPIO_MODE_OUTPUT);

    // Configure the LCD data lines (D4-D7) as GPIO outputs
    GPIO_SetMode(PB, BIT11, GPIO_MODE_OUTPUT);
    GPIO_SetMode(PB, BIT10, GPIO_MODE_OUTPUT);
    GPIO_SetMode(PB, BIT9, GPIO_MODE_OUTPUT);
    GPIO_SetMode(PB, BIT8, GPIO_MODE_OUTPUT);
}
void Config_GPIOs(void)
{
	  /*Configure PA.0=R1,PA.1=R2,PA.2=R3,PA.3=R4,PA.4=R5 pin as Output mode (R-Relay) */
    GPIO_SetMode(PA,  BIT4|BIT3|BIT2|BIT1|BIT0, GPIO_MODE_OUTPUT);
	  /*Configure PA5,PA6,PA7 and PA8 pins as input for Lowtank sens and Uptank sens*/
		GPIO_SetMode(PC,BIT7|BIT6|BIT5|BIT4,GPIO_MODE_INPUT);	  

	   /*Configure PC2,PC3,PF4 and PF5 pins as input for KEYPAD*/
		GPIO_SetMode(PC,BIT3|BIT2,GPIO_MODE_INPUT);
    GPIO_SetMode(PF,BIT5|BIT4,GPIO_MODE_INPUT);	

	   /*Realy Configuration*/
	   GPIO_SetMode(PA, BIT11|BIT10|BIT9|BIT8, GPIO_MODE_OUTPUT);
	   GPIO_SetMode(PF, BIT6, GPIO_MODE_OUTPUT);	

	
			/*Diable IO interrupt*/
			GPIO_DisableInt(PA,BIT11|BIT10|BIT9|BIT8|BIT4|BIT3|BIT2|BIT1|BIT0);	
			GPIO_DisableInt(PC,BIT7|BIT6|BIT5|BIT4|BIT3|BIT2);	     
			GPIO_DisableInt(PF, BIT6|BIT5|BIT4);		
	
	    /*Relay reset*/
			RELAY1=0;
			RELAY2=0;
			RELAY3=0;
			RELAY4=0;
			RELAY5=0;
	
}
float CalculatePhToPh(float Val1,float Val2)
{
		double Tpc,Tp2c;

		Tpc = Val1*Val1;
		Tp2c = Val2*Val2;

		Tpc = (Tpc+Tp2c);
		Tp2c = Val1*Val2;

		Tpc = Tpc+Tp2c;


		Tp2c = sqrt( Tpc );


		return Tp2c;
}
void CheckVoltageCurrent(void)
{
						float Rvolt,Yvolt,Bvolt;
						unsigned char phase2Condition;
	
						/*Phase Voltages*/
						Rvolt=RV_Adc_Data*0.346666;
						Yvolt=YV_Adc_Data*0.346666;
						Bvolt=BV_Adc_Data*0.346666; 	          
	    
	          nCurretnCond.RVoltage =Rvolt*nTimerSettings.CalRVoltage;
					  nCurretnCond.YVoltage =Yvolt*nTimerSettings.CalYVoltage;
						nCurretnCond.BVoltage =Bvolt*nTimerSettings.CalBVoltage;
            
	          /*Line Voltages*/
	          nCurretnCond.RYVoltage = CalculatePhToPh(nCurretnCond.RVoltage,nCurretnCond.YVoltage);
	          nCurretnCond.YBVoltage = CalculatePhToPh(nCurretnCond.YVoltage,nCurretnCond.BVoltage);
	          nCurretnCond.BRVoltage = CalculatePhToPh(nCurretnCond.BVoltage,nCurretnCond.RVoltage); 
	          
	          if(nCurretnCond.YVoltage<110)
							phase2Condition = 1;
						else
							phase2Condition = 0;
						
						if(phase2Condition == 0)
						{
							nCurretnCond.RYVoltage = nCurretnCond.RYVoltage*nTimerSettings.RPhaseToPhaseFactor;
							nCurretnCond.YBVoltage = nCurretnCond.YBVoltage*nTimerSettings.YPhaseToPhaseFactor;
							nCurretnCond.BRVoltage = nCurretnCond.BRVoltage*nTimerSettings.BPhaseToPhaseFactor;
						}
						else					 
							nCurretnCond.BRVoltage = nCurretnCond.BRVoltage*nTimerSettings.R2PhaseToPhaseFactor;
							
					
						
						/*Line Currents*/
						nCurretnCond.Rcurrent=RC_Adc_Data*0.1563*0.33;
						nCurretnCond.Ycurrent=YC_Adc_Data*0.1563*0.33;
						nCurretnCond.Bcurrent=BC_Adc_Data*0.1563*0.33;
						
	          /*minimum current should be more than 3 Amps*/
						if(nCurretnCond.Rcurrent<3)
							nCurretnCond.Rcurrent = 0;
						if(nCurretnCond.Ycurrent<3)
							nCurretnCond.Ycurrent = 0;
						if(nCurretnCond.Bcurrent<3)
							nCurretnCond.Bcurrent = 0;
						
						#if DEBUG
						Debug("nCurretnCond.RVoltage:%.3f\nnCurretnCond.YVoltage:%.3f\nnCurretnCond.BVoltage:%.3f",nCurretnCond.RVoltage,nCurretnCond.YVoltage,nCurretnCond.BVoltage);
	          #endif
}
void ADC_Init(void)
{
	   #if 1
            /* Set input mode as single-end and enable the A/D converter */
            EADC_Open(EADC, EADC_CTL_DIFFEN_SINGLE_END);

            /* Configure the sample modules  for analog input channels and software trigger source.*/
            EADC_ConfigSampleModule(EADC, 6, EADC_SOFTWARE_TRIGGER, 6);
						EADC_ConfigSampleModule(EADC, 5, EADC_SOFTWARE_TRIGGER, 5);
	          EADC_ConfigSampleModule(EADC, 4, EADC_SOFTWARE_TRIGGER, 4);
	          EADC_ConfigSampleModule(EADC, 3, EADC_SOFTWARE_TRIGGER, 3);
	          EADC_ConfigSampleModule(EADC, 2, EADC_SOFTWARE_TRIGGER, 2);
	          EADC_ConfigSampleModule(EADC, 1, EADC_SOFTWARE_TRIGGER, 1);

            /* Clear the A/D ADINT0 interrupt flag for safe */
            EADC_CLR_INT_FLAG(EADC, EADC_STATUS2_ADIF0_Msk);  
	          
            /* Enable the sample module 0 interrupt.  */
            EADC_ENABLE_INT(EADC, BIT0);//Enable sample module A/D ADINT0 interrupt.
            EADC_ENABLE_SAMPLE_MODULE_INT(EADC, 0, BIT6);//Enable sample module 0 interrupt.
            NVIC_EnableIRQ(EADC00_IRQn);
	   #endif
} 
void ADC_Process(void)
{
                         
            /* Reset the ADC interrupt indicator and trigger sample modules to start A/D conversion */
            g_u32AdcIntFlag = 0;
	
	          /*start the conversion*/
            EADC_START_CONV(EADC, BIT6);
	          EADC_START_CONV(EADC, BIT5);
            EADC_START_CONV(EADC, BIT4);
						EADC_START_CONV(EADC, BIT3);
						EADC_START_CONV(EADC, BIT2);
						EADC_START_CONV(EADC, BIT1);
	
            /* Wait ADC interrupt (g_u32AdcIntFlag will be set at IRQ_Handler function) */
            while(g_u32AdcIntFlag == 0); 
					   
            /* Get the conversion result of the sample module 6 */			
						Adc_Result_PB06 = EADC_GET_CONV_DATA(EADC, 5);                //reads pin PB06			 
						Avg_adcresult_PB06 +=Adc_Result_PB06;
						Adc_Flag_Count_PB06++;
						if(Adc_Flag_Count_PB06>=SAMPLE_RATE)
						{
							  RV_Adc_Data = (Avg_adcresult_PB06/(float)SAMPLE_RATE);
							  RV_Adc_Data -=2048;
							  if(RV_Adc_Data < 0) RV_Adc_Data *=-1;
							  Adc_Flag_Count_PB06=0;
		            Avg_adcresult_PB06=0;
						}
						
						 /* Get the conversion result of the sample module 5 */			
						Adc_Result_PB05 = EADC_GET_CONV_DATA(EADC, 4); 				        //reads pin PB05			
						Avg_adcresult_PB05 +=Adc_Result_PB05;
						Adc_Flag_Count_PB05++;
						if(Adc_Flag_Count_PB05>=SAMPLE_RATE)
						{
							  YV_Adc_Data = (Avg_adcresult_PB05/(float)SAMPLE_RATE);
							  YV_Adc_Data -=2048;
							  if(YV_Adc_Data < 0) YV_Adc_Data *=-1;
							  Adc_Flag_Count_PB05=0;
		            Avg_adcresult_PB05=0;
						}
						
						 /* Get the conversion result of the sample module 4 */			
						Adc_Result_PB04 = EADC_GET_CONV_DATA(EADC, 3);                //reads pin PB04			  					 
						Avg_adcresult_PB04 +=Adc_Result_PB04;
						Adc_Flag_Count_PB04++;
						if(Adc_Flag_Count_PB04>=SAMPLE_RATE)
						{
							  BV_Adc_Data = (Avg_adcresult_PB04/(float)SAMPLE_RATE);
							  BV_Adc_Data -=2048;
							  if(BV_Adc_Data < 0) BV_Adc_Data *=-1;
							  Adc_Flag_Count_PB04=0;
		            Avg_adcresult_PB04=0;
						}
						
						 /* Get the conversion result of the sample module 3 */			
						Adc_Result_PB03 = EADC_GET_CONV_DATA(EADC, 2);						 
						Avg_adcresult_PB03 +=Adc_Result_PB03;
						Adc_Flag_Count_PB03++;
						if(Adc_Flag_Count_PB03>=SAMPLE_RATE)
						{
							  RC_Adc_Data = (Avg_adcresult_PB03/(float)SAMPLE_RATE);
							  if(RC_Adc_Data < 0) RC_Adc_Data *=-1;
							  Adc_Flag_Count_PB03=0;
		            Avg_adcresult_PB03=0;
						}
						
						/* Get the conversion result of the sample module 2 */			
						Adc_Result_PB02 = EADC_GET_CONV_DATA(EADC, 1);						 
						Avg_adcresult_PB02 +=Adc_Result_PB02;
						Adc_Flag_Count_PB02++;
						if(Adc_Flag_Count_PB02>=SAMPLE_RATE)
						{
							  YC_Adc_Data = (Avg_adcresult_PB02/(float)SAMPLE_RATE);
							  if(YC_Adc_Data < 0) YC_Adc_Data *=-1; 
							  Adc_Flag_Count_PB02=0;
		            Avg_adcresult_PB02=0;
						}
						
						/* Get the conversion result of the sample module 1 */			
						Adc_Result_PB01 = EADC_GET_CONV_DATA(EADC, 0);						 
						Avg_adcresult_PB01 +=Adc_Result_PB01;
						Adc_Flag_Count_PB01++;
						if(Adc_Flag_Count_PB01>=SAMPLE_RATE)
						{
							  BC_Adc_Data = (Avg_adcresult_PB01/(float)SAMPLE_RATE);
							  if(BC_Adc_Data < 0) BC_Adc_Data *=-1;
							  Adc_Flag_Count_PB01=0;
		            Avg_adcresult_PB01=0; 
							  
						} 
            /*ADC Stop conversion*/ 
						EADC_STOP_CONV(EADC, BIT6);
	          EADC_STOP_CONV(EADC, BIT5);
            EADC_STOP_CONV(EADC, BIT4);
						EADC_STOP_CONV(EADC, BIT3);
						EADC_STOP_CONV(EADC, BIT2);
						EADC_STOP_CONV(EADC, BIT1);
						
						
    
} 
void EADC00_IRQHandler(void)
{
    g_u32AdcIntFlag = 1;
    EADC_CLR_INT_FLAG(EADC, EADC_STATUS2_ADIF0_Msk);      /* Clear the A/D ADINT0 interrupt flag */
}

void TMR0_IRQHandler(void)
{
    if(TIMER_GetIntFlag(TIMER0) == 1)
    {
        /* Clear Timer0 time-out interrupt flag */
        TIMER_ClearIntFlag(TIMER0);
        Timer0_Flag=SET;
        
    }
}


void TMR1_IRQHandler(void)
{
    if(TIMER_GetIntFlag(TIMER1) == 1)
    {
        /* Clear Timer1 time-out interrupt flag */
        TIMER_ClearIntFlag(TIMER1);
        Timer1_Flag=SET;
			  
        
    }
}
uint8_t uart_receive_function(void)
{
	//uint8_t u8InChar = 0xFF;
	uint32_t u32IntSts = UART0->INTSTS;

	if((u32IntSts & UART_INTSTS_RDAINT_Msk)) //|| (u32IntSts & UART_INTSTS_RXTOINT_Msk))
	{     
		/* Get all the input characters */
		while(UART_IS_RX_READY(UART0))
		{
			/* Get the character from UART Buffer */
			c = UART_READ(UART0);
			if(c == '$')       //'$'
				ModemDataCounter = 0;
			
			if(c == '$' && ModemDataCounter == 0)  //'$'
			{
					ModemString[ModemDataCounter]=c;
					ModemDataCounter++;
			}
			else if(ModemDataCounter != 0)
			{
				ModemString[ModemDataCounter]=c;
				ModemDataCounter++;
				ModemString[ModemDataCounter]=0;
				if(c == '\n' || c == '\r')
				{
					//if(UartReceiverFlag==1)
						//sprintf(ModemStringTemp,"%s",ModemString);
					uart_rcv_flag=1;
					return 1; 
				}
			}
			else
			{
				 if(exitdelay++>10)
					return 0;							
			}
		}
	}
	return 0;
}
/*---------------------------------------------------------------------------------------------------------*/
/* ISR to handle UART Channel 0 interrupt event                                                            */
/*---------------------------------------------------------------------------------------------------------*/
void UART0_IRQHandler(void)
{    
	  uart_receive_function();
}

uint8_t _trace_uart_receive_function(void)
{
	//uint8_t u8InChar = 0xFF;
	uint32_t u32IntSts = UART1->INTSTS;

	if((u32IntSts & UART_INTSTS_RDAINT_Msk)) //|| (u32IntSts & UART_INTSTS_RXTOINT_Msk))
	{     
		/* Get all the input characters */
		while(UART_IS_RX_READY(UART1))
		{
			/* Get the character from UART Buffer */
			c = UART_READ(UART1);
			if(c == '$')       //'$'
				ModemDataCounter = 0;
			
			if(c == '$' && ModemDataCounter == 0)  //'$'
			{
					ModemString[ModemDataCounter]=c;
					ModemDataCounter++;
			}
			else if(ModemDataCounter != 0)
			{
				ModemString[ModemDataCounter]=c;
				ModemDataCounter++;
				ModemString[ModemDataCounter]=0;
				if(c == '\n' || c == '\r')
				{
					//if(UartReceiverFlag==1)
						//sprintf(ModemStringTemp,"%s",ModemString);
					uart_rcv_flag1=1;
					return 1; 
				}
			}
			else
			{
				 if(exitdelay++>10)
					return 0;							
			}
		}
	}
	return 0;
}
/*---------------------------------------------------------------------------------------------------------*/
/* ISR to handle UART Channel 1 interrupt event                                                            */
/*---------------------------------------------------------------------------------------------------------*/
void UART1_IRQHandler(void)
{    
	  _trace_uart_receive_function();
}
/*---------------------------------------------------------------------------------------------------------*/
/* ISR to handle UART Channel 2 interrupt event                                                            */
/*---------------------------------------------------------------------------------------------------------*/
void UART2_IRQHandler(void)
{    
	  //_rs485_uart_receive_function();
}
void Timer_Init(void)
{
			/* 
	     Open Timer1 in periodic mode, enable interrupt and 1 interrupt tick per second
	     Prescaler value = (timer clock frequency / (target delay * (timer resolution - 1))) - 1	      
			*/
	
	   /*enable timer0 and set it to Periodic mode and  generate an interrupt every 1 sec*/
     TIMER_Open(TIMER0, TIMER_PERIODIC_MODE,1);       //(8- 125 ms)(5-200ms)(3-333 ms)(1-1000ms)
     TIMER_EnableInt(TIMER0);	 
	   /* Enable Timer0 NVIC */
     NVIC_EnableIRQ(TMR0_IRQn);	
	
	   /*enable timer1 and set it to periodic mode*/    
	    TIMER_Open(TIMER1, TIMER_PERIODIC_MODE, 1);
	   /*set the timer prescaler value to 8 */
	    TIMER_SET_PRESCALE_VALUE(TIMER1,7); //prescale-1
	   /* set the timer period to generate an interrupt every 300 ms */
	    TIMER_SET_CMP_VALUE(TIMER1,TICKS_PER_MS *300);    
	   /* Enable Timer1 NVIC */
	    NVIC_EnableIRQ(TMR1_IRQn);
		  NVIC_SetPriority(TMR1_IRQn,1);
      TIMER_EnableInt(TIMER1);		 
	   
}	
 
void UART0_Init()
{
	/* Configure UART0 and set UART0 baud rate */
    UART_Open(UART0, 115200);
	/*enable ISR */
	 UART_EnableInt(UART0, (UART_INTEN_RDAIEN_Msk));// | UART_INTEN_THREIEN_Msk | UART_INTEN_RXTOIEN_Msk));
	 NVIC_EnableIRQ(UART0_IRQn);
}
void UART1_Init()
{
    UART_Open(UART1, 115200);
	/*enable ISR */
	 UART_EnableInt(UART1, (UART_INTEN_RDAIEN_Msk));// | UART_INTEN_THREIEN_Msk | UART_INTEN_RXTOIEN_Msk));
	 NVIC_EnableIRQ(UART1_IRQn);
}  
void UART2_Init()
{
    UART_Open(UART2, 9600);
	/*enable ISR */
	 UART_EnableInt(UART2, (UART_INTEN_RDAIEN_Msk)); 
	 NVIC_EnableIRQ(UART2_IRQn);
}  
int32_t main(void)
{

    /* Unlock protected registers */
    SYS_UnlockReg();

    /* Init System, IP clock and multi-function I/O */
    SYS_Init();

    /* Lock protected registers */
    SYS_LockReg();

    /* Init UART0*/
    UART0_Init();
	
  	/* Init UART1*/
    UART1_Init();
	
	  /* Init UART1*/
    UART2_Init();
	
	  /*Init ADC*/
		ADC_Init();
	
	  /*Init Timers*/
	  Timer_Init();
	
	  /*GPIO Init*/
	  Config_GPIOs();   
		/**/
		#if _RTC
		/*I2C init*/
		I2C0_Init();
		
		RTC_PowerON();
		#endif
		
		/*clearing all the buffers*/
		buffer_memsets();
		
	  /*LCD config & init*/
		LCD_pinConfig();
		lcd_init();
    lcd_clear();
     
	  /* Start Timer0 ~ Timer3 counting */
    TIMER_Start(TIMER0);
    TIMER_Start(TIMER1);
		
    Debug("\nSystem clock rate: %d Hz", SystemCoreClock);  
		
		sprintf((char *)lcd_row[0],"* ORO  *");
		sprintf((char *)lcd_row[1],"* PUMP *");
		print_lcd(lcd_row);
		CLK_SysTickLongDelay(7000000);
		sprintf((char *)lcd_row[0]," %s  ",Version);
		sprintf((char *)lcd_row[1],"%s ",Build);
		print_lcd(lcd_row);
		CLK_SysTickLongDelay(7000000); 
		Page=0;  					//display page reset
		
		while(0u)
		{
			//sprintf((char *)lcd_row[0],"MOTOR ON ");
		  //sprintf((char *)lcd_row[1],"        ");
			//print_lcd(lcd_row);
			//strcpy(buff,"\n\rHello Wolrd!..");
			
			printf("\n\rthis is the test string we are printing:");
			
			CLK_SysTickLongDelay(7000000);
//			sprintf((char *)lcd_row[0],"MOTOROFF");
//			sprintf((char *)lcd_row[1],"    II  ");
//			print_lcd(lcd_row);
//			CLK_SysTickLongDelay(7000000);
//      sprintf((char *)lcd_row[0],"MOTOR ON");
//			sprintf((char *)lcd_row[1],"   III  ");
//			print_lcd(lcd_row);
//			CLK_SysTickLongDelay(7000000);
//      sprintf((char *)lcd_row[0],"R 230");
//			sprintf((char *)lcd_row[1]," M OFF ");
//			print_lcd(lcd_row);
//			CLK_SysTickLongDelay(7000000);
//			sprintf((char *)lcd_row[1],"Y 232");
//			sprintf((char *)lcd_row[1]," M OFF ");
//			print_lcd(lcd_row);
//			CLK_SysTickLongDelay(7000000);
//      sprintf((char *)lcd_row[0],"B 231");
//			sprintf((char *)lcd_row[1]," M OFF ");
//			print_lcd(lcd_row);
//			CLK_SysTickLongDelay(7000000); 			
		}	
    while(1)
		{
					/*Read voltage and current*/
					//ADC_Process();
			
					/*Calculate Phase voltage ,line voltage and current with calibration values */
					//CheckVoltageCurrent();  
			
				if(SET == Timer1_Flag)					
				{ 
					#if 1
					   #if _RTC
					   ReadDateTime();                            /*Reading Date and Time*/
					   #endif
					   printf("\n\r300 ms timer....");
					   ModemIsReady=1;
						 if(ModemIsReady == 1 && Enter ==0)         /*ModemIsReady will set from module in UART data*/
						 {							 
								ReadSettingsFile();
								ReadTimerSettings();								 
								Enter=1;					 
								 
						 }
						 if(ModemIsReady == 1 && Enter<=78)
							{
																																				
									if(Enter==1)
									{								 										
										if(power_on_flag_count==1)
										{
													 ReadSettingsFile();       /*Reads MakeRealyOn Flag*/
													 if(MakeRealyOn == 1)
													 {
														OverAllStarterTrip = 0;
														nMoTr.ActMaxRunTimer = 0;														
														if(nTimerSettings.RTCOnOf==0)
														{
															StartByMobile = 1;
															MakeRealyOn = 1;
															nSTATE_STATUS_SMS = STATUS_MOTOR_ON_SWITCH;
															nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_SWITCH_SMS;
														}
														else
														{
															  StartByMobile = 0;
																MakeRealyOn = 0;
														}
														OnFromMobile = 0;
														OffMotorByPhone = 0;
														MotorStarterTripCount = 0;
														ActMotorStarterTripTimer =0;
														nTimerSettings.Drrestartpoweronof=0;
														sprintf(buffer,"MANUAL");
														strcpy(WhoMadeRelayOn,buffer);																 
													}
													else
													{
														MotorStarterTripCount = 0;
														OverAllStarterTrip = 0;
														ActMotorStarterTripTimer =0 ;
														nMoTr.ActMaxRunTimer = 0;
														nSTATE_STATUS_SMS =STATUS_MOTOR_ON_SWITCH_TRIP_SMS;
														SendSmsToAll = 1;
														/*down below type casted to enumeration type to avaoid warning*/
														nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_MOTOR_ON_SWITCH_TRIP_SMS;   
														nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
														StartByMobile = 0;
														MakeRealyOn = 0;
														nCYCTimer = NO_TCOND;
														OffMotorByPhone = 0;
														 
														if(nMSettings.SumpOnOff == 1)
														PrvLoMotorStatus=0;
														PrvUpMotorStatus=0;
														// PrvOnOff = 0;
														PreviousTrip = NO_TRIP_FLAG;
														nTimerSettings.Driprestartpoweronof=0;
														NoAcceptSMS=0;
														sprintf(buffer,"MANUAL");
														strcpy(WhoMadeRelayOn,buffer);
														Debug("Will make Off");
														nTimerSettings.Driprestartpoweronof=0;
														//WriteonofFile();
													}
										}
										power_on_flag_count=2;
									}
									else if(Enter == 5)
									{
										if(nMSettings.ModeSelect == 0)    //LoRa
										{
											ReadSettingsFile();
											nMSettings.responseOnOf= 0;
											WriteSettingsFile();
										}
										else if(nMSettings.ModeSelect == 1)   //GSM
										{
											ReadSettingsFile();
											nMSettings.responseOnOf= 1;
											WriteSettingsFile();
										}
									}
									Enter++;
									Debug("The Value of Enter is:{%d}\n",Enter);
															
							} 
              #if 0
							if(DebounceDelay==1)
							{
								if(DebounceDelaycounter++>3)
								{
									DebounceDelaycounter=0;
									DebounceDelay=0;
								}
							}
							if(dtmfDebounceDelay==1)
							{
								if(dtmfDebounceDelaycounter++>20)
								{
									dtmfDebounceDelaycounter=0;
									dtmfDebounceDelay=0;
								}
							}							
							if(ChangeSoundStatus++>=10)
							{
								NowOff = 0;
								NowStarted = 0;
								ChangeSoundStatus = 0;
							}
							#endif
							#if 0
							if((nSTATE_MOTOR!=STATE_MOTOR_POWERONDELAY) && (nSTATE_MOTOR!=STATE_MOTOR_STARDELTADELAY))
							{
								VolCurGetTimer++;
								if(PowerCurrentCondition == 0 && VolCurGetTimer>=5)
								{
									VolCurGetTimer = 0;
									CheckVoltageCurrent();
								}								
								DisplayRountine();
								/*check keypress*/
							  checkkeypress();
							}
							#endif
							
							#if 0
							if(nMSettings.Ph2Ph3SelectOnOf == 1)
							{
									/*check the phase selection key*/
									Ph2Ph3Selection = CheckPH2PH3Selection();

									if(Ph2Ph3Selection != PrvPh2Ph3Selection)
									{

										if(Phase23selectionDelay++>=10)
										{
											Phase23selectionDelay =11;
											PrvPh2Ph3Selection = Ph2Ph3Selection;

											if(Ph2Ph3Selection == 1)
											{								 
												nTimerSettings.AutoStIIOnOff = 1; 
												STATE_SENDSMS=STATE_AUTOSTII_SMS;
												SendSmsToAll = 1;								 
											}
											else
											{							 
												nTimerSettings.AutoStIIOnOff = 0;								 
												STATE_SENDSMS=STATE_AUTOSTII_SMS;
												SendSmsToAll = 1;								 
											}
										}

									}
									else
										Phase23selectionDelay = 0;
							}
							#endif
							#if 0
							/*checking automobile key*/
							if(nMSettings.AutoMobileKeyOnOf == 1)
							{
									AutoMobileKey = CheckAutoMobile();
									if((AutoMobileKey != PrvAutoMobileKey) && Enter>70)
									{
										if(AutoMobileKeyDelayOFF++>=10)
										{
											AutoMobileKeyDelayOFF = 11;							 
											if(AutoMobileKey == 1)
											{
												if(MakeRealyOn == 0)
												{
													OverAllStarterTrip = 0;
													nMoTr.ActMaxRunTimer = 0;
													nSTATE_STATUS_SMS = STATUS_MOTOR_ON_SWITCH;
													nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_SWITCH_SMS;
													StartByMobile = 1;
													MakeRealyOn = 1;
													OnFromMobile = 0;
													OffMotorByPhone = 0;
													MotorStarterTripCount = 0;
													ActMotorStarterTripTimer =0;
													nTimerSettings.Drrestartpoweronof=0;
													sprintf(buffer,"MANUAL");
													strcpy(WhoMadeRelayOn,buffer);
													PrvAutoMobileKey = AutoMobileKey;
													//WriteonofFile();
													//ReadonofFile();
													Debug("Will make On");

												}


											}
											else
											{
												OnByTarget=0;
												MotorStarterTripCount = 0;
												OverAllStarterTrip = 0;
												ActMotorStarterTripTimer =0 ;
												nMoTr.ActMaxRunTimer = 0;
												nSTATE_STATUS_SMS =STATUS_MOTOR_ON_SWITCH_TRIP_SMS;
												SendSmsToAll = 1;
												nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_MOTOR_ON_SWITCH_TRIP_SMS;
												nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
												StartByMobile = 0;
												MakeRealyOn = 0;
												livedataflagcount1=0;livedataflag1=1;
												nCYCTimer = NO_TCOND;
												OffMotorByPhone = 1;										 
												if(nMSettings.SumpOnOff == 1)
												PrvLoMotorStatus=0;
												
												PrvUpMotorStatus=0;
												RecheckCounterUT=0;
												// PrvOnOff = 0;
												PreviousTrip = NO_TRIP_FLAG;										 
												NoAcceptSMS=0;
												sprintf(buffer,"MANUAL");
												strcpy(WhoMadeRelayOn,buffer);
												Debug("Will make Off");								
												PrvAutoMobileKey = AutoMobileKey;
												//WriteonofFile();
												 
											}
											
											 PrvAutoMobileKey = AutoMobileKey;
										}
									}
									else
										AutoMobileKeyDelayOFF = 0;
								}
						 #endif
							
						  #if 0 
						 /*check  phase condition when power is available*/
						 if(datetime.tm_sec != ActpowerOnDelayPrvSec && PowerCurrentCondition == 0)
						 {
									 checkpower=Check2Phase(); 
									 
									 nMoTr.ActonpowerRunTimer++;
									 if(checkpower == 2)
									 nMoTr.Act2powerRunTimer++;
									 else
									 nMoTr.Act3powerRunTimer++;
									 ActpowerOnDelayPrvSec = datetime.tm_sec;
						 }
						 #endif
						 
							#if 0
							 /*checks the RTC condition if set runs the RTC program,if not runs normal*/
							 if((CheckRTC() == 1) && (Enter >70))
							 {									
										MotorStarterTripCount = 0;
										OverAllStarterTrip = 0;
										ActMotorStarterTripTimer =0;
									  //if(nMSettings.rtcautorstonof==1)
										MakeRealyOn = 1;   
										StartByMobile = 0;
										RunMotor(MakeRealyOn,PowerCurrentCondition);
							 }
							 else
							 {								
								if(StartByMobile == 1)
								{
									MakeRealyOn = 1;
									RunMotor(MakeRealyOn,PowerCurrentCondition);
								}
								else
								{
									//OffMotorByPhone = 0;
									//if(nMSettings.rtcautorstonof==1)
									MakeRealyOn = 0;   
									RunMotor(MakeRealyOn,PowerCurrentCondition);
								}
							}
							#endif
							
							#if 0
							/*Motor On/Off through Target Device*/
							if(nMSettings.TargetOnOff == 1 && TargetNumberFound == 1 && OnByTarget == 1)
							{
									TargetTimerCnt++;						 
									if(TargetTimerCnt >=500)								//1000
									{
										OnByTarget = 0;
										MakeRealyOn = 0;
										nCYCTimer = NO_TCOND;
										StartByMobile = 0;
										OffMotorByPhone = 0;
										nSTATE_STATUS_SMS =STATUS_MOTOR_OFF_TARGET;
										SendSmsToAll = 1;
										nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
										nSTATE_STATUS_SMS =(STATE_STATUS_SMS)STATE_MOTOR_OFF_TARGET;
									}
							}
							else
								TargetTimerCnt = 0;
								RunMotor(MakeRealyOn,PowerCurrentCondition);
                #endif
							#if 0
							/*calculates the remaining dryrun restart time,if already set*/
              DrRestartTimer();
							/*checks the set smslimit is in range?*/
							checksmslimit();
							/*this function Sets the Hourly send Power data flag*/
							set_hourly_power_data();
							/*this function will send current status every 30 min if turned on*/
							Send_30min_Status_sms();   
							/*this function will call the registered number when power down event happens
							also tells unit current status*/
							check_voicefeedback_status();
							/*check power down events and sends sms based on that*/
							Power_event_check();
							/*this function will check and load the SMS message to the Queue*/
							Check_Send_SMS();														
							#endif
							/*receiving UART data and Processing it */
							if(uart_rcv_flag == 1) {
								char TempBuf[500]="";
								uart_rcv_flag=0;    
								//Debug("size 0:%d",strlen((char*)ModemString)-3);
								
								//calculating crc without header='$'
								strncpy(TempBuf,(char *)(ModemString+1),strlen((char*)ModemString)-3);
								 
								c_crc=crc8((void *)TempBuf,strlen(TempBuf));  
								
								//if((c_crc == ModemString[strlen((char*)ModemString)-2]))   //if crc correct process the data
			          {										
										Process_Received_Settings();									
									  									  
								}	
							}							
							/*receiving Trace UART data and Processing it */
							if(uart_rcv_flag1 == 1) {							
								uart_rcv_flag1=0;					 
							  Process_Received_Settings();							
							}
							  
							
							
					
							/*clear timer interrupt flag*/
							Timer1_Flag=CLR;
				#endif							
				}
				else if(SET == Timer0_Flag)
				{
						printf("\n one sec Timer \n");
						Timer0_Flag=CLR;
				}	 			   
			 
			
		 
		}
	 
}

/*** (C) COPYRIGHT 2023 Nuvoton Technology Corp. ***/
