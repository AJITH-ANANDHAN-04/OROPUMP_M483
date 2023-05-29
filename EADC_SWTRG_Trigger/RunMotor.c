
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>
#include "Platform.h" 
#include "NuMicro.h"
#include "lcd.h" 
 
#define WELCOME 				18
#define THANKS 					17
#define AUTOMODE 				5
#define AUTOSWON				8
#define MOBILEON 				16
#define STARTEDRUN 			16
#define RUNNINGGOOD 		25
#define MOBILEOFF 			15
#define MADEMOTOROFF		15
#define OFFCOND 				24
#define PODL 						10
#define NLOFF 					36
#define SUMPTANK 				47
#define UPPERTANK 			48
#define STOFF 					46
#define DRYRUNTIMER 		37
#define CYCLICON 				34
#define CYCLICOF 				35
#define RCTON 					45
#define RCTOF 					44
#define MAXTIMEROFF 		40
#define OKELECTRICITY 	23
#define NOELECTRICITY 	22
#define PH3PRESENT 			2
#define PH2PRESENT 			1
#define PH2PH3ON 				0
#define PH3ON 					3
#define LOWVOLTAGE			39
#define HIGHVOLTAGE			38
#define OVLOAD 					43
#define SPPOFF 					49
#define CUNRSPPOFF			33
#define REVERSEOFF			6
#define SOVOLT					30
#define SOCURRENT				9
#define SO0							32
#define SO1							20
#define SO2							29
#define SO3							28
#define SO4							13
#define SO5							12
#define SO6							27
#define SO7							26
#define SO8							11
#define SO9							19
#define THISVOLT				31
#define THISCUR					4
#define DECIMAL					21
#define VALVE						52
#define TVALVEON				53
#define DRIPCYC					54
#define GATEOF					55
#define WELCOME_LE 			18
#define THANKS_LE 			10
#define AUTOMODE_LE 		10
#define AUTOSWON_LE			18
#define MOBILEON_LE 		10
#define STARTEDRUN_LE 	18
#define RUNNINGGOOD_LE 	10
#define MOBILEOFF_LE 		18
#define MADEMOTOROFF_LE	18
#define OFFCOND_LE 			10
#define PODL_LE 				18
#define NLOFF_LE 				18
#define SUMPTANK_LE 		18
#define UPPERTANK_LE 		18
#define STOFF_LE 				18
#define DRYRUNTIMER_LE 	10
#define CYCLICON_LE 		10
#define CYCLICOF_LE 		18
#define RCTON_LE 				10
#define RCTOF_LE 				18
#define MAXTIMEROFF_LE 		18
#define OKELECTRICITY_LE 	10
#define NOELECTRICITY_LE 	10
#define PH3PRESENT_LE 		10
#define PH2PRESENT_LE 		10
#define PH2PH3ON_LE 			18
#define PH3ON_LE 				10
#define LOWVOLTAGE_LE		18
#define HIGHVOLTAGE_LE	18
#define OVLOAD_LE 			18
#define SPPOFF_LE 			18
#define CUNRSPPOFF_LE		18
#define REVERSEOFF_LE		18
#define SOVOLT_LE				6
#define SOCURRENT_LE		9
#define SO0_LE					1
#define SO1_LE					1
#define SO2_LE					1
#define SO3_LE					1
#define SO4_LE					1
#define SO5_LE					1
#define SO6_LE					1
#define SO7_LE					1
#define SO8_LE					1
#define SO9_LE					1
#define THISVOLT_LE			1
#define THISCUR_LE			1
#define DECIMAL_LE			1
#define VALVE_LE				10
#define TVALVEON_LE			12
#define DRIPCYC_LE			12
#define GATEOF_LE				12

/*Macros*/
#define OV_LOAD_TRIP_FLAG					1
#define DYRUN_LOAD_TRIP_FLAG			2
#define NO_TRIP_FLAG							0
#define DRIP_CYCLIC_TRIP_FLAG			3
#define LOW_PRESS_TRIP_FLAG    		4
#define HIGH_PRESS_TRIP_FLAG   		5
#define DRIP_NOCOM_TRIP_FLAG			6

/*Flash Related*/
#define READ_WRITE_FILE_BASE_ADDR          0x0003F000	
#define READFILE_READWORD_SIZE             4 


#define FLASH_PAGE_SIZE            4096
#define FLASH_PAGE_ADDRESS(addr) ((addr) & ~(FLASH_PAGE_SIZE - 1))

 
/*----------------------------------------------------------------------------------------------------------------------------*/
/*Global Variables Declaration																																																*/
/*----------------------------------------------------------------------------------------------------------------------------*/ 



/*Motor Function Related*/
//struct MSettings nMSettings;
nSTATE_SENDSMS STATE_SENDSMS=STATE_NO_SMS;
STATE_MOTOR nSTATE_MOTOR=STATE_MOTOR_OFF;
//STATE_MOTOR_TIMER nSTATE_MOTOR_TIMER=STATE_NO_TIMER;
STATE_MOTOR_PROBLEM nSTATE_MOTOR_PROBLEM=STATE_MOTOR_OK;
STATE_MOTOR_SMS nSTATE_MOTOR_SMS=STATE_NO_MOTOR_SMS;
STATE_MOTOR_ON_SMS nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
STATE_STATUS_SMS nSTATE_STATUS_SMS=STATUS_MOTOROF_SMS;
STATE_STATUS_ONDELAY_SD nSTATE_STATUS_ONDELAY_SD = STATUS_MOTOR_AT_OFF;
RTC_CURRENT_STATUS nRTC_CURRENT_STATUS = NO_RTC_TIMER;
nDISPLAYMsg DISPLAYMsg = NO_COND;
CYCTimer nCYCTimer = NO_TCOND;


unsigned char PreviousTrip = NO_TRIP_FLAG;

volatile signed char Page = 0; 

uint8_t		SetToGreenFlag = 0,Stg3FirstTimer = 0,Stg2FirstTimer = 0,MassageReceived = 0,limitsmsonof,limitsmscount=0,limitsmsset,
					limitsmsflag=0,WritePhoneNumber = 0,SaveNumberPos = 1,valve_onof_msg=0,limitsmscountsmsm=0,debugon=0;

uint8_t	 	FirstTimerinProgram1 = 0,FirstTimerinProgram2 = 0,FirstTimerinProgram3 = 0,FirstTimerinProgram4 = 0,RTCCheckFirstTime=0,PrvDate = 0,OffMotorByPhone=0,
					SendSmsToAll=0,PowerCurrentCondition=0,onehour_send_flag=0,PowerIsThere,SMSDelay = 0,AllSmsSendDone = 0,SMS30MinStatus = 0,
					CallModeOn=0,checkpower,SMS30MinStatusNumber = 0,SMS30MinStatusDelay = 0,started_firsttime = 0,ModemIsReady=0,HowManyNumberFound,
					NumberOfSmsNeedToSend=0,Nooftcpsendcount=0,switchonofflag=0,FirstTimeSMS,Tpsms = 0,RTCOFFLAG=0,PrvAutoMobileKey,Appmodeon,
					gprson,power_on_flag_count=0,Displaydelay = 0,SubPage = 0,keydebouncecnt=0,keydebounceflag=0,CSQ=0,ChangeSoundStatus = 0,
					NowStarted=0,NowOff= 0,Ph2Ph3Selection=0,PrvPh2Ph3Selection=0,AutoMobileKey = 0,OnByTarget=0,checkpower=0,TargetNumberFound=0,
					ReversePhase=0, ActCycLicOnDelayPrvSec,ActCycLicOfDelayPrvSec,PlaySound = 0,PlaySoundVer = 0,PlayNumber = 0,
					HowManySoundToPlay=0,ServiceNumberFound=0,HowManySoundPlayed = 0,NumberOfSMSSend=0,NeedToSendSMSCall=0,ThisSMSisNotPowerFault = 0;				
					
uint8_t		WHRTCPRWillNext = 0,VolCurGetTimer = 0,VolCurGetTimern=0,VoicePowerCondition = 1,PrvOnOff = 0,PrvPowCond = 0,MotorTriedToStart = 0,
          Prv2ph3phstate = 4,writetorecordfirsttime = 0,Returnfromthisonly = 0,NowRestartMe = 0,spplowhighvoldelay=0,MotorReversePhaseSMS = 0,
          RecheckOlRstState = 0,livedataflag=0,livedataflag1=0,livedataflagcount1=0,livedataflagcount=0,Appmodeon=0,
          MotorReversePhse = 0,MotorReversePhasePl = 0,PowerOnDelayComPleted =0,ScrDelayCompleted = 0,pfccompleted=0,pfccompletedCnt=0,
					scrrelayTimer=0,pfcrelayTimer=0,SCRPowerOnDelay = 0,ActPoScrPrvSec = 0,ActScrPrvSec=0,NoAcceptSMS = 0,
					ActOnDelayPrvSec,ActStarDetaPrvSec,ActPrvmosHr,CatchDrAccor = 0,DryRunOccUpdate = 0,OverAllStarterTrip = 0,SendSmsflag=0,
					delayCounterSms=0,RelayConditionUpDateTimer=0,WhichPhaseHaveingProblem = 0,prvNoElePowerOfTimersec,ActSfbPrvSec,VoltageSppRecheckCounter = 0,
					VoltageSppRecheckflag=0,PrvSppTrip=0,PrvUpMotorStatus=0,PrvMSMotorStatus=0,PrvLoMotorStatus=0,PrvLocanMotorStatus=0,OnFromMobile=0,
					StaticSMSSend = 0,NumberFound=0,PowerCondCall=0,PowerOnSms=0,RegxSmsSend = 0,CallOnOfVer=0, PowerOffSMS = 0,SendSMS=0,
          NumberChangeSMS = 0,CallConnected = 0,ringflag=0;					
					 
volatile unsigned short int StatusCode=0;

int8_t    relayTimer =0;
					
int  			MotorStarterTripCount = 0,ActMotorStarterTripTimer = 0,ActDrRunTimer = 0,ActDrRunCount = 0,CurActDrRunTimer = 0,SetDrRunTimer = 0,
					CurrentSppRecheckCounter = 0,CSPPValue = 0,Mobile2Phs3Phase = 0,HighVoltageRecheck = 0,LowVoltageRecheck = 0,SmsSendOntimer = 0,
          RecheckPinCounter = 0,revalue,reTpHr,reTpMin,reTpSec,value,TpHr,TpMin,TpSec;;

uint16_t  RecheckCounterST = 0,RecheckCounterUT = 0,RecheckCounterMT = 0,RecheckCounterLT = 0,RecheckCounterLT1 = 0,RecheckCounterMT_1 = 0,
          WorkingOn3Phas = 0,OnehrPrvSec=0,Onehr_sec_timer=0,StatusSMSDelay1,StatusSMSDelay2,StrTokStrVer2=0,StrTokStrVer=0,CallErrorDelay = 0,
          NumberOfSmsAllreadySend;

uint16_t 			Tp=0,Tp1=0,Tp2=0,Tp3=0,Tp4=0,min=0,max=0,i=0,j=0;

uint8_t  (*lcd_ptr)[16];

/*UART ACK with CRC*/
const char ACK[7]="$<U>ì\r";

float     TripVoltage = 0.0,TripCurrent = 0.0,VSPPImbalanceVoltage = 0;


long 			NoElePowerOfTimer = 0,LastDayRunTimer = 0,RunTimerhr,RunTimermin,RunTimersec,RunTimer = 0,MRunTimer = 0,Runflow = 0,MRunflow = 0,
					LastDayRunflow = 0,NoElePowerOfTimerratio = 0; 

/*Remainingtime Related*/
long 			RemainingTime,RemainingCyclicOnTime,RemainingCyclicOfTime,RemainingGRTCTime,RemainingRTC1Time,RemainingRTC2Time,RemainingRTC3Time,
					RemainingRTC4Time,RemainingDrTime;

/*Struct definitions*/
struct 		MoTr nMoTr;
struct _rtc datetime;

volatile unsigned char cpbrsearchend,cpbrsearchend1,cpbrsearchend2;
static unsigned char SendLowVoltageHighVoltage = 0;
static unsigned char SendSPPLowVoltageHighVoltage = 0;
unsigned int PingHighSmsSendOntimer = 0;
unsigned int PingHighRecheckPinCounter = 0;

/*extern*/
uint8_t 	Enter=0,enter1=0,enter2=0,MakeRealyOn=0,StartByMobile=0;

int d=0;

//static uint8_t SendLowVoltageHighVoltage = 0,SendSPPLowVoltageHighVoltage = 0;

struct __SMSstrnumber
{
	char Smsstr[220];
	char Smsnumber[15];
	//char Wifistr[220];
}SmsStrNumber[25];
struct __SMSTCPstrnumber
{
	char SmsTCPstr[10];
	//char Smsnumber[15];
	//char Wifistr[220];
}SmsTCPStrNumber[25];

/*Buffers*/
char BigSMS[1100] = "TEXT";  
char BigSMS1[10] = "TEXT";
char BigSMS2[100] = "TEXT";
char TpStr[50] = "TEXT";
char Buffer1[500] = "TEXT";
char buffer[200] = "TEXT";
char StoredPhoneNumber[25][15] ={"TEXT","TEXT"};
char StoredPhoneSmscode[16][15] ={"TEXT","TEXT"};
char WhoMadeRelayOn[20]="\n";
char WhoMadeenterRelayOn[20]="\n";
int8_t DNDSMSFLAG[5];    //extern 
unsigned char TpS1tr[10]="TEXT";
unsigned char TpS2tr[10]="TEXT";
unsigned char TpS3tr[10]="TEXT";
char ServiceNumber[20] = "0000000000";
char StrTokStr2[150][20];
char StrTokStr[150][20];
volatile uint8_t lcd_row[2][16]={0};
volatile int8_t IMEI[15]={0};
char StaticSmsString[200] = "\n\r";
char PhoneNumber[20] = ""; 
char Tracebuffer[1024] ={0}; 
char SmsNumber[10][15] = {"TEXT","TEXT"}; 
char SMS_BUF[200];
char SendSMSString[350]="TEXT";
volatile int HowManySound[40];



/*Function Prototypes*/
uint8_t CheckMotor(void);
uint8_t CheckStrterTrip(void);
uint8_t CheckCurrentSpp(void);
uint8_t CheckReversePhase(void);
uint8_t Check2Phase(void);
uint8_t CheckSpp(void);
uint8_t CheckSppHys(void);
uint8_t CheckOvLoad(uint8_t Ph2Ph3);
uint8_t CheckNoLoad(uint8_t Ph2Ph3);
uint8_t CheckLowVoltage(uint8_t Ph2Ph3);
uint8_t CheckHighVoltage(uint8_t Ph2Ph3);
uint8_t CheckLowVoltageHys(uint8_t Ph2Ph3);
uint8_t CheckHighVoltageHys(uint8_t Ph2Ph3);
uint8_t CheckUpperTank(void);
uint8_t CheckLowerTank(void);
uint8_t CyclicTimerof(void);
uint8_t CyclicTimeron(void);
void FloatroString1Dig(char *String,float Number);
int FindNearsetElement(long *Pointer,int len);
unsigned char WhoIsNext(unsigned char FromWhere);
void CheckVoltageCurrent(void);
void ReadSettings(void);
void FMC_Read_Buffer(uint8_t * buffer ,uint32_t * Address,size_t size);
void checksmslimit(void);
void DrRestartTimer(void);
void set_hourly_power_data(void);
void Send_30min_Status_sms(void);
void motoron(char *phoneNumber);
void motorof(char *phoneNumber);
void runtime(void);
unsigned char CheckVoliedPhone(char *PhoneNumber);
void DTMF_Proccessor(char* dtmfbuf);
void PlayFeedbackSound(void);
void PlayFeedBackPower(void);
void CheckDigits(float Value,unsigned char Which,unsigned char *string,int *Len);
unsigned char CheckMotorStatus_Sound(void);
void copyIntArrayToCharArray(volatile int* intArray, uint32_t size, char* charArray);
int8_t SetDateTime(struct _rtc datetime);
int isValidCyclicTimerFormat(const char* timerSetting);
int isValidDRTFormat(const char* timerSetting);
void Uart_Send_Dtmf_Data(char* data); 


 
/*Function definitions*/

int isDtValidLength(const char* timerSetting) {
	   
	// Check if the length of the setting is exactly 17 characters (eg: 22/05/23/12/15/00)
    if (strlen(timerSetting) != 17)
        return 0; 

    // The format is valid
    return 1;
}

int isValidDRTFormat(const char* timerSetting) {
	   int i=0;
    // Check if the length of the setting is exactly 6 characters
    if (strlen(timerSetting) != 15)
        return 0;

    // Check if all characters are digits [scrdelay000000]
    for (i = 9; i <= 15; i++) {
        if (!isdigit(timerSetting[i]))
            return 0;
    }

    // The format is valid
    return 1;
}
 
int isValidCyclicTimerFormat(const char* timerSetting) {
	   int i=0;
    // Check if the length of the setting is exactly 6 characters
    if (strlen(timerSetting) != 4)
        return 0;

    // Check if all characters are digits
    for (i = 0; i < 4; i++) {
        if (!isdigit(timerSetting[i]))
            return 0;
    }

    // The format is valid
    return 1;
}
 
void buffer_memsets(void) {
		memset(BigSMS,NULL,sizeof(BigSMS));
		memset(BigSMS1,NULL,sizeof(BigSMS));
		memset(BigSMS2,NULL,sizeof(BigSMS2));
		memset(TpStr,NULL,sizeof(TpStr));
		memset(Buffer1,NULL,sizeof(Buffer1));
		memset(buffer,NULL,sizeof(buffer));		
		memset(StoredPhoneNumber,NULL,sizeof(StoredPhoneNumber));		
		memset(StoredPhoneSmscode,NULL,sizeof(StoredPhoneSmscode));		
		memset(StoredPhoneSmscode,NULL,sizeof(StoredPhoneSmscode));		
		memset(WhoMadeenterRelayOn,NULL,sizeof(WhoMadeenterRelayOn));		
		memset(DNDSMSFLAG,NULL,sizeof(DNDSMSFLAG));		
		memset(StrTokStr2,NULL,sizeof(StrTokStr2));		
		memset(StrTokStr,NULL,sizeof(StrTokStr));		
		memset((void *)IMEI,NULL,sizeof(IMEI));		
		memset((void *)lcd_row,NULL,sizeof(lcd_row));		
		memset(Tracebuffer,NULL,sizeof(Tracebuffer));		
		memset(SmsNumber,NULL,sizeof(SmsNumber));		
		memset(StaticSmsString,NULL,sizeof(StaticSmsString));		
		memset(PhoneNumber,NULL,sizeof(PhoneNumber));		
		memset(SendSMSString,NULL,sizeof(SendSMSString));		
		memset(SMS_BUF,NULL,sizeof(SMS_BUF));		
		memset((void *)HowManySound,NULL,sizeof(HowManySound));	
}
void copyIntArrayToCharArray(volatile int* intArray, uint32_t size, char* charArray) {
    
	uint32_t i=0;
	for ( i = 0; i < size; i++) {
        charArray[i] = (char)intArray[i];
    }
}
unsigned char CheckMotorStatus_Sound(void) {
			if(nSTATE_MOTOR == STATE_MOTOR_TRIP_LOWVOLTAGE)
			{
						PlaySound =1;
						PlayNumber=LOWVOLTAGE;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_HIGHVOLTAGE)
			{
						PlaySound =1;
						PlayNumber=HIGHVOLTAGE;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_SPP)
			{
						PlaySound =1;
						PlayNumber=SPPOFF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_CURRENTSPP)
			{
						PlaySound =1;
						PlayNumber=CUNRSPPOFF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_STARTER)
			{
						PlaySound =1;
						PlayNumber=STOFF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_DRYRUN)
			{
						PlaySound =1;
						PlayNumber=NLOFF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						if(nTimerSettings.DrReOnOf == 1)
						{
							PlaySound =1;
							PlayNumber=DRYRUNTIMER;
							HowManySound[HowManySoundToPlay] = PlayNumber;
							HowManySoundToPlay++;
						}
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_OVERLOAD)
			{
						PlaySound =1;
						PlayNumber=OVLOAD;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_LOWPRESS)
			{
						PlaySound =1;
						PlayNumber=UPPERTANK;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_HIGHPRESS)
			{
						PlaySound =1;
						PlayNumber=UPPERTANK;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_UPPERTANK)
			{
						PlaySound =1;
						PlayNumber=UPPERTANK;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_LOWERTANK)
			{
						PlaySound =1;
						PlayNumber=SUMPTANK;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_MAXTIME)
			{
						PlaySound =1;
						PlayNumber=MAXTIMEROFF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_OFFDELAY)
			{
						PlaySound =1;
						PlayNumber=CYCLICOF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			return 0;

}
void CheckDigits(float Value,unsigned char Which,unsigned char *string,int *Len) {
    char TpStr[20];
    int Tp;
    //int len;
    if(Which == 1)
    {
				FloatroString1Dig(TpStr,Value);
    }
		else if(Which == 2)
    {
				sprintf(TpStr,"%02.0f",Value);
    }
    else
    {
				sprintf(TpStr,"%03.0f",Value);

    }
    *Len = strlen(TpStr)-1;
    for(Tp = 0; Tp<=*Len;Tp++)
    {
          if(TpStr[Tp] != '.')
							string[Tp] =  TpStr[Tp] - '0';
          else
              string[Tp] = 10;

    }
}
void PlayFeedBackPower(void) {

	unsigned char TpStr[20];
	int len;
	int Tp;
	
	if(VoicePowerCondition == 0)
	{
	
		PlaySound =1;
		PlayNumber=SOVOLT;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;

		CheckDigits(nCurretnCond.BRVoltage,0,TpStr,&len);
		
		for(Tp=0;Tp<=len;Tp++)
		{
			Debug("\r\n*****TpStr[%d] = %d  len = %d*****\n\r",Tp,TpStr[Tp],len);
			
			switch(TpStr[Tp])
			{
				case 0:
					PlayNumber=SO0;	
					break;
				case 1:
					PlayNumber=SO1;	
					break;
				case 2:
					PlayNumber=SO2;	
					break;
				case 3:
					PlayNumber=SO3;	
					break;
				case 4:
					PlayNumber=SO4;	
					break;
				case 5:
					PlayNumber=SO5;	
					break;
				case 6:
					PlayNumber=SO6;	
					break;
				case 7:
					PlayNumber=SO7;	
					break;
				case 8:
					PlayNumber=SO8;	
					break;
				case 9:
					PlayNumber=SO9;	
					break;	
				case 10:
					PlayNumber=DECIMAL;	
					break;
				default:
					PlayNumber=SO9;	
					break;							
			}						
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
		
		PlayNumber=THISVOLT;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;
		
		PlayNumber=SOCURRENT;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;
		
		
		CheckDigits(nCurretnCond.Bcurrent,1,TpStr,&len);
		
		for(Tp=0;Tp<=len;Tp++)
		{
			Debug("\r\n*****TpStr[%d] = %d  len = %d*****\n\r",Tp,TpStr[Tp],len);
			PlaySound =1;
			switch(TpStr[Tp])
			{
				case 0:
					PlayNumber=SO0;	
					break;
				case 1:
					PlayNumber=SO1;	
					break;
				case 2:
					PlayNumber=SO2;	
					break;
				case 3:
					PlayNumber=SO3;	
					break;
				case 4:
					PlayNumber=SO4;	
					break;
				case 5:
					PlayNumber=SO5;	
					break;
				case 6:
					PlayNumber=SO6;	
					break;
				case 7:
					PlayNumber=SO7;	
					break;
				case 8:
					PlayNumber=SO8;	
					break;
				case 9:
					PlayNumber=SO9;	
					break;	
				case 10:
					PlayNumber=DECIMAL;	
					break;
				default:
					PlayNumber=SO9;	
					break;							
			}						
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
		PlayNumber=THISCUR;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;
	}
	
}
void PlayFeedbackSound(void) {

	unsigned char checkpower;
	//unsigned char TpStr[20];
	//int len;
	//int Tp;

	switch(nSTATE_STATUS_SMS)
	{
		case STATUS_MOTOROF_SMS:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						PlaySound =1;
						PlayNumber=STARTEDRUN;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						PlaySound =1;
						PlayNumber=OFFCOND;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
			case STATUS_MOTOR_ON_TARGET:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						PlaySound =1;
						PlayNumber=STARTEDRUN;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						PlaySound =1;
						PlayNumber=OFFCOND;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					default:
					{
						PlaySound =1;
						PlayNumber=OFFCOND;	
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;					
						break;
					}
					
					
					
				}	


				PlaySound =1;
				PlayNumber=STARTEDRUN;							//should be target on
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
			}
			break;
		case STATUS_MOTOR_OFF_TARGET:
			{
				PlaySound =1;
				PlayNumber=MOBILEOFF;					//should be target off
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
					default:
					{
						PlaySound =1;
						PlayNumber=OFFCOND;	
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;					
						break;
					}
					
					
					
				}								
				
			}
			break;
		case STATUS_NO_ELECTRICICY:
			{
				PlaySound =1;
				PlayNumber=NOELECTRICITY;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_ON_RESTART_NOLOAD:
			{
				
			}
			break;
		case STATUS_MOTOR_STARTER_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=STOFF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_MOTOR_TRIP_HIGHPRESS:
		    {
				PlaySound =1;
				PlayNumber=UPPERTANK;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
        case STATUS_MOTOR_TRIP_LOWPRESS:
           {
				PlaySound =1;
				PlayNumber=UPPERTANK;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;		
		case STATUS_MOTOR_UPPERTANK_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=UPPERTANK;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_MOTOR_LOWERTANK_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=SUMPTANK;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_MOTOR_DRYRUN_TRIP_SMS:	
			{
				PlaySound =1;
				PlayNumber=NLOFF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				if(nTimerSettings.DrReOnOf == 1)
				{
				PlaySound =1;
				PlayNumber=DRYRUNTIMER;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				
				}
			}
			break;						
		case STATUS_MOTOR_TRIP_OVERLOAD:	
			{
				PlaySound =1;
				PlayNumber=OVLOAD;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_TRIP_SPP:
			{
				PlaySound =1;
				PlayNumber=SPPOFF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_TRIP_REVERSEPHASE:
			{
				PlaySound =1;
				PlayNumber=REVERSEOFF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_TRIP_CURRENTSPP:
			{
				PlaySound =1;
				PlayNumber=CUNRSPPOFF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_TRIP_LOWVOLTAGE:
			{
				PlaySound =1;
				PlayNumber=LOWVOLTAGE;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_TRIP_HIGHVOLTAGE:
			{
				PlaySound =1;
				PlayNumber=HIGHVOLTAGE;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
           case STATUS_MOTOR_GRTCOF_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=RCTOF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
					
			}
			break;	
					
		case STATUS_MOTOR_RTCOF1_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=RCTOF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
					
			}
			break;	
		case STATUS_MOTOR_RTCOF2_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=RCTOF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_RTCOF3_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=RCTOF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_RTCOF4_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=RCTOF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_CYCLIC_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=CYCLICOF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_VCYCCOMPLE_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber = DRIPCYC;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
			
		case STATUS_MOTOR_NOCOMMUNICATION_TRIP_SMS:
				{
						PlaySound =1;
						PlayNumber = DRIPCYC;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;	
				}
			break;
		case STATUS_MOTOR_MAX_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=MAXTIMEROFF;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_ON_SWITCH_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=OFFCOND;
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				 
			}
		  break;
		case STATUS_MOTOR_ON_DEFAULT:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
							
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
										
						break;
					}				
				}
				PlaySound =1;
				PlayNumber=MOBILEON;	
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;		
				
				PlaySound =1;
				PlayNumber=RUNNINGGOOD;	
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_ON_ONDELAY:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=CYCLICON;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				PlaySound =1;
				PlayNumber=RUNNINGGOOD;	
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				
			}
			break;

		case STATUS_MOTOR_ON_SWITCH:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				PlaySound =1;
				PlayNumber=AUTOSWON;
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				
				PlaySound =1;
				PlayNumber=RUNNINGGOOD;	
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			
			}
			break;
			case STATUS_MOTOR_ON_GRTC:
			{	
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RCTON;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=RUNNINGGOOD;	
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
				}
				
			}
			break;
		
		case STATUS_MOTOR_ON_RTC1:
			{	
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RCTON;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=RUNNINGGOOD;	
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
				}
				
			}
			break;
		case STATUS_MOTOR_ON_RTC2:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RCTON;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=RUNNINGGOOD;	
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
				}
				
			}
			break;
		case STATUS_MOTOR_ON_RTC3:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RCTON;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=RUNNINGGOOD;	
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
				}
				
			}
			break;
		case STATUS_MOTOR_ON_RTC4:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RCTON;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;		
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=RUNNINGGOOD;	
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
				}
				
			}
			break;
		case STATUS_MOTOR_ON_UPPERTANK:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RUNNINGGOOD;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
			}
			break;
		case STATUS_MOTOR_ON_LOWERTANK:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RUNNINGGOOD;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
			}
			break;
		case STATUS_MOTOR_ON_RESTARTTIMER:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=PODL;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=PODL;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						
						break;
					}
					default:
					{
									
						break;
					}				
				}
				
				PlaySound =1;
				PlayNumber=RUNNINGGOOD;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				
			}
			break;
		default:
			{
				
			}
			break;
	}
	if(nSTATE_STATUS_SMS != STATUS_NO_ELECTRICICY)
	{
		checkpower=Check2Phase();
		if(checkpower == 3)
		{
			PlaySound =1;
			PlayNumber=PH3PRESENT;		
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
		else
		{
			PlaySound =1;
			PlayNumber=PH2PRESENT;		
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
	}
}
void DTMF_Proccessor(char* dtmfbuf) {
	#if 0
	    char ivrsbuf[15]={0};	
      			
	    memcpy(ivrsbuf,dtmfbuf,10);
      Debug("\n[%s]",dtmfbuf);
	    Debug("\n[%s]",ivrsbuf);
			if(strstr(ivrsbuf,"+rxdtmf: #")!=0)
			{   
					char charArray[50]={0};
					uint32_t size = sizeof(HowManySound)/ sizeof(HowManySound[0]);
				
					Debug("\n+RXDTMF: #"); 
				
					HowManySoundToPlay = 0;
					HowManySoundPlayed = 0;
					PlaySound = 0;
					PlaySound =1;

					PlayNumber=WELCOME;
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;							 
					PlayFeedbackSound();								 									
					PlayNumber=THANKS;
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
					/*sending the audio file number to modem*/
					copyIntArrayToCharArray(HowManySound, size, charArray);
					Debug(charArray);
          /*sending array on UART0(modem uart)*/	
           Uart_Send_Dtmf_Data(charArray);					
					//printf("#%s;",charArray);
					
			}
			if(strstr(ivrsbuf,"+rxdtmf: 8")!=0)
			{    
				char charArray[50]={0};
				uint32_t size = sizeof(HowManySound)/ sizeof(HowManySound[0]);
				Debug("\n+RXDTMF: 8");						 
				checkpower=Check2Phase();
				HowManySoundToPlay = HowManySoundPlayed = 0;
				PlaySoundVer=0;
				PlaySound = 0;
				memset((void *)&HowManySound,0,sizeof(HowManySound));
				//DTmfValue = 0;
				//nTimerSettings.Drrestartpoweronof=0; 
				
				if(MakeRealyOn == 0)
				{
					MotorStarterTripCount = 0;
					OverAllStarterTrip = 0;
					ActMotorStarterTripTimer =0;
					MakeRealyOn = 1; 	StartByMobile = 1; OnFromMobile = 1;nMoTr.ActMaxRunTimer=0;
					NowOff = 0;
					if(PowerCurrentCondition == 0)
					{
						if(checkpower == 2  )
						{
							if (nTimerSettings.AutoStIIOnOff == 0 || Mobile2Phs3Phase == 3)
							{
								PlaySound =1;
								PlayNumber=PH3ON;
								HowManySound[HowManySoundToPlay] = PlayNumber;
								HowManySoundToPlay++;
							}
							else
							{
								NowOff = 0;
								NowStarted = 1;
								PlaySound =1;
								PlayNumber=STARTEDRUN;
								HowManySound[HowManySoundToPlay] = PlayNumber;
								HowManySoundToPlay++;
							}

						}
						else
						{
								NowOff = 0;
								NowStarted = 1;
								PlaySound =1;
								PlayNumber=STARTEDRUN;
								HowManySound[HowManySoundToPlay] = PlayNumber;
								HowManySoundToPlay++;
						}
					}
					else
					{
								NowOff = 0;
								NowStarted = 1;
								PlaySound =1;
								PlayNumber=STARTEDRUN;
								HowManySound[HowManySoundToPlay] = PlayNumber;
								HowManySoundToPlay++;
					}
					
					CLK_SysTickLongDelay(5000000); 
					/*sending the audio file number to modem*/				
					copyIntArrayToCharArray(HowManySound, size, charArray);
					Debug(charArray);
					/*sending array on UART0(modem uart)*/
					Uart_Send_Dtmf_Data(charArray);
					//printf("#%s;",charArray); 
					
					WriteSettingsFile();
				}
				else
				{
					if(NowStarted ==1)
					{
								PlaySound =1;
								PlayNumber=STARTEDRUN;
								HowManySound[HowManySoundToPlay] = PlayNumber;
								HowManySoundToPlay++;
					}
					else
					{
						if(PowerCurrentCondition == 0)
						{
						   if(checkpower == 2 )
						   {
								if (nTimerSettings.AutoStIIOnOff == 0 || Mobile2Phs3Phase == 3)
								{
									PlaySound =1;
									PlayNumber=PH3ON;
									HowManySound[HowManySoundToPlay] = PlayNumber;
									HowManySoundToPlay++;

								}
								else
								{
									PlayFeedbackSound();
								}
							}
							else
							{
								PlayFeedbackSound();
							}
						}
						else
						{
							if(PowerCurrentCondition == 1)
							{
								PlaySound =1;
								PlayNumber=NOELECTRICITY;
								HowManySound[HowManySoundToPlay] = PlayNumber;
								HowManySoundToPlay++;

							}
							else
							{
								PlayFeedbackSound();
							}
						}
					}
					CLK_SysTickLongDelay(5000000); 
					/*sending the audio file number to modem*/				
					copyIntArrayToCharArray(HowManySound, size, charArray);
					Debug(charArray);
					/*sending array on UART0(modem uart)*/
					Uart_Send_Dtmf_Data(charArray);
					//printf("#%s;",charArray); 
				}
				strcpy(WhoMadeRelayOn,WhoMadeenterRelayOn);	
				
			}  
			if(strstr((char *)ivrsbuf,"+rxdtmf: 9") !=0)
			{
				char charArray[50]={0};
				uint32_t size = sizeof(HowManySound)/ sizeof(HowManySound[0]);
				
				Debug("\n+RXDTMF: 9");						 
				HowManySoundToPlay = HowManySoundPlayed = 0;
				PlaySoundVer=0;
				PlaySound = 0;
				memset((void*)&HowManySound,0,sizeof(HowManySound));
				//DTmfValue = 0;		 
				
				if(MakeRealyOn == 1)
				{
					MotorStarterTripCount = 0;
					OverAllStarterTrip = 0;
					ActMotorStarterTripTimer =0;
					//nTimerSettings.Driprestartpoweronof=0;
					NowOff = 1;
					NowStarted = 0;
					OffMotorByPhone = 1;
					MakeRealyOn = 0;
					OnByTarget=0;
					livedataflagcount1=0;livedataflag1=1;					 
					if(nMSettings.SumpOnOff == 1)
					PrvLoMotorStatus=0;
					PrvUpMotorStatus=0;
					nCYCTimer = NO_TCOND;
					NoAcceptSMS=0;
					StartByMobile = 0;
					OnFromMobile = 0;
					nMoTr.ActMaxRunTimer=0;
					PlaySound =1;
					PlayNumber=MADEMOTOROFF;
					//PrvOnOff = 0;
					PreviousTrip = NO_TRIP_FLAG;
					HowManySound[HowManySoundToPlay] = PlayNumber;
					HowManySoundToPlay++;
					strcpy(WhoMadeRelayOn,WhoMadeenterRelayOn);
					//dtmfDebounceDelay=1;
					
					CLK_SysTickLongDelay(5000000); 
					/*sending the audio file number to modem*/				
					copyIntArrayToCharArray(HowManySound, size, charArray);
					Debug(charArray);
					/*sending array on UART0(modem uart)*/
					Uart_Send_Dtmf_Data(charArray);
					//printf("#%s;",charArray); 
					
					WriteSettingsFile();					 
				}
				else
				{
					if(NowOff == 1)
					{
						PlaySound =1;
						PlayNumber=MADEMOTOROFF;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
					}
					else
					{
						PlayFeedbackSound();
					}
					
					CLK_SysTickLongDelay(5000000); 
					/*sending the audio file number to modem*/
					copyIntArrayToCharArray(HowManySound, size, charArray);
					Debug(charArray);
					/*sending array on UART0(modem uart)*/
					Uart_Send_Dtmf_Data(charArray);
					//printf("#%s;",charArray); 

				} 
				  
			  
			}
			else if(strstr((char *)dtmfbuf,"+rxdtmf: 7") !=0 && CallConnected == 0)
			{ 
				char charArray[50]={0};
				uint32_t size = sizeof(HowManySound)/ sizeof(HowManySound[0]);
				
				Debug("\n+RXDTMF: 7");					 
				HowManySoundToPlay = HowManySoundPlayed = 0;
				PlaySoundVer=0;
				PlaySound = 0;
				memset((void *)&HowManySound,0,sizeof(HowManySound));
				PlayFeedbackSound();
				/*sending the audio file number to modem*/				
				copyIntArrayToCharArray(HowManySound, size, charArray);
				Debug(charArray);
				/*sending array on UART0(modem uart)*/
				Uart_Send_Dtmf_Data(charArray);
				//printf("#%s;",charArray);
				
			}				     
			else if(strstr((char *)dtmfbuf,"+rxdtmf: *") !=0)
			{ 
        char charArray[50]={0};
				uint32_t size = sizeof(HowManySound)/ sizeof(HowManySound[0]);
   			
				Debug("\n+RXDTMF: *");
				HowManySoundToPlay = HowManySoundPlayed = 0;
				PlaySoundVer=0;
				PlaySound = 0;
				memset((void *)&HowManySound,0,sizeof(HowManySound));
				PlayFeedBackPower();
				/*sending the audio file number to modem*/
				copyIntArrayToCharArray(HowManySound, size, charArray);
				Debug(charArray);
				/*sending array on UART0(modem uart)*/
				Uart_Send_Dtmf_Data(charArray);
				//printf("#%s;",charArray);

				
			}
			else if(strstr((char *)dtmfbuf,"+rxdtmf: 2") !=0)
			{					 	 
				Debug("\n+RXDTMF: 2");
				HowManySoundToPlay = HowManySoundPlayed = 0;
				PlaySoundVer=0;
				PlaySound = 0;
				Mobile2Phs3Phase = 2;
				WriteSettingsFile();
				PlaySound =1;
				PlayNumber=PH2PH3ON;
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				 
			}
			else if(strstr((char *)dtmfbuf,"+rxdtmf: 3") !=0)
			{				
				Debug("\n+RXDTMF: 3");
				HowManySoundToPlay = HowManySoundPlayed = 0;
				PlaySoundVer=0;
				PlaySound = 0;
				Mobile2Phs3Phase = 3;
				WriteSettingsFile();
				PlaySound =1;
				PlayNumber=PH3ON;
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				// WriteSettingsFile();					
				 
			}
			#endif	 	
}
unsigned char CheckVoliedPhone(char *PhoneNumber) {
	int Len;
	int i;
	Len = strlen(PhoneNumber);
	for(i=0;i<=Len;i++)
	{
		if(PhoneNumber[i]>'0' && PhoneNumber[i]<='9')
			return 1;
	}
	return 0;


}
void runtime(void) {		 
		//int Tp;
		long value;
		long TpHr;
		long TpMin;
		long TpSec;
		value = MRunTimer;         //This will clear when motor start again
		TpHr = value/3600;
		value = value%3600;
		TpMin = value/60;
		value = value%60;
		TpSec = value;
		/*Motor Previous total runtime it will clear after motor start*/
		RunTimerhr =TpHr;
		RunTimermin =TpMin;
		RunTimersec =TpSec;
}
void Debug(const char *format, ...) {
    va_list ap;       
    memset(Tracebuffer,NULL,sizeof(Tracebuffer));
    va_start(ap, format);
    vsnprintf(Tracebuffer,1024, format, ap);
    va_end(ap);
    debug(Tracebuffer,strlen(Tracebuffer));   
} 

void debug(char* data ,int len) {  
	size_t packet_size= len;//strlen(data);	
  size_t i;		 
	i=0;
	while(packet_size--)
	{
	   UART_WRITE(UART1, data[i++]);
		 delaym(500);
	} 
	//sending footer after CRC 
		UART_WRITE(UART1,'\n');

}
void Uart_Send_with_crc(char* data) {
	 
	size_t data_size = strlen(data);
	size_t i;
	size_t packet_size;
	uint8_t crc = crc8(data, data_size);
	data[data_size] = crc;
	packet_size = data_size + 1; // Data size plus CRC8 byte 
	
	//sending Header   
	  UART_WRITE(UART0,'$');
	
	// Send the packet through UART
	for (i = 0; i < packet_size; i++)
    UART_WRITE(UART0, data[i]);
	
	//sending footer after CRC 
	  UART_WRITE(UART0,'\r');

}
void Uart_Send_Dtmf_Data(char* data) {
	 
	size_t data_size = strlen(data);
	size_t i; 
	//sending Header    
	  UART_WRITE(UART0,'#');
	
	// Send the packet through UART
	for (i = 0; i < data_size; i++)
    UART_WRITE(UART0, data[i]);
	
	//sending footer after CRC 
	  UART_WRITE(UART0,';');

}
void motoron(char *phoneNumber) {
		if(MakeRealyOn==0)
		{
			MotorStarterTripCount = 0;
			OverAllStarterTrip = 0;
			ActMotorStarterTripTimer =0;
			nTimerSettings.Drrestartpoweronof=0;  
			strcpy(WhoMadeRelayOn,phoneNumber);
			Debug("WHO[%s]",WhoMadeRelayOn);			 
			MakeRealyOn = 1; 
			StartByMobile = 1;                                     
			OnFromMobile = 1;                                       
			nMoTr.ActMaxRunTimer=0;  
			//PrvOnOff = 0;
			// PrintfResp("\n\rMotor On \n\r");
			// PrintfResp("\n\rSMS SEND NOW\n\r");
			//strcpy(WhoMadeRelayOn,Recive_Sms_Number);

			checkpower=Check2Phase();

			if(PowerCurrentCondition == 1)
			{
					sprintf(StaticSmsString," %02d066\n",(datetime.tm_sec+2));
					if(nMSettings.gethidesmsonoff == 1)
					sprintf(StaticSmsString,"%sMOBILE ON BY : +91%s0\n\rPOWER OFF\n\rMOTOR OFF\n",StaticSmsString,WhoMadeRelayOn);
					else
						sprintf(StaticSmsString,"%sMOBILE ON BY %s\n\rPOWER OFF\n\rMOTOR OFF\n",StaticSmsString,WhoMadeRelayOn);
					sprintf(StaticSmsString,"%s MOTOR CAN'T START BEACUSE NO ELECTRICITY",StaticSmsString);
					StaticSMSSend = 1;
			}
			else if(checkpower == 2 )
			{
					if (nTimerSettings.AutoStIIOnOff == 0 || Mobile2Phs3Phase == 3)
					{
						sprintf(StaticSmsString," %02d028\n",(datetime.tm_sec+2));
						if(nMSettings.gethidesmsonoff == 1)
							sprintf(StaticSmsString,"%sMOBILE ON BY : +91%s0\n\rPOWER ON\n\rMOTOR OFF\n",StaticSmsString,WhoMadeRelayOn);
						else
							sprintf(StaticSmsString,"%sMOBILE ON BY %s\n\rPOWER ON\n\rMOTOR OFF\n",StaticSmsString,WhoMadeRelayOn);
						sprintf(StaticSmsString,"%s MOTOR CAN'T START BEACUSE 3 PHASE SELECTION ONLY",StaticSmsString);
						StaticSMSSend = 1;
					}
			}
        // WriteonofFile();
			     WriteSettingsFile();
		}

}
void motorof ( char *phoneNumber) {
		if(MakeRealyOn==1)
		{
			OnByTarget = 0;
			MotorStarterTripCount = 0;
			OverAllStarterTrip = 0;
			ActMotorStarterTripTimer =0;
			strcpy(WhoMadeRelayOn,phoneNumber);
			NoAcceptSMS=0;
			MakeRealyOn = 0;	StartByMobile = 0; OnFromMobile = 0;
			livedataflagcount1=0;livedataflag1=1;
			nMoTr.ActMaxRunTimer=0;
			nCYCTimer = NO_TCOND;
			OffMotorByPhone = 1;
			Debug("\n\rMotor OFF \n\r");
			Debug("\n\rSMS SEND NOW\n\r");
			//  strcpy(WhoMadeRelayOn,Recive_Sms_Number);
			//PrvOnOff = 0;
			if(nMSettings.SumpOnOff == 1)
			PrvLoMotorStatus=0;
			PrvUpMotorStatus=0;
			//if(nVaTr.cyclecompleted==1)
			//nDripSettings.startcontrol=1;
			//nVaTr.cyclecompleted=0;
			//nVaTr.no_fbk_flag=0;
			//dripcycledate=0;
			//dripcyclecount=0;
			//nTimerSettings.Driprestartpoweronof=0;
			PreviousTrip = NO_TRIP_FLAG;
			//if(nVaTr.REMTIM<=180)
			//{nVaTr.REMTIM=180;
			// sprintf(buf,"\n\r nVaTr.REMTIM %d on\n\r",nVaTr.REMTIM);
			//}
	
	

			if(PowerCurrentCondition == 1)
			{
				if(nMSettings.gethidesmsonoff == 1)
					sprintf(StaticSmsString,"MOBILE OFF BY : +91%s0\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
				else
					sprintf(StaticSmsString,"MOBILE OFF BY %s\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
				//by ajith	
				//StaticSMSSend = 1;
			}
			else if(checkpower == 2 )
			{
				if (nTimerSettings.AutoStIIOnOff == 0 || Mobile2Phs3Phase == 3)
				{

				 if(nMSettings.gethidesmsonoff == 1)
					 sprintf(StaticSmsString,"MOBILE OFF BY : +91%s0\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
				 else
					sprintf(StaticSmsString,"MOBILE OFF BY %s\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
					//by ajith
				  //StaticSMSSend = 1;
				}

			}
			//WriteonofFile();
			WriteSettingsFile();
		}

}
void checkkeypress(void) {	    
//    if(KEY1==0 && keydebounceflag == 0)
//	 { 
//		  keydebounceflag=1;
//			SubPage = 0;
//			Page = 9;
//			Displaydelay = 20;
//	 }
	  //Debug("\n\r KEY:%d,Page:%d",KEY1,Page);
	  if(KEY1 == 0 && keydebounceflag == 0)
	 { 
		 keydebounceflag=1;
		// Page++;
		 //if(Page>=10) 
      SubPage = 0;		 
			Page = 9;
      Displaydelay = 25;		 
	 }
//	 else if(KEY3 == 0 && keydebounceflag == 0)
//	 { 
//		 keydebounceflag=1;
//		 Page--;
// 		 if(Page<=0)
//			Page = 0;
//	 }
//	 else if(KEY4 == 0 && keydebounceflag == 0 )
//	 {  
//		   keydebounceflag=1;
//		   SetToGreenFlag = 1;
//	 }  
	 
	 /*to change the Keybounce delay modify this value*/
	 if(keydebouncecnt++ >= 2)    
	 {
	   keydebounceflag=0;
		 keydebouncecnt=0;
	 }
	 
	   
}
void print_lcd(volatile uint8_t (*lcd_ptr)[16]) {
	lcd_goto(1,0);
	lcd_puts((uint8_t *)&lcd_ptr[0]);					//prints the first row of 2d					
	lcd_goto(2,0);
  lcd_ptr++;	                           //inc the address to the next row 
	lcd_puts((uint8_t *)lcd_ptr);         //Debug the second row of 2d
}
unsigned int myatoi(char *s) {
        unsigned int a = 0;
        char c;
        while ((c = *s++) != '\0')
		{
			if(c >= '0' && c<='9')
				a = a*10 + (c - '0');
        }
        return a;
}

double myatof( char *s) {
        double a = 0.0;
        int e = 0;
        int c;
        while ((c = *s++) != '\0')
		{
			if(c >= '0' && c<='9')
				a = a*10.0 + (c - '0');
			else
				break;
        }
        if (c == '.')
		{
                while ((c = *s++) != '\0')
				{
					if(c >= '0' && c<='9')
					{
                        a = a*10.0 + (c - '0');
                        e = e-1;
					}
					else
						break;
                }
        }
        if (c == 'e' || c == 'E')
		{
                int sign = 1;
                int i = 0;
                c = *s++;
                if (c == '+')
                        c = *s++;
                else if (c == '-') {
                        c = *s++;
                        sign = -1;
                }
                while (c >= '0' && c<='9')
				{
                        i = i*10 + (c - '0');
                        c = *s++;
                }
                e += i*sign;
        }
        while (e > 0)
		{
                a *= 10.0;
                e--;
        }
        while (e < 0)
		{
                a *= 0.1;
                e++;
        }
        return a;
}
void prodset(void) {                                  /*prodset-program default settings(Factory Settings)*/

	            Debug("\nEntry to prodset\n");            
	            Appmodeon=1;							 
							nTimerSettings.PoScrDlHr=0;
							nTimerSettings.PoScrDlMin=0;
							nTimerSettings.PoScrDlSec=0;
							nMSettings.gethidesmsonoff=0;
							nMSettings.SMSOnOff = 0;
							nMSettings.staticSMSOnOff = 0;
							nMSettings.SfbOnOff = 0;
							//nMSettings.PressureOnOff =0;
							nMSettings.ManualswitchOnOff = 0;
							nMSettings.TankOnOff = 0;
							nMSettings.SumpOnOff = 0;
							nMSettings.DryRunOnOff = 0;
							nMSettings.TargetOnOff = 0;
							nMSettings.VBFOnOff = 0;
							nMSettings.RelayControlOnCall = 0;
							nMSettings.SecOnOf = 0;


							nTimerSettings.POnHr = 0;
							nTimerSettings.POnMin = 0;
							nTimerSettings.POnSec = 0;
							nTimerSettings.SDHr = 0;
							nTimerSettings.SDMin = 0;
							nTimerSettings.SDSec = 0;
							nTimerSettings.SfbHr = 0;
							nTimerSettings.SfbMin = 0;
							nTimerSettings.SfbSec = 0;

							nTimerSettings.DrReOnOf = 0;
							nTimerSettings.DrReHr = 0;
							nTimerSettings.DrReMin = 0;
							nTimerSettings.DrReSec = 0;
							nTimerSettings.DrScOnOf = 0;
							nTimerSettings.DrScHr = 0;
							nTimerSettings.DrScMin = 0;
							nTimerSettings.DrScSec = 0;
							nTimerSettings.MaxRnOnOf = 0;
							nTimerSettings.MaxRnHr = 0;
							nTimerSettings.MaxRnMin = 0;
							nTimerSettings.MaxRnSec = 0;
							nTimerSettings.CycLicOnOf = 0;
							nTimerSettings.CycLicOnHr = 0;
							nTimerSettings.CycLicOnMin = 0;
							nTimerSettings.CycLicOnSec = 0;
							nTimerSettings.CycLicOfHr = 0;
							nTimerSettings.CycLicOfMin = 0;
							nTimerSettings.CycLicOfSec = 0;
							nTimerSettings.RTCOnOf = 0;
								for(i=1;i<5;i++)
							{
							nTimerSettings.RTCOnHr[i] = 0;
							nTimerSettings.RTCOnMin[i] = 0;
							nTimerSettings.RTCOnSec[i] = 0;
							nTimerSettings.RTCOfHr[i] = 0;
							nTimerSettings.RTCOfMin[i] = 0;
							nTimerSettings.RTCOfSec[i] = 0;
							}


							nTimerSettings.ScrDlOnOff = 0;
							nTimerSettings.ScrDlHr = 0;
							nTimerSettings.ScrDlMin = 0;
							nTimerSettings.ScrDlSec = 0;
							nTimerSettings.LowVoltOnOff = 0;
							nTimerSettings.LowVoltII = 0;
							nTimerSettings.LowVoltIII = 0;
							nTimerSettings.HighVoltOnOff = 0;
							nTimerSettings.HighVoltII = 0;
							nTimerSettings.HighVoltIII = 0;
							nTimerSettings.ImbVolt = 0;
							nTimerSettings.RvePhOnoff = 0;
							nTimerSettings.SppOnoff = 0;
							nTimerSettings.CurSppOnOff = 0;
							nTimerSettings.OlOnOff = 0;
							nTimerSettings.OlAmpsII = 0;
							nTimerSettings.OlAmpsIII = 0;
							nTimerSettings.OlScanHr = 0;
							nTimerSettings.OlScanMin = 0;
							nTimerSettings.OlScanSec = 0;

							nTimerSettings.DrAmpsII = 0;
							nTimerSettings.DrAmpsIII = 0;


							//nTimerSettings.AutoStIIOnOff = 0;
							nTimerSettings.AutoStIIIOnOff = 0;
							nTimerSettings.AutoOlDrRstIIOnOff = 0;
							nTimerSettings.AutoDrRunRstIIOnOff=0;
							nTimerSettings.ManualOnOff = 0;

							nTimerSettings.OlRstVolOnoff = 0;
							nTimerSettings.OlRstVol = 0;

							nTimerSettings.DrOccurOnOff = 0;
							nTimerSettings.DrOccurTimHr = 0;
							nTimerSettings.DrOccurTimMin = 0;
							nTimerSettings.DrOccurTimSec = 0;
							nTimerSettings.DrOccurNum = 0;
	
	
							nMSettings.SMSOnOff = 1;
							nMSettings.SfbOnOff = 1;//1
							nMSettings.DryRunOnOff = 0;//1

							nTimerSettings.POnHr = 0;
							nTimerSettings.POnMin = 0;
							nTimerSettings.POnSec = 10;
	
							nTimerSettings.SDHr = 0;
							nTimerSettings.SDMin = 0;
							nTimerSettings.SDSec = 5;
	
							nTimerSettings.SfbHr = 0;
							nTimerSettings.SfbMin = 0;
							nTimerSettings.SfbSec = 20;

							nTimerSettings.DrScOnOf = 1;
							nTimerSettings.DrScHr = 0;
							nTimerSettings.DrScMin = 0;
							nTimerSettings.DrScSec = 20;
							
							nTimerSettings.OlOnOff = 0;
							nTimerSettings.OlScanHr = 0;
							nTimerSettings.OlScanMin = 0;
							nTimerSettings.OlScanSec = 10;

							nTimerSettings.OlAmpsII = 40.0;
							nTimerSettings.OlAmpsIII = 40.0;
							
							nTimerSettings.DrAmpsII = 5;
							nTimerSettings.DrAmpsIII = 5;

							nTimerSettings.ScrDlOnOff = 1;
							nTimerSettings.ScrDlHr = 0;
							nTimerSettings.ScrDlMin = 0;
							nTimerSettings.ScrDlSec = 7;
							
							nTimerSettings.LowVoltOnOff = 0;
							nTimerSettings.LowVoltII = 380;
							nTimerSettings.LowVoltIII = 280;
							
							nTimerSettings.HighVoltOnOff = 0;
							nTimerSettings.HighVoltII = 560;
							nTimerSettings.HighVoltIII = 500;
							
							nTimerSettings.ImbVolt = 40;
							nTimerSettings.RvePhOnoff = 0;
							nTimerSettings.SppOnoff = 0;
							nTimerSettings.CurSppOnOff = 0;
							nTimerSettings.DiffVoltII = 80;
							nTimerSettings.DiffVoltIII = 40;
							nTimerSettings.HiDiffVoltIII = 20;
							nTimerSettings.HiDiffVoltII =20;
							nTimerSettings.CTRonoff = 1;
							nTimerSettings.CTYonoff = 1;
							nTimerSettings.CTBonoff = 1;

							nTimerSettings.DrReHr = 1;
							nTimerSettings.DrReMin = 0;
							nTimerSettings.DrReSec = 0;
              
							nTimerSettings.AutoRst2On = 1;
							nTimerSettings.AutoRstOn = 1;
							nTimerSettings.AutoOlDrRstIIOnOff = 1;
							nTimerSettings.AutoDrRunRstIIOnOff=1;
							nTimerSettings.RPhaseToPhaseFactor = 1.0;
							
							nTimerSettings.pfcOnOff = 0;
							nTimerSettings.pfcvolt = 475;
							nTimerSettings.YPhaseToPhaseFactor = 1.0;
							nTimerSettings.BPhaseToPhaseFactor = 1.0;
							nTimerSettings.R2PhaseToPhaseFactor = 1.15;
							
							Mobile2Phs3Phase = 2;
							nTimerSettings.PoScrDlOnOff = 0;
							nTimerSettings.PoScrDlHr=0;
							nTimerSettings.PoScrDlMin=0;
							nTimerSettings.PoScrDlSec=5;					 
						 
							nMSettings.TankOnOff = 0;	 
							nMSettings.SumpOnOff = 0;	 
							
							limitsmsonof = 1;
							limitsmsset=80;
							
							nTimerSettings.CalRVoltage = 0.625;
							nTimerSettings.CalYVoltage = 0.625;
							nTimerSettings.CalBVoltage = 0.625;
							nTimerSettings.CalRCurrent = 0.69;
							nTimerSettings.CalYCurrent = 0.69;
							nTimerSettings.CalBCurrent = 0.69;
							
							nMSettings.AutoMobileKeyOnOf=1;
							nMSettings.Ph2Ph3SelectOnOf=1;
							nMSettings.ModeSelect=1;  //GSM as default
							nMSettings.responseOnOf=1;							 

						  WriteSettingsFile();
						  WriteTimerSettings();
							ReadTimerSettings();
							ReadSettingsFile();
}

static int  set_data_flash_base(uint32_t u32DFBA) {
    uint32_t   au32Config[2];          /* User Configuration */

    /* Read User Configuration 0 & 1 */
    if (FMC_ReadConfig(au32Config, 2) < 0)
    {
        Debug("\nRead User Config failed!\n");       /* Error message */
        return -1;                     /* failed to read User Configuration */
    }

    /* Check if Data Flash is enabled and is expected address. */
    if ((!(au32Config[0] & 0x1)) && (au32Config[1] == u32DFBA))
        return 0;                      /* no need to modify User Configuration */

    FMC_ENABLE_CFG_UPDATE();           /* Enable User Configuration update. */

    au32Config[0] &= ~0x1;             /* Clear CONFIG0 bit 0 to enable Data Flash */
    au32Config[1] = u32DFBA;           /* Give Data Flash base address  */

    /* Update User Configuration settings. */
    if (FMC_WriteConfig(au32Config, 2) < 0)
        return -1;                     /* failed to write user configuration */

    //Debug("\nSet Data Flash base as 0x%x.\n", DATA_FLASH_TEST_BASE);  /* debug message */

    /* Perform chip reset to make new User Config take effect. */
    SYS->IPRST0 = SYS_IPRST0_CHIPRST_Msk;
    return 0;                          /* success */
}
int ReadSettingsFile(void) {
		char ReadBuf[150]={0};
		//int Tp1,Tp2,Tp3;	 
		char *Pch = NULL;
		int readedlen = 0;	
	 
	
		/*clear the ReadBuf before read from flash*/
		memset(ReadBuf,NULL,sizeof(ReadBuf));
		
		/*Read Flashmemory*/
		memcpy(ReadBuf,(uint32_t *)SETTINGS_FILE_BASE_SADDR,100);
		
		/*check the Read Size,if less than 70 Reset all the parameters*/
		readedlen=strlen(ReadBuf);
		Debug("ReadSettingsFile:%s=%d",ReadBuf,readedlen);
		
		if(readedlen<10)			
			{
				nTimerSettings.SfbHr  = 0;
				nTimerSettings.SfbMin = 0;
				nTimerSettings.SfbSec = 0;
				nMSettings.SMSOnOff = 0;
				nMSettings.staticSMSOnOff = 0;				 	 
				nMSettings.SfbOnOff = 0;				
				nMSettings.ManualswitchOnOff = 0;
				nMSettings.TankOnOff = 0;
				nMSettings.SumpOnOff = 0;
				nMSettings.DryRunOnOff = 0;
				nMSettings.TargetOnOff = 0;
				nMSettings.serviceOnOff = 0;
				nMSettings.pwrvfbOnOf=0;
				nMSettings.VBFOnOff = 0;
				nMSettings.RelayControlOnCall = 0;
				nMSettings.SecOnOf = 0;
				nTimerSettings.pfcOnOff=0;
				nTimerSettings.pfcvolt=0;
				Mobile2Phs3Phase=0;
				limitsmsonof=0;
				//limitsmsset=0;
				DNDSMSFLAG[0]=0;
				DNDSMSFLAG[1]=0;
				DNDSMSFLAG[2]=0;
				DNDSMSFLAG[3]=0;				
				
        return -1;
			}
			else
			{

				Pch = strtok((char *)ReadBuf, (char *)"," );
				StrTokStrVer = 0;
				while( Pch != NULL )
				{
					strcpy(StrTokStr[StrTokStrVer],Pch);
					StrTokStrVer++;
					Pch = strtok( NULL, "," );
				}				
				/*
				for(Tp=0;Tp<=StrTokStrVer;Tp++)			 
				  Debug(buf,"\n\rSt=%s  pos=%d\n\r",StrTokStr[Tp],Tp);	 
				*/
        nMSettings.SMSOnOff              = myatoi(StrTokStr[1]);
				nMSettings.SfbOnOff              = myatoi(StrTokStr[2]);
				nMSettings.ManualswitchOnOff     = myatoi(StrTokStr[3]);
				nMSettings.TankOnOff             = myatoi(StrTokStr[4]);
				nMSettings.SumpOnOff             = myatoi(StrTokStr[5]);
				nMSettings.DryRunOnOff           = myatoi(StrTokStr[6]);
				nMSettings.TargetOnOff           = myatoi(StrTokStr[7]);
				nMSettings.VBFOnOff              = myatoi(StrTokStr[8]);
				nMSettings.RelayControlOnCall    = myatoi(StrTokStr[9]);
				nMSettings.SecOnOf               = myatoi(StrTokStr[10]);
				nTimerSettings.pfcOnOff          = myatoi(StrTokStr[11]);
				nTimerSettings.pfcvolt           = myatoi(StrTokStr[12]);
				Mobile2Phs3Phase				         = myatoi(StrTokStr[13]);
				nMSettings.gethidesmsonoff       = myatoi(StrTokStr[14]);
				nMSettings.staticSMSOnOff        = myatoi(StrTokStr[15]);
				nTimerSettings.SfbHr             = myatoi(StrTokStr[16]);
				nTimerSettings.SfbMin            = myatoi(StrTokStr[17]);
				nTimerSettings.SfbSec            = myatoi(StrTokStr[18]);
				limitsmsonof                     = myatoi(StrTokStr[19]);
				limitsmsset                      = myatoi(StrTokStr[20]);
				nMSettings.serviceOnOff          = myatoi(StrTokStr[21]);
				nMSettings.pwrvfbOnOf            = myatoi(StrTokStr[22]);
				DNDSMSFLAG[0]                    = myatoi(StrTokStr[23]);
				DNDSMSFLAG[1]                    = myatoi(StrTokStr[24]);
				DNDSMSFLAG[2]                    = myatoi(StrTokStr[25]);
				DNDSMSFLAG[3]                    = myatoi(StrTokStr[26]);
				MakeRealyOn                      = myatoi(StrTokStr[27]);
				PrvAutoMobileKey                 = myatoi(StrTokStr[28]);
				Appmodeon                        = myatoi(StrTokStr[29]);
				gprson                           = myatoi(StrTokStr[30]);
				nMSettings.AutoMobileKeyOnOf     = myatoi(StrTokStr[31]);
				nMSettings.Ph2Ph3SelectOnOf      = myatoi(StrTokStr[32]);
				nMSettings.ModeSelect            = myatoi(StrTokStr[33]);
				nMSettings.responseOnOf          = myatoi(StrTokStr[34]);
				
				return 0;
			}
	
}

int WriteSettingsFile(void) {   
   #if 1	
		uint32_t  Addr;
		char settings_buf[500]="";
    uint32_t flash_write_buf[150];
    char ReadBuf[500]={0};
		
	  uint16_t i,j,d=0;
		
	   /* Unlock protected registers */
      SYS_UnlockReg();
	    FMC_Open();                        /* Enable FMC ISP function */	
	   
		 /*The down below enable data flash function is must without this flash access won't run*/		
     /* Enable Data Flash and set base address. */
			if (set_data_flash_base(SETTINGS_FILE_BASE_SADDR) < 0)
			{
					Debug("Failed to set Data Flash base address!\n");          /* error message */
					/* failed to configure Data Flash, aborted */
			}
		
		
	   /*Erasing the flash sector from SETTINGS_FILE_BASE_SADDR,Default sector size is 4KB */
		if (FMC_Erase(SETTINGS_FILE_BASE_SADDR) != 0)            /* Erase page */
		{
				Debug("FMC_Erase SETTINGS_FILE_BASE_SADDR failed!\n");
				return -1;
		}
		else
		{
			/*clear the settings_buf array before copy*/
			memset(settings_buf,NULL,sizeof(settings_buf));
			memset(flash_write_buf,NULL,sizeof(flash_write_buf));
			
			/*copy the settings data to be written on flash ,MS-Motor Settings*/		
			 
			sprintf(settings_buf,"MS,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%03d,%d,%d,%d,%02d,%02d,%02d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%01d,%01d,\n\r",
														nMSettings.SMSOnOff,nMSettings.SfbOnOff,nMSettings.ManualswitchOnOff,nMSettings.TankOnOff,nMSettings.SumpOnOff,
														nMSettings.DryRunOnOff,nMSettings.TargetOnOff ,nMSettings.VBFOnOff,nMSettings.RelayControlOnCall,nMSettings.SecOnOf,
														nTimerSettings.pfcOnOff,nTimerSettings.pfcvolt,Mobile2Phs3Phase,
														nMSettings.gethidesmsonoff,nMSettings.staticSMSOnOff,nTimerSettings.SfbHr,
														nTimerSettings.SfbMin,nTimerSettings.SfbSec,limitsmsonof,limitsmsset,nMSettings.serviceOnOff,
														nMSettings.pwrvfbOnOf,DNDSMSFLAG[0],DNDSMSFLAG[1],DNDSMSFLAG[2],DNDSMSFLAG[3],MakeRealyOn,PrvAutoMobileKey,Appmodeon,
														gprson,nMSettings.AutoMobileKeyOnOf,nMSettings.Ph2Ph3SelectOnOf,nMSettings.responseOnOf,nMSettings.ModeSelect);
			
			 
			
			Debug("\nsettings_buf:%s-len:%d\n",settings_buf,strlen(settings_buf));										
			/*move char arr data to int arr using memcpy*/
			for (i = 0, j = 0; i < sizeof(settings_buf); i += 4, j++)
			{
					memcpy(&flash_write_buf[j], &settings_buf[i], 4);
					//Debug("\nflash_write_buf:%x\n",flash_write_buf[j]);	
			}
			 
			
			/*write the copied data to flash memory word by word*/
			for (Addr = SETTINGS_FILE_BASE_SADDR; Addr < SETTINGS_FILE_BASE_EADDR; Addr += 4)
			{
					if (FMC_Write(Addr,flash_write_buf[d]) != 0)           
					{
							Debug("FMC_Write address 0x%x failed!\n", Addr);
							return -1;
					} 
					d++;
			}   
			/*Read and varify the data from flash,the data we wrote before */
			memcpy(ReadBuf,(uint32_t *)SETTINGS_FILE_BASE_SADDR,400);
			/*Printing it on console for debug purpose*/
			Debug("\nSettings file data after flash write:%s\n",ReadBuf);		
	  }
		FMC_Close();                       /* Disable FMC ISP function */
		
		 /* Lock protected registers */
    SYS_LockReg();
		#endif
		return 0;
}
int ReadTimerSettings(void) {
	char ReadBuf[600]={0};
 // int Tp1,Tp2,Tp3;	 
	char *Pch = NULL;
	int readedlen = 0;	
	
	/*clear the ReadBuf before read from flash*/
	memset(ReadBuf,NULL,sizeof(ReadBuf));
	/*Read Flashmemory*/
	memcpy(ReadBuf,(uint32_t *)TIMER_SETTINGS_FILE_BASE_SADDR,600);
	/*check the Read Size,if less than 70 Reset all the parameters*/
	readedlen=strlen(ReadBuf);
	Debug("ReadTimerSettings:%s=%d",ReadBuf,readedlen);
	if(readedlen < 70)
	{
		nTimerSettings.POnHr = 0;
		nTimerSettings.POnMin = 0;
		nTimerSettings.POnSec = 0;
		nTimerSettings.SDHr = 0;
		nTimerSettings.SDMin = 0;
		nTimerSettings.SDSec = 0;
		nTimerSettings.DrReOnOf = 0;
		nTimerSettings.DrReHr = 0;
		nTimerSettings.DrReMin = 0;
		nTimerSettings.DrReSec = 0;
		nTimerSettings.DrScOnOf = 0;
		nTimerSettings.DrScHr = 0;
		nTimerSettings.DrScMin = 0;
		nTimerSettings.DrScSec = 0;
		nTimerSettings.MaxRnOnOf = 0;
		nTimerSettings.MaxRnHr = 0;
		nTimerSettings.MaxRnMin = 0;
		nTimerSettings.MaxRnSec = 0;
		nTimerSettings.CycLicOnOf = 0;
		nTimerSettings.CycLicOnHr = 0;
		nTimerSettings.CycLicOnMin = 0;
		nTimerSettings.CycLicOnSec = 0;
		nTimerSettings.CycLicOfHr = 0;
		nTimerSettings.CycLicOfMin = 0;
		nTimerSettings.CycLicOfSec = 0;
		nTimerSettings.fertCycLicOfMin=0;
		nTimerSettings.fertCycLicOfSec=0;
		nTimerSettings.fertCycLicOnMin=0;
		nTimerSettings.fertCycLicOnSec=0;
		nTimerSettings.RTCOnOf = 0;
		for(i=1;i<5;i++)
		{
			nTimerSettings.RTCOnHr[i] = 0;
			nTimerSettings.RTCOnMin[i] = 0;
			nTimerSettings.RTCOnSec[i] = 0;
			nTimerSettings.RTCOfHr[i] = 0;
			nTimerSettings.RTCOfMin[i] = 0;
			nTimerSettings.RTCOfSec[i] = 0;
		}
		nTimerSettings.ScrDlOnOff = 0;
		nTimerSettings.ScrDlHr = 0;
		nTimerSettings.ScrDlMin = 0;
		nTimerSettings.ScrDlSec = 0;
		nTimerSettings.PoScrDlOnOff = 0;
		nTimerSettings.PoScrDlHr = 0;
		nTimerSettings.PoScrDlMin = 0;
		nTimerSettings.PoScrDlSec = 0;
		nTimerSettings.LowVoltOnOff = 0;
		nTimerSettings.LowVoltII = 0;
		nTimerSettings.LowVoltIII = 0;
		nTimerSettings.HighVoltOnOff = 0;
		nTimerSettings.HighVoltII = 0;
		nTimerSettings.HighVoltIII = 0;
		nTimerSettings.ImbVolt = 0;
		nTimerSettings.RvePhOnoff = 0;
		nTimerSettings.SppOnoff = 0;
		nTimerSettings.CurSppOnOff = 0;
		nTimerSettings.OlOnOff = 0;
		nTimerSettings.OlAmpsII = 0;
		nTimerSettings.OlAmpsIII = 0;
		nTimerSettings.OlScanHr = 0;
		nTimerSettings.OlScanMin = 0;
		nTimerSettings.OlScanSec = 0;
		nTimerSettings.DrAmpsII = 0;
		nTimerSettings.DrAmpsIII = 0;
		nTimerSettings.calflow2 =0;
		nTimerSettings.calflow3 =0;
		//nTimerSettings.AutoStIIOnOff = 0;
		nTimerSettings.AutoStIIIOnOff = 0;
		nTimerSettings.AutoOlDrRstIIOnOff = 0;
		nTimerSettings.AutoDrRunRstIIOnOff=0;
		nTimerSettings.ManualOnOff = 0;
		nTimerSettings.OlRstVolOnoff = 0;
		nTimerSettings.OlRstVol = 0;
		nTimerSettings.DrOccurOnOff = 0;
		nTimerSettings.DrOccurTimHr = 0;
		nTimerSettings.DrOccurTimMin = 0;
		nTimerSettings.DrOccurTimSec = 0;
		nTimerSettings.DrOccurNum = 0;
		nTimerSettings.DiffVoltII = 0;
		nTimerSettings.DiffVoltIII = 0;
		nTimerSettings.CalRVoltage = 1.0;
		nTimerSettings.CalYVoltage = 1.0;
		nTimerSettings.CalBVoltage = 1.0;
		nTimerSettings.CalRCurrent = 1.0;
		nTimerSettings.CalYCurrent = 1.0;
		nTimerSettings.CalBCurrent = 1.0;
		nTimerSettings.CTRonoff = 1;
		nTimerSettings.CTYonoff = 1;
		nTimerSettings.CTBonoff = 1;
		nTimerSettings.AutoRst2On = 1;
		nTimerSettings.AutoRstOn = 1;
		nTimerSettings.HiDiffVoltII = 0;
		nTimerSettings.HiDiffVoltIII = 0;
		nTimerSettings.lowpress=0;
		nTimerSettings.highpress=0;
		nTimerSettings.lowpressOnOff=0;
		nTimerSettings.highpressOnOff=0;
    return -1;
	}
	else
	{

		Pch = strtok((char *)ReadBuf, (char *)"," );
		StrTokStrVer2 = 0;
		while( Pch != NULL )
		{		 
			strcpy(StrTokStr2[StrTokStrVer2],Pch);
			StrTokStrVer2++;
			Pch = strtok( NULL, "," );		 
		 
		}		
		/* for(int Tp=0;Tp<=StrTokStrVer;Tp++)	{			 
				Debug("\n_Str=%s  pos=%d\n",StrTokStr2[Tp],Tp);
		 } */
				nTimerSettings.POnHr = myatoi(StrTokStr2[1]);
				nTimerSettings.POnMin = myatoi(StrTokStr2[2]);
				nTimerSettings.POnSec = myatoi(StrTokStr2[3]);	 
				nTimerSettings.SDHr  = myatoi(StrTokStr2[4]);
				nTimerSettings.SDMin = myatoi(StrTokStr2[5]);
				nTimerSettings.SDSec = myatoi(StrTokStr2[6]);
				nTimerSettings.DrReOnOf = myatoi(StrTokStr2[7]);
				nTimerSettings.DrReHr = myatoi(StrTokStr2[8]);
				nTimerSettings.DrReMin = myatoi(StrTokStr2[9]);
				nTimerSettings.DrReSec = myatoi(StrTokStr2[10]);

				nTimerSettings.DrScOnOf = myatoi(StrTokStr2[11]);
				nTimerSettings.DrScHr = myatoi(StrTokStr2[12]);
				nTimerSettings.DrScMin = myatoi(StrTokStr2[13]);
				nTimerSettings.DrScSec = myatoi(StrTokStr2[14]);

				nTimerSettings.MaxRnOnOf = myatoi(StrTokStr2[15]);
				nTimerSettings.MaxRnHr = myatoi(StrTokStr2[16]);
				nTimerSettings.MaxRnMin = myatoi(StrTokStr2[17]);
				nTimerSettings.MaxRnSec = myatoi(StrTokStr2[18]);

				nTimerSettings.CycLicOnOf = myatoi(StrTokStr2[19]);
				nTimerSettings.CycLicOnHr  = myatoi(StrTokStr2[20]);
				nTimerSettings.CycLicOnMin  = myatoi(StrTokStr2[21]);
				nTimerSettings.CycLicOnSec  = myatoi(StrTokStr2[22]);

				nTimerSettings.CycLicOfHr = myatoi(StrTokStr2[23]);
				nTimerSettings.CycLicOfMin = myatoi(StrTokStr2[24]);
				nTimerSettings.CycLicOfSec = myatoi(StrTokStr2[25]);

				nTimerSettings.RTCOnOf = myatoi(StrTokStr2[26]);
				nTimerSettings.RTCOnHr[1] = myatoi(StrTokStr2[27]);
				nTimerSettings.RTCOnMin[1] = myatoi(StrTokStr2[28]);
				nTimerSettings.RTCOnSec[1] = myatoi(StrTokStr2[29]);
				nTimerSettings.RTCOfHr[1] = myatoi(StrTokStr2[30]);
				nTimerSettings.RTCOfMin[1] = myatoi(StrTokStr2[31]);
				nTimerSettings.RTCOfSec[1] = myatoi(StrTokStr2[32]);
				nTimerSettings.RTCOnHr[2] = myatoi(StrTokStr2[33]);
				nTimerSettings.RTCOnMin[2] = myatoi(StrTokStr2[34]);
				nTimerSettings.RTCOnSec[2] = myatoi(StrTokStr2[35]);
				nTimerSettings.RTCOfHr[2] = myatoi(StrTokStr2[36]);
				nTimerSettings.RTCOfMin[2] = myatoi(StrTokStr2[37]);
				nTimerSettings.RTCOfSec[2] = myatoi(StrTokStr2[38]);
				nTimerSettings.RTCOnHr[3] = myatoi(StrTokStr2[39]);
				nTimerSettings.RTCOnMin[3] = myatoi(StrTokStr2[40]);
				nTimerSettings.RTCOnSec[3] = myatoi(StrTokStr2[41]);
				nTimerSettings.RTCOfHr[3] = myatoi(StrTokStr2[42]);
				nTimerSettings.RTCOfMin[3] = myatoi(StrTokStr2[43]);
				nTimerSettings.RTCOfSec[3] = myatoi(StrTokStr2[44]);
				nTimerSettings.RTCOnHr[4] = myatoi(StrTokStr2[45]);
				nTimerSettings.RTCOnMin[4] = myatoi(StrTokStr2[46]);
				nTimerSettings.RTCOnSec[4] = myatoi(StrTokStr2[47]);
				nTimerSettings.RTCOfHr[4] = myatoi(StrTokStr2[48]);
				nTimerSettings.RTCOfMin[4] = myatoi(StrTokStr2[49]);
				nTimerSettings.RTCOfSec[4] = myatoi(StrTokStr2[50]);
				nTimerSettings.ScrDlOnOff = myatoi(StrTokStr2[51]);
				nTimerSettings.ScrDlHr = myatoi(StrTokStr2[52]);
				nTimerSettings.ScrDlMin = myatoi(StrTokStr2[53]);
				nTimerSettings.ScrDlSec = myatoi(StrTokStr2[54]);
				nTimerSettings.LowVoltOnOff = myatoi(StrTokStr2[55]);
				nTimerSettings.LowVoltII = myatoi(StrTokStr2[56]);
				nTimerSettings.LowVoltIII = myatoi(StrTokStr2[57]);
				nTimerSettings.HighVoltOnOff = myatoi(StrTokStr2[58]);
				nTimerSettings.HighVoltII = myatoi(StrTokStr2[59]);
				nTimerSettings.HighVoltIII = myatoi(StrTokStr2[60]);
				nTimerSettings.ImbVolt = myatoi(StrTokStr2[61]);
				nTimerSettings.RvePhOnoff = myatoi(StrTokStr2[62]);
				nTimerSettings.SppOnoff = myatoi(StrTokStr2[63]);
				nTimerSettings.CurSppOnOff = myatoi(StrTokStr2[64]);
				nTimerSettings.OlOnOff = myatoi(StrTokStr2[65]);
				nTimerSettings.wrOlAmpsII =myatoi(StrTokStr2[66]);
				nTimerSettings.wrOlAmpsIII =myatoi(StrTokStr2[67]);
				nTimerSettings.OlScanHr = myatoi(StrTokStr2[68]);
				nTimerSettings.OlScanMin = myatoi(StrTokStr2[69]);
				nTimerSettings.OlScanSec = myatoi(StrTokStr2[70]);
				nTimerSettings.wrDrAmpsII =myatoi(StrTokStr2[71]);
				nTimerSettings.wrDrAmpsIII =myatoi(StrTokStr2[72]);
				//nTimerSettings.AutoStIIOnOff = myatoi(StrTokStr2[73]);
				nTimerSettings.AutoStIIIOnOff = myatoi(StrTokStr2[74]);
				nTimerSettings.AutoOlDrRstIIOnOff = myatoi(StrTokStr2[75]);
				nTimerSettings.ManualOnOff = myatoi(StrTokStr2[76]);

				nTimerSettings.OlRstVolOnoff = myatoi(StrTokStr2[77]);
				nTimerSettings.OlRstVol = myatoi(StrTokStr2[78]);

				nTimerSettings.DrOccurOnOff = myatoi(StrTokStr2[79]);
				nTimerSettings.DrOccurTimHr = myatoi(StrTokStr2[80]);
				nTimerSettings.DrOccurTimMin = myatoi(StrTokStr2[81]);
				nTimerSettings.DrOccurTimSec = myatoi(StrTokStr2[82]);
				nTimerSettings.DrOccurNum = myatoi(StrTokStr2[83]);

				nTimerSettings.DiffVoltII = myatoi(StrTokStr2[84]);
				nTimerSettings.DiffVoltIII  = myatoi(StrTokStr2[85]);

				nTimerSettings.wrCalRVoltage =myatoi(StrTokStr2[86]);
				nTimerSettings.wrCalYVoltage =myatoi(StrTokStr2[87]);
				nTimerSettings.wrCalBVoltage =myatoi(StrTokStr2[88]);
				nTimerSettings.wrCalRCurrent =myatoi(StrTokStr2[89]);
				nTimerSettings.wrCalYCurrent =myatoi(StrTokStr2[90]);
				nTimerSettings.wrCalBCurrent =myatoi(StrTokStr2[91]);
				nTimerSettings.CTRonoff = myatoi(StrTokStr2[92]);
				nTimerSettings.CTYonoff = myatoi(StrTokStr2[93]);
				nTimerSettings.CTBonoff = myatoi(StrTokStr2[94]);
				nTimerSettings.AutoRst2On = myatoi(StrTokStr2[95]);
				nTimerSettings.AutoRstOn = myatoi(StrTokStr2[96]);

				nTimerSettings.HiDiffVoltII  = myatoi(StrTokStr2[97]);
				if(nTimerSettings.HiDiffVoltII>300)
				nTimerSettings.HiDiffVoltII = 0;
				nTimerSettings.HiDiffVoltIII = myatoi(StrTokStr2[98]);
				if(nTimerSettings.HiDiffVoltIII>300)
				nTimerSettings.HiDiffVoltIII = 0;

				nTimerSettings.wrRPhaseToPhaseFactor =myatoi(StrTokStr2[99]);
				nTimerSettings.wrYPhaseToPhaseFactor =myatoi(StrTokStr2[100]);
				nTimerSettings.wrBPhaseToPhaseFactor =myatoi(StrTokStr2[101]);
				nTimerSettings.wrR2PhaseToPhaseFactor =myatoi(StrTokStr2[102]);
				nTimerSettings.PoScrDlOnOff = myatoi(StrTokStr2[103]);
				nTimerSettings.PoScrDlHr = myatoi(StrTokStr2[104]);
				nTimerSettings.PoScrDlMin = myatoi(StrTokStr2[105]);
				nTimerSettings.PoScrDlSec = myatoi(StrTokStr2[106]);
				nTimerSettings.AutoDrRunRstIIOnOff =myatoi(StrTokStr2[107]);			
				//nTimerSettings.wrDrAmpsII =myatoi(StrTokStr2[108]);
				//nTimerSettings.wrDrAmpsIII =myatoi(StrTokStr2[109]);
				//nTimerSettings.calflow2=(nTimerSettings.wrDrAmpsII*0.1);
				//nTimerSettings.calflow3=(nTimerSettings.wrDrAmpsIII*0.1);
				//nTimerSettings.wrlowpress=myatoi(StrTokStr2[110]);
				//nTimerSettings.wrhighpress=myatoi(StrTokStr2[111]);
				//nTimerSettings.lowpressOnOff=myatoi(StrTokStr2[112]);
				//nTimerSettings.highpressOnOff=myatoi(StrTokStr2[113]);				
				//nTimerSettings.fertCycLicOfMin=myatoi(StrTokStr2[114]);
				//nTimerSettings.fertCycLicOfSec=myatoi(StrTokStr2[115]);
				//nTimerSettings.fertCycLicOnMin=myatoi(StrTokStr2[116]);
				//nTimerSettings.fertCycLicOnSec=myatoi(StrTokStr2[117]);
								
				nTimerSettings.OlAmpsII =(float)(nTimerSettings.wrOlAmpsII*0.1f);
				nTimerSettings.OlAmpsIII =(float)(nTimerSettings.wrOlAmpsIII*0.1f);
				nTimerSettings.DrAmpsII = (float)(nTimerSettings.wrDrAmpsII*0.1f);
				nTimerSettings.DrAmpsIII =(float)(nTimerSettings.wrDrAmpsIII*0.1f);
				
				nTimerSettings.lowpress=nTimerSettings.wrlowpress*0.1;
				nTimerSettings.highpress=nTimerSettings.wrhighpress*0.1;				

				nTimerSettings.CalRVoltage = (nTimerSettings.wrCalRVoltage*0.0001);
				nTimerSettings.CalYVoltage = (nTimerSettings.wrCalYVoltage*0.0001);
				nTimerSettings.CalBVoltage = (nTimerSettings.wrCalBVoltage*0.0001);
				nTimerSettings.CalRCurrent = (nTimerSettings.wrCalRCurrent*0.0001);
				nTimerSettings.CalYCurrent = (nTimerSettings.wrCalYCurrent*0.0001);
				nTimerSettings.CalBCurrent = (nTimerSettings.wrCalBCurrent*0.0001);
				nTimerSettings.RPhaseToPhaseFactor = (nTimerSettings.wrRPhaseToPhaseFactor*0.0001);
				nTimerSettings.YPhaseToPhaseFactor = (nTimerSettings.wrYPhaseToPhaseFactor*0.0001);
				nTimerSettings.BPhaseToPhaseFactor = (nTimerSettings.wrBPhaseToPhaseFactor*0.0001);
				nTimerSettings.R2PhaseToPhaseFactor = (nTimerSettings.wrR2PhaseToPhaseFactor*0.0001);
			
			  Debug("\n\rCalc,%0.4f,%0.4f,%0.4f\n\r",nTimerSettings.CalRCurrent,nTimerSettings.CalYCurrent,nTimerSettings.CalBCurrent);
						 
			
				if(nTimerSettings.CalRVoltage<=0||nTimerSettings.CalRVoltage>=10)
					nTimerSettings.CalRVoltage = 1.0;
				if(nTimerSettings.CalYVoltage<=0||nTimerSettings.CalYVoltage>=10)
					nTimerSettings.CalYVoltage = 1.0;
				if(nTimerSettings.CalBVoltage<=0||nTimerSettings.CalBVoltage>=10)
					nTimerSettings.CalBVoltage = 1.0;
				if(nTimerSettings.CalRCurrent<=0||nTimerSettings.CalRCurrent>=1000)
					nTimerSettings.CalRCurrent = 1.0;
				if(nTimerSettings.CalYCurrent<=0||nTimerSettings.CalYCurrent>=1000)
					nTimerSettings.CalYCurrent = 1.0;
				if(nTimerSettings.CalBCurrent<=0||nTimerSettings.CalBCurrent>=1000)
					nTimerSettings.CalBCurrent = 1.0;
				if(nTimerSettings.RPhaseToPhaseFactor<=0 || nTimerSettings.RPhaseToPhaseFactor>5)
					nTimerSettings.RPhaseToPhaseFactor = 1.0;
				if(nTimerSettings.YPhaseToPhaseFactor<=0 || nTimerSettings.YPhaseToPhaseFactor>5)
					nTimerSettings.YPhaseToPhaseFactor = 1.0;
				if(nTimerSettings.BPhaseToPhaseFactor<=0 || nTimerSettings.BPhaseToPhaseFactor>5)
					nTimerSettings.BPhaseToPhaseFactor = 1.0;
				if(nTimerSettings.R2PhaseToPhaseFactor<=0 || nTimerSettings.R2PhaseToPhaseFactor>5)
					nTimerSettings.R2PhaseToPhaseFactor = 1.0;

       return 0;
	   }
	
}
int WriteTimerSettings(void) {   
   #if 1	
		uint32_t  Addr;
		char settings_buf[600]="";
		uint32_t flash_write_buf[200];
		char ReadBuf[600]={0};	   	
		uint16_t i,j,d=0;
		
		/* Unlock protected registers */
		SYS_UnlockReg();
		/* Enable FMC ISP function */	
		FMC_Open();                        
		
	   

	   /*Erasing the flash sector from SETTINGS_FILE_BASE_SADDR,Default sector size is 4KB */
		if (FMC_Erase(TIMER_SETTINGS_FILE_BASE_SADDR) != 0)            /* Erase page */
		{
				Debug("FMC_Erase SETTINGS_FILE_BASE_SADDR failed!\n");
				return -1;
		}
		else 
		{
				/*clear the settings_buf array before copy*/
				memset(settings_buf,NULL,sizeof(settings_buf));
				memset(flash_write_buf,NULL,sizeof(flash_write_buf));
				
				/*copy the Motor Timer settings data to be written on flash */		
				 
					memset(settings_buf,NULL,sizeof(settings_buf));
								
				nTimerSettings.wrOlAmpsII =(nTimerSettings.OlAmpsII*10);
				nTimerSettings.wrOlAmpsIII =(nTimerSettings.OlAmpsIII*10);
				nTimerSettings.wrDrAmpsII = (uint16_t)(nTimerSettings.DrAmpsII*10);
				nTimerSettings.wrDrAmpsIII = (uint16_t)(nTimerSettings.DrAmpsIII*10);
				nTimerSettings.wrCalRVoltage = (nTimerSettings.CalRVoltage*10000);
				nTimerSettings.wrCalYVoltage = (nTimerSettings.CalYVoltage*10000);
				nTimerSettings.wrCalBVoltage = (nTimerSettings.CalBVoltage*10000);
				nTimerSettings.wrCalRCurrent = (nTimerSettings.CalRCurrent*10000);
				nTimerSettings.wrCalYCurrent = (nTimerSettings.CalYCurrent*10000);
				nTimerSettings.wrCalBCurrent = (nTimerSettings.CalBCurrent*10000);
				nTimerSettings.wrRPhaseToPhaseFactor = (nTimerSettings.RPhaseToPhaseFactor*10000);
				nTimerSettings.wrYPhaseToPhaseFactor = (nTimerSettings.YPhaseToPhaseFactor*10000);
				nTimerSettings.wrBPhaseToPhaseFactor = (nTimerSettings.BPhaseToPhaseFactor*10000);
				nTimerSettings.wrR2PhaseToPhaseFactor = (nTimerSettings.R2PhaseToPhaseFactor*10000);
				 /*TS-timer settings*/
				sprintf(settings_buf,"TS,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,%02d,",
				
												nTimerSettings.POnHr,
												nTimerSettings.POnMin,
												nTimerSettings.POnSec,
												nTimerSettings.SDHr,
												nTimerSettings.SDMin,
												nTimerSettings.SDSec,
												nTimerSettings.DrReOnOf,
												nTimerSettings.DrReHr,
												nTimerSettings.DrReMin,
												nTimerSettings.DrReSec,
												nTimerSettings.DrScOnOf,
												nTimerSettings.DrScHr,
												nTimerSettings.DrScMin,
												nTimerSettings.DrScSec,
												nTimerSettings.MaxRnOnOf,
												nTimerSettings.MaxRnHr,
												nTimerSettings.MaxRnMin,
												nTimerSettings.MaxRnSec,
												nTimerSettings.CycLicOnOf,
												nTimerSettings.CycLicOnHr,
												nTimerSettings.CycLicOnMin,
												nTimerSettings.CycLicOnSec,
												nTimerSettings.CycLicOfHr,
												nTimerSettings.CycLicOfMin,
												nTimerSettings.CycLicOfSec,
												nTimerSettings.RTCOnOf,
												nTimerSettings.RTCOnHr[1],nTimerSettings.RTCOnMin[1],nTimerSettings.RTCOnSec[1],
												nTimerSettings.RTCOfHr[1],nTimerSettings.RTCOfMin[1],nTimerSettings.RTCOfSec[1],
												nTimerSettings.RTCOnHr[2],nTimerSettings.RTCOnMin[2],nTimerSettings.RTCOnSec[2],
												nTimerSettings.RTCOfHr[2],nTimerSettings.RTCOfMin[2],nTimerSettings.RTCOfSec[2],
												nTimerSettings.RTCOnHr[3],nTimerSettings.RTCOnMin[3],nTimerSettings.RTCOnSec[3],
												nTimerSettings.RTCOfHr[3],nTimerSettings.RTCOfMin[3],nTimerSettings.RTCOfSec[3],
												nTimerSettings.RTCOnHr[4],nTimerSettings.RTCOnMin[4],nTimerSettings.RTCOnSec[4],
												nTimerSettings.RTCOfHr[4],nTimerSettings.RTCOfMin[4],nTimerSettings.RTCOfSec[4]);

				sprintf(settings_buf,"%s%02d,%02d,%02d,%02d,%02d,%03d,%03d,%02d,%03d,%03d,%03d,%02d,%02d,%02d,%02d,%04d,%04d,%02d,%02d,%02d,%04d,%04d,%02d,%02d,%02d,%02d,%02d,%03d,%02d,%02d,%02d,%02d,%02d,%03d,%03d,%05d,%05d,%05d,%05d,%05d,%05d,%02d,%02d,%02d,%d,%d,%03d,%03d,%05d,%05d,%05d,%05d,%02d,%02d,%02d,%02d,%02d,",settings_buf,
								nTimerSettings.ScrDlOnOff,nTimerSettings.ScrDlHr,nTimerSettings.ScrDlMin,nTimerSettings.ScrDlSec,
								nTimerSettings.LowVoltOnOff,nTimerSettings.LowVoltII,nTimerSettings.LowVoltIII,
								nTimerSettings.HighVoltOnOff,nTimerSettings.HighVoltII,nTimerSettings.HighVoltIII,
								nTimerSettings.ImbVolt,nTimerSettings.RvePhOnoff,nTimerSettings.SppOnoff,nTimerSettings.CurSppOnOff,
								nTimerSettings.OlOnOff,nTimerSettings.wrOlAmpsII,nTimerSettings.wrOlAmpsIII,nTimerSettings.OlScanHr,
								nTimerSettings.OlScanMin,nTimerSettings.OlScanSec,nTimerSettings.wrDrAmpsII,nTimerSettings.wrDrAmpsIII,
								nTimerSettings.AutoStIIOnOff,nTimerSettings.AutoStIIIOnOff,nTimerSettings.AutoOlDrRstIIOnOff,nTimerSettings.ManualOnOff,
								nTimerSettings.OlRstVolOnoff,nTimerSettings.OlRstVol,
								nTimerSettings.DrOccurOnOff,nTimerSettings.DrOccurTimHr,nTimerSettings.DrOccurTimMin,nTimerSettings.DrOccurTimSec,nTimerSettings.DrOccurNum,
								nTimerSettings.DiffVoltII,nTimerSettings.DiffVoltIII, nTimerSettings.wrCalRVoltage,nTimerSettings.wrCalYVoltage,nTimerSettings.wrCalBVoltage,
								nTimerSettings.wrCalRCurrent,nTimerSettings.wrCalYCurrent,nTimerSettings.wrCalBCurrent,
								nTimerSettings.CTRonoff,nTimerSettings.CTYonoff,nTimerSettings.CTBonoff,nTimerSettings.AutoRst2On,nTimerSettings.AutoRstOn,
								nTimerSettings.HiDiffVoltII,nTimerSettings.HiDiffVoltIII,nTimerSettings.wrRPhaseToPhaseFactor,nTimerSettings.wrYPhaseToPhaseFactor,
								nTimerSettings.wrBPhaseToPhaseFactor,nTimerSettings.wrR2PhaseToPhaseFactor,
								nTimerSettings.PoScrDlOnOff,nTimerSettings.PoScrDlHr,nTimerSettings.PoScrDlMin,
								nTimerSettings.PoScrDlSec,nTimerSettings.AutoDrRunRstIIOnOff);
				
				 
				
				//Debug("\nsettings_buf:%s-len:%d\n",settings_buf,strlen(settings_buf));										
				/*move char arr data to int arr using memcpy*/
				for (i = 0, j = 0; i < sizeof(settings_buf); i += 4, j++)
				{
					memcpy(&flash_write_buf[j], &settings_buf[i], 4);
					 
				}		 
				
				/*write the copied data to flash memory word by word*/
				for (Addr = TIMER_SETTINGS_FILE_BASE_SADDR; Addr < TIMER_SETTINGS_FILE_BASE_EADDR; Addr += 4)
				{
						if (FMC_Write(Addr,flash_write_buf[d]) != 0)           
						{
								Debug("FMC_Write address 0x%x failed!\n", Addr);
								return -1;
						} 
						d++;
				}   
				
				/*Read and varify the data from flash,the data we wrote before */
				memcpy(ReadBuf,(uint32_t *)TIMER_SETTINGS_FILE_BASE_SADDR,600);
				/*Printing it on console for debug purpose*/
				Debug("\nTimerSettings after flashwrite:%s=len:%d\n",ReadBuf,strlen(settings_buf));		
		}
		/* Disable FMC ISP function */
		FMC_Close();                      

		/* Lock protected registers */
		SYS_LockReg();
		
		#endif
		return 0;
}
void Check_Send_SMS(void) {
	#if 1
          Debug("\n\rTest:%d,%d,%d\n\r",SendSmsToAll,ModemIsReady,nMSettings.SMSOnOff);
				  if(SendSmsToAll == 1 && ModemIsReady == 1 && nMSettings.SMSOnOff == 1)
					{
					       
							unsigned char removeniagara=0;
							if(nMSettings.gethidesmsonoff == 1 )
								{
										//unsigned char Tp10;
										sprintf(buffer,"            ");
										strcpy(StoredPhoneNumber[10],buffer);


										for(Tp=0;Tp<HowManyNumberFound;Tp++)
											{
																	Debug("\n\rStoredPhoneNumber: %s WhoMadeRelayOn: %s\n\r",StoredPhoneNumber[Tp],WhoMadeRelayOn);
																	if((strstr(StoredPhoneNumber[Tp],WhoMadeRelayOn)!=0))
																	{
																			if(Tp==0)
																			{
																				sprintf(buffer,"SMSM");
																				strcpy(StoredPhoneNumber[24],buffer);
																			}
																			else if(Tp==1)
																			{
																				sprintf(buffer,"REG 1");
																				strcpy(StoredPhoneNumber[24],buffer);
																			}
																			else if(Tp==2)
																			{
																				sprintf(buffer,"REG 2");
																				strcpy(StoredPhoneNumber[24],buffer);
																			}
																			else if(Tp==3)
																			{
																				sprintf(buffer,"REG 3");
																				strcpy(StoredPhoneNumber[24],buffer);
																			}
																	}
											}
											if(strstr(StoredPhoneNumber[11],WhoMadeRelayOn)!=0)
											{
												sprintf(buffer,"SERVICE");
												strcpy(StoredPhoneNumber[24],buffer);
											}

							}
							 
								if(NumberOfSmsNeedToSend<20)
								{
								  switchonofflag=0;
									FirstTimeSMS = 0;
									Debug("\n\rFill up now \n\r");									
									limitsmscountsmsm=limitsmscount;
									Debug("\n\rHowManyNumberFound:%d\n\r",HowManyNumberFound);
									//by aj									
									HowManyNumberFound=1;
									
									for(Tpsms=0;Tpsms<=HowManyNumberFound-1;Tpsms++)
									{
                                        
										if(nSTATE_MOTOR_SMS != STATE_NO_MOTOR_SMS)
										{
											switch(nSTATE_MOTOR_SMS)
											{
												case STATE_MOTORON_SMS:
													{

														if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_DEFAULT)
														{

															if(PowerCurrentCondition == 0)
															{
																 sprintf(Buffer1,"AUTO ON \nPOWER ON\nMOTOR ON\n");
																 switchonofflag=1;

																if(WorkingOn3Phas == 1)
																{
																if(Appmodeon==1) {
																	sprintf(Buffer1," %02d001\n",(datetime.tm_sec+2));
																	StatusCode=1;
																}
																else
																sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																if(Appmodeon==1) {
																	sprintf(Buffer1," %02d002\n",(datetime.tm_sec+2));
																	StatusCode=2;
																}
																else
																sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else
															{
															   if(Appmodeon==1) {
																 sprintf(Buffer1," %02d003\n",(datetime.tm_sec+2));
																 StatusCode=3;
																 }
																 else
															   sprintf(Buffer1,"AUTO ON \nPOWER OFF\nMOTOR OFF\n");
																 switchonofflag=1;
																//sprintf(Buffer1,"MOBILE ON BY %s\nPOWER OFF\nMOTOR OFF\n",WhoMadeRelayOn);
															}
														}
														else
														{
															if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_ONDELAY)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF CYCLIC ON TIME");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d004\n",(datetime.tm_sec+2));
																		StatusCode=4;	
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d005\n",(datetime.tm_sec+2));
																		StatusCode=5;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_SWITCH_SMS)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE AUTO MOBILE SWITCH\n");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d006\n",(datetime.tm_sec+2));
																		StatusCode=6;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d007\n",(datetime.tm_sec+2));
																		StatusCode=7;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_GRTC)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF ON GRTC PROGRAM %02d ON TIME",RTCOFFLAG);
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d008\nPROG-%02d\n",(datetime.tm_sec+2),RTCOFFLAG);
																		StatusCode=8;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d009\nPROG-%02d\n",(datetime.tm_sec+2),RTCOFFLAG);
																		StatusCode=9;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}

															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC1)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF ON RTC PROGRAM 1 ON TIME");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d010\nPROG-1\n",(datetime.tm_sec+2));
																	  StatusCode=10;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d011\nPROG-1\n",(datetime.tm_sec+2));
																		StatusCode=11;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC2)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF ON RTC PROGRAM 2 ON TIME");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1)
																		sprintf(Buffer1," %02d010\nPROG-2\n",(datetime.tm_sec+2));
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1)
																		sprintf(Buffer1," %02d011\nPROG-2\n",(datetime.tm_sec+2));
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC3)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF ON RTC PROGRAM 3 ON TIME");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1)
																		sprintf(Buffer1," %02d010\nPROG-3\n",(datetime.tm_sec+2));
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1)
																		sprintf(Buffer1," %02d011\nPROG-3\n",(datetime.tm_sec+2));
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC4)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF ON RTC PROGRAM 4 ON TIME");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1)
																		sprintf(Buffer1," %02d010\nPROG-4\n",(datetime.tm_sec+2));
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1)
																		sprintf(Buffer1," %02d011\nPROG-1\n",(datetime.tm_sec+2));
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_UPPERTANK)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF UPPER TANK EMPTY");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d012\n",(datetime.tm_sec+2));
																		StatusCode=12;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d013\n",(datetime.tm_sec+2));
																		StatusCode=13;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_LOWERTANK)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF SUMP TANK FULL");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d014\n",(datetime.tm_sec+2));
																		StatusCode=14;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d015\n",(datetime.tm_sec+2));
																		StatusCode=15;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RESTARTTIMER)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF RESTART TIMER");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d016\n",(datetime.tm_sec+2)); 
																		StatusCode=16;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d017\n",(datetime.tm_sec+2));
																		StatusCode=17;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else if(nSTATE_MOTOR_ON_SMS == STATE_MOTOR_ON_TARGET)
															{
																sprintf(Buffer1,"MOTOR ON BECAUSE OF TARGET");
																if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d018\n",(datetime.tm_sec+2));
																		StatusCode=18;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
																}
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d019\n",(datetime.tm_sec+2));
																		StatusCode=19;
																	}
																	else
																		sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
																}
															}
															else
															{
																sprintf(Buffer1,"Error Sednd this to Service DEPT nSTATE_MOTOR_ON_SMS = %d",nSTATE_MOTOR_ON_SMS);

															}
														}
													}
													break;
												case STATE_MOTOROF_SMS:
													{
														Debug("STATE_MOTOROF_SMS case");														
														if(PowerCurrentCondition == 0)
														{
															if(WorkingOn3Phas == 1)
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d020\n",(datetime.tm_sec+2));
																		StatusCode=20;
																	}
																	else
																		sprintf(Buffer1,"AUTO OFF \nPOWER ON\nMOTOR OFF\n");
																
																  switchonofflag=1;
																}
																//sprintf(Buffer1,"MOBILE OFF BY %s\nPOWER ON\nMOTOR OFF\n",WhoMadeRelayOn);
																else
																{
																	if(Appmodeon==1) {
																		sprintf(Buffer1," %02d021\n",(datetime.tm_sec+2));
																		StatusCode=21;
																	}
																	else
																		sprintf(Buffer1,"AUTO OFF \nPOWER ON\nMOTOR OFF\n");
																  switchonofflag=1;

																}


														}
														else
														{
														      if(Appmodeon==1) {
																		sprintf(Buffer1," %02d079\n",(datetime.tm_sec+2));
																		StatusCode=79;
																	 }
																else
																	sprintf(Buffer1,"AUTO OFF \nPOWER OFF\nMOTOR OFF\n");
																
																switchonofflag=1;
															//sprintf(Buffer1,"MOBILE OFF BY %s\nPOWER OFF\nMOTOR OFF\n",WhoMadeRelayOn);

														}
													}
													break;
												case STATE_MOTOR_STARTER_TRIP_SMS:

													sprintf(Buffer1,"MOTOR OFF BECAUSE OF STARTER TRIP:%d  \n",(OverAllStarterTrip+1));

													if(WorkingOn3Phas == 1)
													{
														//if(OverAllStarterTrip>3) OverAllStarterTrip=3;
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d101\nTRIP-%d\n",(datetime.tm_sec+2),(OverAllStarterTrip+1));
															StatusCode=101;
														}
														else
															sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
													}
													else
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d102\nTRIP-%d\n",(datetime.tm_sec+2),(OverAllStarterTrip+1));
															StatusCode=102;
														}
														else
															sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
													}
													break;
												/*case STATE_MOTOR_UPPERTANK_TRIP_SMS:
                                                    {
                                                    if(Appmodeon==1)
													sprintf(Buffer1,"%02d22\n",(datetime.tm_sec+2));
													else
													sprintf(Buffer1,"MOTOR OFF BECAUSE OF PRESSURE SWITCH OPEN");
													}
													break;*/
													case STATE_MOTOR_UPPERTANK_TRIP_SMS:
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d022\n",(datetime.tm_sec+2));   //Previously %02d103
															StatusCode=22;
														}
														else
															sprintf(Buffer1,"MOTOR OFF BECAUSE OF UPPER TANK FULL");    //dg_changed from MOTOR OFF BECAUSE OF PRESSURE SWITCH OPEN
													}
													break;
												case STATE_MOTOR_LOWERTANK_TRIP_SMS:
                                                    {
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d023\n",(datetime.tm_sec+2));
															StatusCode=23;
														}
														else
															sprintf(Buffer1,"MOTOR OFF BECAUSE OF SUMP TANK EMPTY");
													}
													break;

												case STATE_MOTOR_ON_SWITCH_TRIP_SMS:
												    {
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d024\n",(datetime.tm_sec+2));
															StatusCode=24;
														}
														else
															sprintf(Buffer1,"MOTOR OFF BECAUSE MOBILE AUTO SWITCH");
													}
													break;
												case STATE_MOTOR_DRYRUN_TRIP_SMS:
													{
														sprintf(Buffer1,"MOTOR OFF BECAUSE DRY RUN\n");
														if(WorkingOn3Phas == 1)
														{

															if(Appmodeon==1) {
																sprintf(Buffer1," %02d025\n",(datetime.tm_sec+2));
																StatusCode=25;
															}
															else
															{
																//FloatroString1Dig(TpS1tr,nTimerSettings.DrAmpsIII);
																sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE\n",Buffer1);
															}
														sprintf(Buffer1,"%sSET AMPS = %0.1f\n",Buffer1,nTimerSettings.DrAmpsIII);
														}
														else
														{
															 if(Appmodeon==1) {
																	sprintf(Buffer1," %02d026\n",(datetime.tm_sec+2));
																	StatusCode=26;
															 }
															else
															{
															//FloatroString1Dig(TpS1tr,nTimerSettings.DrAmpsII);
																sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE\n",Buffer1);
															}
														sprintf(Buffer1,"%sSET AMPS = %0.1f\n",Buffer1,nTimerSettings.DrAmpsII);
														}
														if(WhichPhaseHaveingProblem == 1)
														{
															//FloatroString1Dig(TpS1tr,TripCurrent);
																sprintf(Buffer1,"%sRC = %0.1f\n",Buffer1,TripCurrent);
														}
														else if(WhichPhaseHaveingProblem == 2)
														{
															//FloatroString1Dig(TpS1tr,TripCurrent);
																sprintf(Buffer1,"%sYC = %0.1f\n",Buffer1,TripCurrent);
														}
														else if(WhichPhaseHaveingProblem == 3)

														{
															//FloatroString1Dig(TpS1tr,TripCurrent);
																sprintf(Buffer1,"%sBC = %0.1f\n",Buffer1,TripCurrent);
														}

													}
													break;
												case STATE_MOTOR_CYCLIC_TRIP_SMS:
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d027\n",(datetime.tm_sec+2));
															StatusCode=27;
														}
														else												{
															sprintf(Buffer1,"MOTOR OFF BECAUSE CYCLIC OFF TIME");
													break;
												case STATE_MOTOR_MAX_TRIP_SMS:
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d104\n",(datetime.tm_sec+2));															
															StatusCode=104;
														}
												    else
															sprintf(Buffer1,"MOTOR OFF BECAUSE MAX TIMER REACHED");
													break;					 

												case STATE_MOTOR_RTCOF1_TRIP_SMS:
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d030\nPROG-1\n",(datetime.tm_sec+2));
															StatusCode=30;
														}
												    else
															sprintf(Buffer1,"MOTOR OFF BECAUSE RTC PROGRAM 1 OFF TIMER REACHED");
													break;
												case STATE_MOTOR_RTCOF2_TRIP_SMS:
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d030\nPROG-2\n",(datetime.tm_sec+2));
															StatusCode=30;
														}
												    else
															sprintf(Buffer1,"MOTOR OFF BECAUSE RTC PROGRAM 2 OFF TIMER REACHED");
													break;
												case STATE_MOTOR_RTCOF3_TRIP_SMS:
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d030\nPROG-3\n",(datetime.tm_sec+2));
															StatusCode=30;
														}
														else
															sprintf(Buffer1,"MOTOR OFF BECAUSE RTC PROGRAM 3 OFF TIMER REACHED");
													break;
												case STATE_MOTOR_RTCOF4_TRIP_SMS:
															if(Appmodeon==1) {
																sprintf(Buffer1," %02d030\nPROG-4\n",(datetime.tm_sec+2));
																StatusCode=30;
															}
															else
																sprintf(Buffer1,"MOTOR OFF BECAUSE RTC PROGRAM 4 OFF TIMER REACHED");
													break;
												case STATE_MOTOR_TRIP_OVERLOAD_SMS:
													{
														sprintf(Buffer1,"MOTOR OFF BECAUSE OVER LOAD\n");
														if(WorkingOn3Phas == 1)
														{

															if(Appmodeon==1) {
																sprintf(Buffer1," %02d105\n",(datetime.tm_sec+2));
																StatusCode=105;
															}
															else
															{
																//FloatroString1Dig(TpS1tr,nTimerSettings.DrAmpsII);
																sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE\n",Buffer1);
															}
															sprintf(Buffer1,"%sSET AMPS = %0.1f\n",Buffer1,nTimerSettings.OlAmpsIII);

														}
														else
														{
															if(Appmodeon==1) {
																sprintf(Buffer1," %02d106\n",(datetime.tm_sec+2));
																StatusCode=106;
															}
															else
															{
															//	FloatroString1Dig(TpS1tr,nTimerSettings.DrAmpsII);
																sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE\n",Buffer1);
															}
															sprintf(Buffer1,"%sSET AMPS = %0.1f\n",Buffer1,nTimerSettings.OlAmpsII);
															}
															if(WhichPhaseHaveingProblem == 1)
															{
																	//	FloatroString1Dig(TpS1tr,TripCurrent);
																	sprintf(Buffer1,"%sRC = %0.1f\n",Buffer1,TripCurrent);
															}
															else if(WhichPhaseHaveingProblem == 2)
															{
																	//	FloatroString1Dig(TpS1tr,TripCurrent);
																	sprintf(Buffer1,"%sYC = %0.1f\n",Buffer1,TripCurrent);
															}
															else if(WhichPhaseHaveingProblem == 3)
															{
																	//	FloatroString1Dig(TpS1tr,TripCurrent);
																	sprintf(Buffer1,"%sBC = %0.1f\n",Buffer1,TripCurrent);
															}
																												}
													}
													break;
													 
												case STATE_MOTOR_TRIP_SPP_SMS:
													{
															if(Appmodeon==1) {
																sprintf(Buffer1," %02d107\n",(datetime.tm_sec+2));
																StatusCode=107;
															}
															else
																sprintf(Buffer1,"MOTOR OFF BECAUSE SINGLE PHASEING\n");
															sprintf(Buffer1,"%sIMB VOLT = %0.0f\n SET IMB VOLT = %03d",Buffer1,VSPPImbalanceVoltage,nTimerSettings.ImbVolt);

													}
													break;
												case STATE_MOTOR_TRIP_REVERSEPHASE_SMS:
													{
															if(Appmodeon==1) {
																sprintf(Buffer1," %02d108\n",(datetime.tm_sec+2));
																StatusCode=108;
															}
													    else
														sprintf(Buffer1,"MOTOR OFF BECAUSE REVERSE PHASE");
													}
													break;
												case STATE_MOTOR_TRIP_CURRENTSPP_SMS:
													{
														sprintf(Buffer1,"MOTOR OFF BECAUSE CURRENT SENSEING SPP\n");
														if(Appmodeon==1) {
													    sprintf(Buffer1," %02d109\n",(datetime.tm_sec+2));
															StatusCode=109;
														}

														switch(CSPPValue)
														{
															case 1:
																sprintf(Buffer1,"%sRC LESS\n",Buffer1);
																break;
															case 2:
																sprintf(Buffer1,"%sYC LESS\n",Buffer1);
																break;
															case 3:
																sprintf(Buffer1,"%sBC LESS\n",Buffer1);
																break;
															case 4:
																sprintf(Buffer1,"%sRC AND YC BOTH DIFF MORE THAN 50%\n",Buffer1);
																break;
															case 5:
																sprintf(Buffer1,"%sYC AND BC BOTH DIFF MORE THAN 50%\n",Buffer1);
																break;
															default:
																sprintf(Buffer1,"%sYC AND BC BOTH DIFF MORE THAN 50%\n",Buffer1);;
																break;
														}
													}
													break;
												case STATE_MOTOR_TRIP_LOWVOLTAGE_SMS:
													{
															sprintf(Buffer1,"MOTOR OFF LOW VOLT\n");
															if(WorkingOn3Phas == 1)
															{
																if(Appmodeon==1)
																{
																	sprintf(Buffer1,"%02d110\n",(datetime.tm_sec+2));
																	StatusCode=110;
																/* else
																{ */

																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltIII,nTimerSettings.DiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltIII,nTimerSettings.DiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltIII,nTimerSettings.DiffVoltIII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}
																else
																{

																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%sRUNING AT 3PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltIII,nTimerSettings.DiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%sRUNING AT 3PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltIII,nTimerSettings.DiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%sRUNING AT 3PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltIII,nTimerSettings.DiffVoltIII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}
															}
															else
															{
																if(Appmodeon==1)
																{
																	StatusCode=111;
																	sprintf(Buffer1,"%02d111\n",(datetime.tm_sec+2));
																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltII,nTimerSettings.DiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%s2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltII,nTimerSettings.DiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltII,nTimerSettings.DiffVoltII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}
																else
																{

																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%sRUNING AT 2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltII,nTimerSettings.DiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%sRUNING AT 2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltII,nTimerSettings.DiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%sRUNING AT 2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.LowVoltII,nTimerSettings.DiffVoltII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}


															}
														}
													break;
												case STATE_MOTOR_TRIP_HIGHVOLTAGE_SMS:
												   {
															sprintf(Buffer1,"MOTOR OFF HIGH VOLT\n");
															if(WorkingOn3Phas == 1)
															{
																if(Appmodeon==1)
																{
																	StatusCode=112;
																	sprintf(Buffer1,"%02d112\n",(datetime.tm_sec+2));
																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltIII,nTimerSettings.HiDiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltIII,nTimerSettings.HiDiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltIII,nTimerSettings.HiDiffVoltIII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}
																
																
																else
																{

																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%sRUNING AT 3PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltIII,nTimerSettings.HiDiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%sRUNING AT 3PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltIII,nTimerSettings.HiDiffVoltIII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%sRUNING AT 3PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltIII,nTimerSettings.HiDiffVoltIII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}
															}
															else
															{
																if(Appmodeon==1)
																{
																	StatusCode=113;
																	sprintf(Buffer1,"%02d113\n",(datetime.tm_sec+2));
																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltII,nTimerSettings.HiDiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltII,nTimerSettings.HiDiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%s\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltII,nTimerSettings.HiDiffVoltII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																	
																}
																else
																{

																	if(WhichPhaseHaveingProblem == 1)
																	{
																		sprintf(Buffer1,"%sRUNING AT 2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nRY VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltII,nTimerSettings.HiDiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 2)
																	{
																		sprintf(Buffer1,"%sRUNING AT 2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nYB VOLT = %03.0f\n",Buffer1,
																				nTimerSettings.HighVoltII,nTimerSettings.HiDiffVoltII,TripVoltage);
																	}
																	else if(WhichPhaseHaveingProblem == 3)
																	{
																		sprintf(Buffer1,"%sRUNING AT 2PH\nSET VOLT = %03d\n  DIFF VOLT = %03d\nBR VOLT = %03.0f\n",Buffer1,
																		        nTimerSettings.HighVoltII,nTimerSettings.HiDiffVoltII,TripVoltage);
																	}						
																	else
																	{
																		sprintf(Buffer1,"No Voltage\n");
																	}
																}


															}
														}

													break;
												case STATE_MOTOROF_3PHASE_ONLY_SMS:
												{
													sprintf(Buffer1,"MOTOR CAN'T START BEACUSE 3 PHASE SELECTION ONLY\n");
												}
												break;
												case STATE_STGIII_SMS:
													{
														sprintf(Buffer1,"3 Phase Current Set\n");
														if(nMSettings.DryRunOnOff == 1)
															sprintf(Buffer1,"%sDRYRUN SCAN ON\n",Buffer1);
														else
															sprintf(Buffer1,"%sDRYRUN SCAN OFF\n",Buffer1);
															FloatroString1Dig((char*)TpS1tr,nTimerSettings.DrAmpsIII);
														sprintf(Buffer1,"%sDRY RUN AMPS FOR 3 PHASE = %s\n",Buffer1,TpS1tr);

														if(nTimerSettings.OlOnOff == 1)
															sprintf(Buffer1,"%sOVER LOAD SCAN ON\n",Buffer1);
														else
															sprintf(Buffer1,"%sOVER LOAD SCAN OFF",Buffer1);
														FloatroString1Dig((char*)TpS1tr,nTimerSettings.OlAmpsIII);
														sprintf(Buffer1,"%sOVER LOAD AMPS FOR 3 PHASE = %s\n",Buffer1,TpS1tr);


													//	sprintf(Buffer1,"%sDRY RUN SCAN TIME = %02d:%02d:%02d\n",Buffer1,nTimerSettings.DrScHr,nTimerSettings.DrScMin,nTimerSettings.DrScSec);
													//	sprintf(Buffer1,"%sOVER LOAD SCAN TIME = %02d:%02d:%02d\n",Buffer1,nTimerSettings.OlScanHr,nTimerSettings.OlScanMin,nTimerSettings.OlScanSec);
													}
													break;
												case STATE_STGII_SMS:
													{
														sprintf(Buffer1,"2 Phase Current Set\n");
														if(nMSettings.DryRunOnOff == 1)
															sprintf(Buffer1,"%sDRYRUN SCAN ON\n",Buffer1);
														else
															sprintf(Buffer1,"%sDRYRUN SCAN OFF\n",Buffer1);
															FloatroString1Dig((char*)TpS1tr,nTimerSettings.DrAmpsII);
														sprintf(Buffer1,"%sDRY RUN AMPS FOR 2 PHASE = %s\n",Buffer1,TpS1tr);

														if(nTimerSettings.OlOnOff == 1)
															sprintf(Buffer1,"%sOVER LOAD SCAN ON\n",Buffer1);
														else
															sprintf(Buffer1,"%sOVER LOAD SCAN OFF",Buffer1);
														 FloatroString1Dig((char*)TpS1tr,nTimerSettings.OlAmpsIII);
														sprintf(Buffer1,"%sOVER LOAD AMPS FOR 2 PHASE = %s\n",Buffer1,TpS1tr);

													//	sprintf(Buffer1,"%sDRY RUN SCAN TIME = %02d:%02d:%02d\n",Buffer1,nTimerSettings.DrScHr,nTimerSettings.DrScMin,nTimerSettings.DrScSec);
													//	sprintf(Buffer1,"%sOVER LOAD SCAN TIME = %02d:%02d:%02d\n",Buffer1,nTimerSettings.OlScanHr,nTimerSettings.OlScanMin,nTimerSettings.OlScanSec);
													}
													break;
												default:
												{
													sprintf(Buffer1,"UnKnown Please send this to Customer Support Error : nSTATE_MOTOR_SMS = %d",nSTATE_MOTOR_SMS);

												}
												break;

											}
										}
										else if(STATE_SENDSMS != STATE_NO_SMS)
										{
											switch(STATE_SENDSMS)
											{
												case STATE_SMSON_SMS:
												{
													if(nMSettings.SMSOnOff == 1)
														sprintf(Buffer1,"SMS ON");
													else
														sprintf(Buffer1,"SMS OFF");
												}
												break;												 
												case STATE_LIMIT_SMSON_SMS:
												{
													if(limitsmsonof == 1)
														sprintf(Buffer1,"SMS LIMIT ON");
													else
														sprintf(Buffer1,"SMS LIMIT OFF");
												}
												break;

												case STATE_stSMSON_SMS:
												{
													if(nMSettings.staticSMSOnOff == 1)
														sprintf(Buffer1,"STATICSMS ON");
													else
														sprintf(Buffer1,"STATICSMS OFF");
												}
												break;
												case STATE_RESP_SMS:
												{
													if(nMSettings.responseOnOf == 1)
														sprintf(Buffer1,"RESPONSE ON");
													else
														sprintf(Buffer1,"RESPONSE OFF");
												}
												break;
//												case STATE_canSMSON_SMS:
//												{
//													if(nMSettings.canSMSOnOff == 1)
//														sprintf(Buffer1,"DELAY TIME VALVE ON OFF FUNCTION ON");
//													else
//														sprintf(Buffer1,"DELAY TIME VALVE ON OFF FUNCTION OFF");
//												}
//												break;
//												case STATE_sampleSMSON_SMS:
//												{
//													if(nMSettings.sampleSMSOnOff == 1)
//														sprintf(Buffer1,"SAMPLE SMS ON");
//													else
//														sprintf(Buffer1,"SAMPLE SMS OFF");
//												}
//												break;
//												case STATE_dataSMSON_SMS:
//												{
//													if(nMSettings.dataSMSOnOff == 1)
//														sprintf(Buffer1,"DATA SMS ON");
//													else
//														sprintf(Buffer1,"DATA SMS OFF");
//												}
//												break;

												case STATE_gethidesmson_SMS:
												{
													if(nMSettings.gethidesmsonoff == 1)
														sprintf(Buffer1,"NAME SMS ON");
													else
														sprintf(Buffer1,"NAME SMS OFF");
												}
												break;
												case STATE_SFB_SMS:
												{
													if(nMSettings.SfbOnOff == 1)
														sprintf(Buffer1,"STARTER FEEDBACK ON");
													else
														sprintf(Buffer1,"STARTER FEEDBACK OFF");
												}
												break;
//												case STATE_PRESSURE_SMS:
//												{
//													if(nMSettings.PressureOnOff == 1)
//														sprintf(Buffer1,"PRESSURE SCAN ON");
//													else
//														sprintf(Buffer1,"PRESSURE SCAN OFF");

//												}
//												break;
												case STATE_MANUALSWITCH_SMS:
												{
													if(nMSettings.ManualswitchOnOff == 1)
														sprintf(Buffer1,"MANUALSWITCH SCAN ON");
													else
														sprintf(Buffer1,"MANUALSWITCH SCAN OFF");

												}
												break;
												case STATE_TANK_SMS:
												{
													if(nMSettings.TankOnOff == 1)
														sprintf(Buffer1,"TANK LEVEL SCAN ON");
													else
														sprintf(Buffer1,"TANK LEVEL SCAN OFF");

												}
												break;
												case STATE_SUMP_SMS:
												{
													if(nMSettings.SumpOnOff == 1)
														sprintf(Buffer1,"SUMP LEVEL SCAN ON");
													else
														sprintf(Buffer1,"SUMP LEVEL SCAN OFF");

												}
												break;
//												case STATE_SUMP_RST_SMS:
//												{
//													if(nMSettings.SumprstOnOff == 1)
//														sprintf(Buffer1,"SUMP RESTART ON");
//													else
//													if(nMSettings.SumprstOnOff == 0)
//														sprintf(Buffer1,"SUMP RESTART OFF");
//												}
//												break;
												case STATE_DRYRUN_SMS:
												{
													if(nMSettings.DryRunOnOff == 1)
														sprintf(Buffer1,"DRYRUN SCAN ON");
													else
														sprintf(Buffer1,"DRYRUN SCAN OFF");

												}
												break;
												case STATE_SECONOF_SMS:
												{
													if(nMSettings.SecOnOf == 1)
														sprintf(Buffer1,"SECURITY ON");
													else
														sprintf(Buffer1,"SECURITY OFF");

												}
												break;
												case STATE_TARGET_SMS:
												{
													if(nMSettings.TargetOnOff == 1)
														sprintf(Buffer1,"TARGET CALL ON");
													else
														sprintf(Buffer1,"TARGET CALL OFF");
												}
												break;
												case STATE_PWRVFB_SMS:
												{
													if(nMSettings.pwrvfbOnOf== 1)
														sprintf(Buffer1,"POWER VFB ON\n");
													else
														sprintf(Buffer1,"POWER VFB OFF\n");
												}
												break;

												case STATE_VFB_SMS:
												{
													if(nMSettings.VBFOnOff== 1)
														sprintf(Buffer1,"VOICE FEEDBACK ON");
													else
														sprintf(Buffer1,"VOICE FEEDBACK OFF");
												}
												break;
												case STATE_ONDELAY_SMS:
												{
													sprintf(Buffer1,"ON DELAY = %02d:%02d:%02d",nTimerSettings.POnHr,nTimerSettings.POnMin,nTimerSettings.POnSec);
												}
												break;
												case STATE_SDDELAY_SMS:
												{
													sprintf(Buffer1,"STAR DELTA DELAY = %02d:%02d:%02d",nTimerSettings.SDHr,nTimerSettings.SDMin,nTimerSettings.SDSec);
												}
												break;
												case STATE_SFBDELAY_SMS:
												{
													sprintf(Buffer1,"STARTER FEEDBACK DELAY = %02d:%02d:%02d",nTimerSettings.SfbHr,nTimerSettings.SfbMin,nTimerSettings.SfbSec);
												}
												break;
												case STATE_DRRSTONOF_SMS:
												{
													if(nTimerSettings.DrReOnOf == 1)
														sprintf(Buffer1,"DRYRUN RESTART ON");
													else
														sprintf(Buffer1,"DRYRUN RESTART OFF");
												}
												break;
												case STATE_DRRST_SMS:
												{
													sprintf(Buffer1,"DRYRUN RESTART TIME=%02d:%02d:%02d",nTimerSettings.DrReHr,nTimerSettings.DrReMin,nTimerSettings.DrReSec);
												}
												break;
												case STATE_DRSCANONOF_SMS:
												{
													if(nTimerSettings.DrScOnOf == 1)
														sprintf(Buffer1,"DRYRUN SCAN ON");
													else
														sprintf(Buffer1,"DRYRUN SCAN OFF");
												}
												break;
												case STATE_DRSCAN_SMS:
												{
													sprintf(Buffer1,"DRYRUN SCAN TIME=%02d:%02d:%02d",nTimerSettings.DrScHr,nTimerSettings.DrScMin,nTimerSettings.DrScSec);
												}
												break;
												case STATE_MAXTIMONOF_SMS:
												{
													if(nTimerSettings.MaxRnOnOf == 1)
														sprintf(Buffer1,"MAXIMUM RUN TIMER ON");
													else
														sprintf(Buffer1,"MAXIMUM RUN TIMER OFF");
												}
												break;
												case STATE_MAXTIM_SMS:
												{
													sprintf(Buffer1,"MAXIMUM RUN TIMER=%02d:%02d:%02d",nTimerSettings.MaxRnHr,nTimerSettings.MaxRnMin,nTimerSettings.MaxRnSec);
												}
												break;
												case STATE_CYCLICONOF_SMS:
												{
													if(nTimerSettings.CycLicOnOf == 1)
														sprintf(Buffer1,"CYCLIC TIMER ON\n");
													else
														sprintf(Buffer1,"CYCLIC TIMER OFF\n");
													sprintf(Buffer1,"%sCYCLIC ON TIMER=%02dH:%02dM\n",Buffer1,nTimerSettings.CycLicOnHr,nTimerSettings.CycLicOnMin);

													sprintf(Buffer1,"%sCYCLIC OF TIMER=%02dH:%02dM",Buffer1,nTimerSettings.CycLicOfHr,nTimerSettings.CycLicOfMin);
												}
												break;
												case STATE_FOTA_SMS:
												{
													sprintf(Buffer1,"FOTA UPDATION FAILED"); 
 													
												}
												break;
//												case STATE_MQTT_STATUS_SMS:
//												{  
//												    if(MqttInitStatus==1)
//													sprintf(Buffer1,"MQTT CONNECTED"); 
//													else
//													sprintf(Buffer1,"MQTT DISCONNECTED"); 
// 													
//												}
//												break;										 
 
												case STATE_VLIMITSMSSET_SMS:		//valve start from on time sms
												{
													sprintf(Buffer1,"V49 SET SMS LIMIT = %03d\n",limitsmsset);
													if(limitsmsonof == 1)
														sprintf(Buffer1,"%sSMS LIMIT ON\n",Buffer1);
													else
														sprintf(Buffer1,"%sSMS LIMIT OFF\n",Buffer1);


												}
												break;

												case STATE_LIMITSMSSET_SMS:		//valve start from on time sms
												{
													sprintf(Buffer1,"SET SMS LIMIT =%03d\n",limitsmsset);
													if(limitsmsonof == 1)
														sprintf(Buffer1,"%sSMS LIMIT ON\n",Buffer1);
													else
														sprintf(Buffer1,"%sSMS LIMIT OFF\n",Buffer1);

												}
												break;
												 
												case STATE_RTCONOF_SMS:
												{
													if(nTimerSettings.RTCOnOf == 1)
														sprintf(Buffer1,"REAL TIME CLOCK ON");
													else
														sprintf(Buffer1,"REAL TIME CLOCK OFF");
												}
												break;
												case STATE_RTCTIMON1_SMS:
												{
													sprintf(Buffer1,"RTC1 ON= %02dH:%02dM\n",nTimerSettings.RTCOnHr[1],nTimerSettings.RTCOnMin[1]);

													sprintf(Buffer1,"%sRTC1 OFF= %02dH:%02dM",Buffer1,nTimerSettings.RTCOfHr[1],nTimerSettings.RTCOfMin[1]);
												}
												break;
												case STATE_RTCTIMON2_SMS:
												{
													sprintf(Buffer1,"RTC2 ON= %02dH:%02dM\n",nTimerSettings.RTCOnHr[2],nTimerSettings.RTCOnMin[2]);

													sprintf(Buffer1,"%sRTC2 OFF= %02dH:%02dM",Buffer1,nTimerSettings.RTCOfHr[2],nTimerSettings.RTCOfMin[2]);
												}
												break;
												case STATE_RTCTIMON3_SMS:
												{
													sprintf(Buffer1,"RTC3 ON= %02dH:%02dM\n",nTimerSettings.RTCOnHr[3],nTimerSettings.RTCOnMin[3]);

													sprintf(Buffer1,"%sRTC3 OFF= %02dH:%02dM",Buffer1,nTimerSettings.RTCOfHr[3],nTimerSettings.RTCOfMin[3]);
												}
												break;
												case STATE_RTCTIMON4_SMS:
												{
													sprintf(Buffer1,"RTC4 ON= %02dH:%02dM\n",nTimerSettings.RTCOnHr[4],nTimerSettings.RTCOnMin[4]);

													sprintf(Buffer1,"%sRTC4 OFF= %02dH:%02dM",Buffer1,nTimerSettings.RTCOfHr[4],nTimerSettings.RTCOfMin[4]);
												}
												break;
												case STATE_DATETIME_SMS:
												{													 
													sprintf(Buffer1,"DATE=%02d/%02d/%04d \n TIME=%02d:%02d:%02d \n STORED 4G AG4 BSD PCGv%s",datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,Version);//DSV6.3F
												}
												break;												 
												case STATE_SCRDLONOF_SMS:
												{
													if(nTimerSettings.ScrDlOnOff == 1)
														sprintf(Buffer1,"SCR TIMER ON");
													else
														sprintf(Buffer1,"SCR TIMER OFF");

												}
												break;
												case STATE_POSCRDLONOF_SMS:
												{
													if(nTimerSettings.PoScrDlOnOff == 1)
														sprintf(Buffer1,"SCR DELAY TIMER ON");
													else
														sprintf(Buffer1,"SCR DELAY TIMER OFF");

												}
												break;
												case STATE_SCRDEL_SMS:
												{
													sprintf(Buffer1,"SCR TIMER  = %02d:%02d:%02d",nTimerSettings.ScrDlHr,nTimerSettings.ScrDlMin,nTimerSettings.ScrDlSec);
												}
												break;
												case STATE_POSCRDEL_SMS:
												{
													sprintf(Buffer1,"SCR TIMER  = %02d:%02d:%02d",nTimerSettings.PoScrDlHr,nTimerSettings.PoScrDlMin,nTimerSettings.PoScrDlSec);
												}
												break;
												case STATE_LOWVOLTONOFF_SMS:
												{
													if(nTimerSettings.LowVoltOnOff == 1)
														sprintf(Buffer1,"LOW VOLTAGE SCAN ON");
													else
														sprintf(Buffer1,"LOW VOLTAGE SCAN OFF");

												}
												break;
												case STATE_LOWVOLTII_SMS:
												{
													sprintf(Buffer1,"LOW VOLTAGE TRIP FOR 2 PHASE = %03d",nTimerSettings.LowVoltII);
												}
												break;
												case STATE_LOWVOLTIII_SMS:
												{
													sprintf(Buffer1,"LOW VOLTAGE TRIP FOR 3 PHASE = %03d",nTimerSettings.LowVoltIII);
												}
												break;
												case STATE_HIGHVOLTONOFF_SMS:
												{
													if(nTimerSettings.HighVoltOnOff == 1)
														sprintf(Buffer1,"HIGH VOLTAGE SCAN ON");
													else
														sprintf(Buffer1,"HIGH VOLTAGE SCAN OFF");

												}
												break;
												case STATE_HIGHVOLTII_SMS:
												{
													sprintf(Buffer1,"HIGH VOLTAGE TRIP FOR 2 PHASE = %03d",nTimerSettings.HighVoltII);
												}
												break;
												case STATE_HIGHVOLTIII_SMS:
												{
													sprintf(Buffer1,"HIGH VOLTAGE TRIP FOR 3 PHASE = %03d",nTimerSettings.HighVoltIII);
												}
												break;
												case STATE_IMBVOLT_SMS:
												{
													sprintf(Buffer1,"IMBALANCE VOLTAGE = %03d",nTimerSettings.ImbVolt);
												}
												break;
												case STATE_PFCVOLT_SMS:
												{
													sprintf(Buffer1,"SET PFC VOLTAGE = %03d",nTimerSettings.pfcvolt);
												}
												break;
												case STATE_REVPHASE_SMS:
												{
													if(nTimerSettings.RvePhOnoff == 1)
														sprintf(Buffer1,"REVERSE PHASE SCAN ON");
													else
														sprintf(Buffer1,"REVERSE PHASE SCAN OFF");

												}
												break;
												case STATE_CURSPP_SMS:
												{
													if(nTimerSettings.CurSppOnOff == 1)
														sprintf(Buffer1,"CURRENT SPP SCAN ON");
													else
														sprintf(Buffer1,"CURRENT SPP SCAN OFF");

												}
												break;
												case STATE_SPP_SMS:
												{
													if(nTimerSettings.SppOnoff == 1)
														sprintf(Buffer1,"VOLTAGE SENSING SPP ON");
													else
														sprintf(Buffer1,"VOLTAGE SENSING SPP OFF");

												}
												break;
												case STATE_CALFLOWII_SMS:
												{
													//FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
													sprintf(Buffer1,"CALCULATED FLOW SET FOR 2 PHASE = %03.01f",nTimerSettings.calflow2);
												}
												break;
												case STATE_CALFLOWIII_SMS:
												{
													//FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
													sprintf(Buffer1,"CALCULATED FLOW SET FOR 3 PHASE = %03.01f",nTimerSettings.calflow3);
												}
												break;
												case STATE_DRAMPII_SMS:
												{
													//FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
													sprintf(Buffer1,"DRY RUN AMPS FOR 2 PHASE = %03.01f",nTimerSettings.DrAmpsII);
												}
												break;
												case STATE_DRAMPIII_SMS:
												{
												    //FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
													sprintf(Buffer1,"DRY RUN AMPS FOR 3 PHASE = %03.01f",nTimerSettings.DrAmpsIII);
												}
												break;
												case STATE_OLINOFF_SMS:
												{
													if(nTimerSettings.OlOnOff == 1)
														sprintf(Buffer1,"OVER LOAD SCAN ON");
													else
														sprintf(Buffer1,"OVER LOAD SCAN OFF");

												}
												break;
                                                case STATE_LOWPRESSONOF_SMS:
												{
													if(nTimerSettings.lowpressOnOff == 1)
														sprintf(Buffer1,"LOW PRESSURE SCAN ON");
													else
														sprintf(Buffer1,"LOW PRESSURE SCAN OFF");

												}
												break;
												case STATE_HIGHPRESSONOF_SMS:
												{
													if(nTimerSettings.highpressOnOff == 1)
														sprintf(Buffer1,"HIGH PRESSURE SCAN ON");
													else
														sprintf(Buffer1,"HIGH PRESSURE SCAN OFF");

												}
												break;
												case STATE_LOWPRESS_SMS:
												{
												 //FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
													sprintf(Buffer1,"SET LOW PRESSURE = %02.01f",nTimerSettings.lowpress);
												}
												break;
												case STATE_HIGHPRESS_SMS:
												{
												 //FloatroString1Di g(TpStr,nTimerSettings.OlAmpsII);
													sprintf(Buffer1,"SET HIGH PRESSURE = %02.01f",nTimerSettings.highpress);
												}
												break;
												case STATE_OLAMPSII_SMS:
												{
												 //FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
													sprintf(Buffer1,"OVER LOAD AMPS FOR 2 PHASE = %03.01f",nTimerSettings.OlAmpsII);
												}
												break;
												case STATE_OLAMPSIII_SMS:
												{
												    //FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
													sprintf(Buffer1,"OVER LOAD AMPS FOR 3 PHASE = %03.01f",nTimerSettings.OlAmpsIII);
												}
												break;
												case STATE_OLSCAN_SMS:
												{
													sprintf(Buffer1,"OVER LOAD SCAN TIME = %02d:%02d:%02d",nTimerSettings.OlScanHr,nTimerSettings.OlScanMin,nTimerSettings.OlScanSec);

												}
												break;
												case STATE_AUTOSTII_SMS:
												{
													if(nTimerSettings.AutoStIIOnOff == 1)
														sprintf(Buffer1,"II PHASE ON");
													else
														sprintf(Buffer1,"II PHASE OFF");

												}
												break;
												case STATE_AUTOSTIII_SMS:
												{
													if(nTimerSettings.AutoStIIIOnOff == 1)
														sprintf(Buffer1,"MOBILE SET 3 PHASE ON ");
													else
														sprintf(Buffer1,"MOBILE SET 3 PHASE OFF");

												}
												break;
												case STATE_AUTOOLDRRST_SMS:
												{
													if(nTimerSettings.AutoOlDrRstIIOnOff == 1)
														sprintf(Buffer1,"OVER LOAD RESET ON");
													else
														sprintf(Buffer1,"OVER LOAD RESET OFF");

												}
												break;
												case STATE_AUTODRRUNRST_SMS:
												{
													if(nTimerSettings.AutoDrRunRstIIOnOff == 1)
														sprintf(Buffer1,"DRY RUN RESET ON");
													else
														sprintf(Buffer1,"DRY RUN RESET OFF");

												}
												break;
												case STATE_POWERFACTOR_SMS:
												{
													if(nTimerSettings.pfcOnOff==1)
														sprintf(Buffer1,"POWER FACTOR CORRECTION ON");
													else
														sprintf(Buffer1,"POWER FACTOR CORRECTION OFF");

												}
												break;
												case STATE_MANULONOF_SMS:
												{
													if(nTimerSettings.ManualOnOff == 1)
														sprintf(Buffer1,"MANUAL ON ");
													else
														sprintf(Buffer1,"MANUAL OFF");

												}
												break;
												case STATE_OLRSTVOLONOFF_SMS:
												{
													if(nTimerSettings.OlRstVolOnoff == 1)
														sprintf(Buffer1,"OL RESTART VOLTAGE ON");
													else
														sprintf(Buffer1,"OL RESTART VOLTAGE OFF");

												}
												break;
												case STATE_OLRSTVOL_SMS:
												{
													sprintf(Buffer1,"OL RESTART VOLTAGE = %03d",nTimerSettings.OlRstVol);
												}
												break;
												case STATE_DROCCONOFF_SMS:
												{
													if(nTimerSettings.DrOccurOnOff == 1)
														sprintf(Buffer1,"DRY RUN OCCURANCE SCAN ON");
													else
														sprintf(Buffer1,"DRY RUN OCCURANCE SCAN OFF");

												}
												break;
												case STATE_DROCCTIM_SMS:
												{
													sprintf(Buffer1,"DRY RUN OCCURANCE TIME = %02d:%02d:%02d",nTimerSettings.DrOccurTimHr,nTimerSettings.DrOccurTimMin,nTimerSettings.DrOccurTimSec);
												}
												break;
												case STATE_DROCCNUM_SMS:
												{
													sprintf(Buffer1,"NUMBER OF DRY RUN OCCURANCE  = %03d",nTimerSettings.DrOccurNum);
												}
												break;
												case STATE_DIFFVOLTII_SMS:
												{
													sprintf(Buffer1,"DIFFERENCE LOW VOLTAGE FOR 2 PHASE = %03d\n",nTimerSettings.DiffVoltII );
												}
												break;
												case STATE_DIFFVOLTIII_SMS:
												{
													sprintf(Buffer1,"DIFFERENCE LOW VOLTAGE FOR 3 PHASE = %03d\n",nTimerSettings.DiffVoltIII );
												}
												break;											 
												case STATE_CTRON_SMS:
												{
													sprintf(Buffer1,"CT R SENSING ON\n\r");
												}
												break;
												case STATE_CTROF_SMS:
												{
													sprintf(Buffer1,"CT R SENSING OFF\n\r");
												}
												break;
												case STATE_CTYON_SMS:
												{
													sprintf(Buffer1,"CT Y SENSING ON\n\r");
												}
												break;
												case STATE_CTYOF_SMS:
												{
													sprintf(Buffer1,"CT Y SENSING OFF\n\r");
												}
												break;
												case STATE_CTBON_SMS:
												{
													sprintf(Buffer1,"CT B SENSING ON\n\r");
												}
												break;
												case STATE_CTBOF_SMS:
												{
													sprintf(Buffer1,"CT B SENSING OFF\n\r");
												}
												break;
												case STATE_SERVICE_SMS:
												{
												if(nMSettings.gethidesmsonoff == 1)
												sprintf(Buffer1,"SERVICE NUMBER REG. DONE\n ");
												else
												sprintf(Buffer1,"SERVICE NUMBER REG. DONE\n NUMBER=%s",ServiceNumber);
												}
												break;
												case STATE_AUTORST2ONOFF_SMS:
												{
													if(nTimerSettings.AutoRst2On == 1)
														sprintf(Buffer1,"AUTO RESET 2 ON");
													else
														sprintf(Buffer1,"AUTO RESET 2 OFF");

												}
												break;
												case STATE_AUTORSTONOFF_SMS:
												{
													if(nTimerSettings.AutoRstOn == 1)
														sprintf(Buffer1,"MOBILE RESET ON");
													else
														sprintf(Buffer1,"MOBILE RESET OFF");

												}
												break;
												case STATE_HIDIFFVOLTII_SMS:
												{
													sprintf(Buffer1,"DIFFERENCE HIGH VOLTAGE FOR 2 PHASE = %03d\n",nTimerSettings.HiDiffVoltII );

												}
												break;
												case STATE_HIDIFFVOLTIII_SMS:
												{
													sprintf(Buffer1,"DIFFERENCE HIGH VOLTAGE FOR 3 PHASE = %03d\n",nTimerSettings.HiDiffVoltIII );
												}
												break;
												default:
												{
													sprintf(Buffer1,"UnKnown Please send this to Customer Support Error : STATE_SENDSMS = %d",STATE_SENDSMS);
												}
												break;
											}
										}
										//else if(PowerOnSms == 1)
										//else if((PowerOnSms == 1) && (creg_reset_flag==0))
										
											/*Power OnOff SMS*/
											else if(PowerOnSms == 1)
											{
											/* if(creg_reset_flag==0)
											{ */
											checkpower=Check2Phase();
											if(checkpower == 3)
											{
													if(MakeRealyOn == 1 && nTimerSettings.AutoRstOn ==1)
													{
															if(Appmodeon==1) { 
																sprintf(Buffer1," %02d031\n",(datetime.tm_sec+2));
																StatusCode=31;
															}
															else
																sprintf(Buffer1,"AUTO ON \n POWER ON WITH 3 PHASE");
													}
													else if(MakeRealyOn == 1 && nTimerSettings.AutoRstOn ==0)
													{
															if(Appmodeon==1) {
																sprintf(Buffer1," %02d032\n",(datetime.tm_sec+2));
																StatusCode=32;
															}
															else
																sprintf(Buffer1,"AUTO OFF \n POWER ON WITH 3 PHASE\n AUTO RESET OFF");
													}
													else
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d033\n",(datetime.tm_sec+2));
															StatusCode=33;
														}
														else
															sprintf(Buffer1,"AUTO OFF \n POWER ON WITH 3 PHASE");
													}
											}
											else
											{
													if(MakeRealyOn == 1 && nTimerSettings.AutoRstOn ==1)
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d034\n",(datetime.tm_sec+2));
															StatusCode=34;
														}
														else
															sprintf(Buffer1,"AUTO ON \n POWER ON WITH 2 PHASE");
													}
													else if(MakeRealyOn == 1 && nTimerSettings.AutoRstOn ==0)
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d035\n",(datetime.tm_sec+2));
															StatusCode=35;
														}
														else
															sprintf(Buffer1,"AUTO OFF \n POWER ON WITH 2 PHASE\n AUTO RESET OFF");
													}
													else
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d036\n",(datetime.tm_sec+2));
															StatusCode=36;
														}
														else
															sprintf(Buffer1,"AUTO OFF \n POWER ON WITH 2 PHASE");  //dg_changed  1 space removed before power
													}
											}
											sprintf(Buffer1,"%s\nR=%03.0f;",Buffer1,nCurretnCond.RVoltage);
											sprintf(Buffer1,"%sY=%03.0f;",Buffer1,nCurretnCond.YVoltage);   //dg_changed  removed \n
											sprintf(Buffer1,"%sB=%03.0fV\n",Buffer1,nCurretnCond.BVoltage);  //dg_changed  1 space removed after v
											value = nMoTr.ActofpowerRunTimer;
											TpHr = value/3600;
											value = value%3600;
											TpMin = value/60;
											value = value%60;
											TpSec = value;
											if(Appmodeon==1)
											sprintf(Buffer1,"%sS=%d\nPOF TIM=%02d:%02d:%02d",Buffer1,CSQ,TpHr,TpMin,TpSec);
											// sprintf(Buffer1,"%sS=%d;G=%d;W=%d;\nPOF TIM=%02d:%02d:%02d",Buffer1,CSQ,CGATT,WIFI,TpHr,TpMin,TpSec);
											else
											sprintf(Buffer1,"%sPOF TIM=%02d:%02d:%02d",Buffer1,TpHr,TpMin,TpSec);
										//	}
										}										
										else if(PowerOnSms == 2)
										{ 									        
												if(MakeRealyOn == 1 && nTimerSettings.AutoRstOn ==1)
												{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d037\n",(datetime.tm_sec+2));
															StatusCode=37;
														}
														else
														sprintf(Buffer1,"POWER OFF \n AUTO ON \n MOTOR OFF\n");
												}
												else if(MakeRealyOn == 1 && nTimerSettings.AutoRstOn ==0)
												{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d038\n",(datetime.tm_sec+2));
															StatusCode=38;
														}
														else
														sprintf(Buffer1,"POWER OFF \n AUTO OFF \n MOTOR OFF\n AUTOE RESET OFF");
												}
												else
												{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d039\n",(datetime.tm_sec+2));
															StatusCode=39;
														}
														else
														sprintf(Buffer1,"POWER OFF \n AUTO OFF \n MOTOR OFF");
												}
												//nMoTr.ActonpowerRunTimer;
												value = nMoTr.ActonpowerRunTimer;
												TpHr = value/3600;
												value = value%3600;
												TpMin = value/60;
												value = value%60;
												TpSec = value;
												sprintf(Buffer1,"%s\nPON TIM=%02d:%02d:%02d",Buffer1,TpHr,TpMin,TpSec); 											 
											 
										}
										else if(CallOnOfVer == 1)
										{
											sprintf(Buffer1,"CALL RECEIVE ON");
										}
										else if(CallOnOfVer == 2)
										{
											sprintf(Buffer1,"CALL RECEIVE OFF");
										}
										else if(SMS30MinStatus == 1)
										{
											checkpower=Check2Phase();
											sprintf(Buffer1,"AUTO ON \n\rPOWER ON\n\rMOTOR ON\n\r");
											if(checkpower == 3)
											{
												sprintf(Buffer1,"%sMOTOR STARTED WITH 3 PHASE",Buffer1);
											}
											else
											{
												sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE",Buffer1);
											}
										}
										else if(RegxSmsSend == 1)
										{
											sprintf(Buffer1,"%s",SendSMSString);
										}
										else if(MakeRealyOn == 1)
										{
											if(PowerCurrentCondition == 0)
											{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d040\n",(datetime.tm_sec+2));
															StatusCode=40;
														}
														else
														sprintf(Buffer1,"AUTO ON \nPOWER ON\nMOTOR OFF\n");
														switchonofflag=1;
														// sprintf(Buffer1,"MOBILE ON BY %s\nPOWER ON\nMOTOR OFF\n",WhoMadeRelayOn);
											}
											else
											{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d041\n",(datetime.tm_sec+2));
															StatusCode=41;
														}
														else
														sprintf(Buffer1,"AUTO ON \nPOWER OFF\nMOTOR OFF\n");
														switchonofflag=1;
														//sprintf(Buffer1,"MOBILE ON BY %s\nPOWER OFF\nMOTOR OFF\n",WhoMadeRelayOn);
											}
										}
										else if(MakeRealyOn == 0)
										{
											if(PowerCurrentCondition == 0)
											{
												if(Appmodeon==1) {
													sprintf(Buffer1," %02d042\n",(datetime.tm_sec+2));
													StatusCode=42;
												}
												else
												sprintf(Buffer1,"MOTOR OFF \nPOWER ON\nMOTOR OFF\n");
												switchonofflag=1;
												  // sprintf(Buffer1,"MOTOR OFF BY %s\nPOWER ON\nMOTOR OFF\n",WhoMadeRelayOn);										
											}

											else
											{
												if(Appmodeon==1) {
													sprintf(Buffer1," %02d043\n",(datetime.tm_sec+2));
													StatusCode=43;
												}
												else
												sprintf(Buffer1,"MOTOR OFF \nPOWER OFF\nMOTOR OFF\n");
												switchonofflag=1;

										//	sprintf(Buffer1,"MOTOR OFF BY %s\nPOWER OFF\nMOTOR OFF\n",WhoMadeRelayOn);

											}
										}
										else
										{
											Debug("\n\rNo SMS Found SO Exit\n\r"); 
											break;
										}									 
										Debug("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);									 
										if(strstr(SmsNumber[Tpsms],"*") != 0)
										{

										}
										else if (strstr(SmsNumber[Tpsms],"#") != 0)
										{

										}
										else if (CheckVoliedPhone(SmsNumber[Tpsms]) == 0)
										{

										}
										else if (((strstr(SmsNumber[Tpsms],StoredPhoneNumber[0]) && (strlen(StoredPhoneNumber[0])>5)) != 0) && DNDSMSFLAG[0]==1)
										{

										}
										else if (((strstr(SmsNumber[Tpsms],StoredPhoneNumber[1])&& (strlen(StoredPhoneNumber[1])>5)) != 0) && DNDSMSFLAG[1]==1)
										{

										}
										else if (((strstr(SmsNumber[Tpsms],StoredPhoneNumber[2])&& (strlen(StoredPhoneNumber[2])>5)) != 0) && DNDSMSFLAG[2]==1)
										{

										}
										else if (((strstr(SmsNumber[Tpsms],StoredPhoneNumber[3])&& (strlen(StoredPhoneNumber[3])>5)) != 0) && DNDSMSFLAG[3]==1)
										{

										}
										else
										{

											runtime(); 
											if(nMSettings.gethidesmsonoff == 1 && switchonofflag==1   )
											{
												sprintf("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);											
												sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nOPERATED BY:%s\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,StoredPhoneNumber[10],MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
											}

											else if(nMSettings.gethidesmsonoff == 0 && switchonofflag==1)
											{
												Debug("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);											
												sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nOPERATED BY:%s\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,WhoMadeRelayOn,MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
											}
											else
											{
													Debug("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);
													if(removeniagara==0)
													{												
														sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
													}
													else
														sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
 
											}

											sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsnumber,"%s",SmsNumber[Tpsms]);    //DG_CHANGED
											//sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsnumber,"%s%s",StoredPhoneSmscode[Tpsms],SmsNumber[Tpsms]);
											Debug("\n\r+++++++++++++++SmsStrNumber[%d].Smsstr = %s++++++++++\n\r",NumberOfSmsNeedToSend,SmsStrNumber[NumberOfSmsNeedToSend].Smsstr);
										  sprintf(SmsTCPStrNumber[NumberOfSmsNeedToSend].SmsTCPstr,"");
											NumberOfSmsNeedToSend++;
											limitsmscount++;
										}

									}
									Debug("\n\rSER:%d,%d\n\r",ServiceNumberFound,nMSettings.serviceOnOff );
									
									if(ServiceNumberFound == 1 && nMSettings.serviceOnOff==1)
									{
									   if (CheckVoliedPhone(ServiceNumber) == 0)
										{

										}
										/* else if (strstr(ServiceNumber,StoredPhoneNumber[11]) != 0)
										{

										}*/
										else
										{
														#if _RTC
														ReadDateTime();                            /*Reading Date and Time*/
														#endif
														runtime();
			 

														if(nMSettings.gethidesmsonoff == 1 && switchonofflag==1)
														{
																Debug("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);											 
																sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nOPERATED BY:%s\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,StoredPhoneNumber[10],MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
														}

														else if(nMSettings.gethidesmsonoff == 0 && switchonofflag==1)
														{
																Debug("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);											
																sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nOPERATED BY:%s\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,WhoMadeRelayOn,MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
														}
														else
														{
																Debug("\n\r+++++++++++++++SmsNumber[Tpsms] = %s++++++++++\n\r",SmsNumber[Tpsms]);
															
																if(removeniagara==0)
																{    
																	sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);
																}  
																else
																	sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsstr,"%s\nDATE=%02d/%02d/%04d \nTIME=%02d:%02d:%02d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,RunTimerhr,RunTimermin,RunTimersec,limitsmscount,limitsmsset);

														}

														sprintf((char *)SmsStrNumber[NumberOfSmsNeedToSend].Smsnumber,"%s%s",StoredPhoneSmscode[11],ServiceNumber);
														sprintf(SmsTCPStrNumber[NumberOfSmsNeedToSend].SmsTCPstr,"");
														limitsmscount++;
														NumberOfSmsNeedToSend++;
                    }
							}


							sprintf(SMS_BUF,"%s\nDATE=%02d/%02d/%04d\nTIME=%02d:%02d:%02d\nFLO:%d\nM TIM=%02ld:%02ld:%02ld-%03d/%03d\n\r",(char *)Buffer1,datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,MRunflow,RunTimerhr,RunTimermin,RunTimersec,limitsmscountsmsm,limitsmsset);
							////eat_send_msg_to_user(EAT_USER_0, EAT_USER_2, EAT_FALSE, 4, "SMST", EAT_NULL);
							}
							NumberOfSMSSend = 20;
							SendSmsToAll = 0;
							ThisSMSisNotPowerFault = 0;
							NeedToSendSMSCall = 0;
							PowerOnSms = 0;
							//AllSmsSendDone = 1;
							SMS30MinStatus = 0;
							CallOnOfVer = 0;
							RegxSmsSend = 0;
							PowerOffSMS = 0;
							STATE_SENDSMS = STATE_NO_SMS;
							nSTATE_MOTOR_SMS = STATE_NO_MOTOR_SMS;
							nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
						}
						else if(ModemIsReady == 1 && nMSettings.SMSOnOff == 0)
						{
							NumberOfSMSSend = 20;
							SendSmsToAll = 0;
							ThisSMSisNotPowerFault = 0;
							NeedToSendSMSCall = 0;
							PowerOnSms = 0;
						    // AllSmsSendDone = 1;
							SMS30MinStatus = 0;
							CallOnOfVer = 0;
							RegxSmsSend = 0;
							PowerOffSMS = 0;
							STATE_SENDSMS = STATE_NO_SMS;
							nSTATE_MOTOR_SMS = STATE_NO_MOTOR_SMS;
							NumberOfSmsAllreadySend = NumberOfSmsNeedToSend = 0;    
							SendSMS = 0;                                            
						}
						
	#endif					
}
void Power_event_check(void) {
	
	#if 1
			if(started_firsttime == 0)
			{
				HowManySoundToPlay = 0;
				HowManySoundPlayed = 0;
				PlaySound = 0;
				//aj 	PlayFeedbackSound();
				HowManySoundToPlay = 0;
				HowManySoundPlayed = 0;
				PlaySound = 0;
				started_firsttime = 1;
				power_on_flag_count=1;
			}
			else
			{
				uint8_t pinlevel;
				//SC_GPIOReturnCode pinlevel;
				// sAPI_GpioSetDirection(SPP_PIN,SC_GPIO_IN_PIN);
				//iret = sAPI_GpioGetValue(SPP_PIN);
				//pinlevel= iret;	
				
				/*Raeding Power pin status*/
				pinlevel =POWER_PIN; 
				if(nMSettings.ndebugonof==1)					
				Debug("\n\rPower Pin=%d\n\r",pinlevel);			 
				if(cpbrsearchend == 1 || cpbrsearchend == 0)
				{
					if(pinlevel == 0)
					{
						if(SmsSendOntimer == 0)
						{
							RecheckPinCounter++;
							Debug("RecheckPinCounter is %d",RecheckPinCounter);                                            
							if(RecheckPinCounter>=20)
							{
								RecheckPinCounter = 0;
								if(NumberFound==1 && HowManyNumberFound>0)    									 
								{													 
									if(PowerIsThere!=0 && PowerCurrentCondition!=1)
									{
										CallErrorDelay = 0;
										PowerCondCall = 1;
									}
									MotorStarterTripCount = 0;
									OverAllStarterTrip = 0;
									ActMotorStarterTripTimer =0;
									SendSmsToAll = 1;
									SmsSendOntimer = 1;
									PowerOnSms = 2;
									//skipfbk=0;
									PowerIsThere = 0;
									NoAcceptSMS=0;
									nMoTr.ActofpowerRunTimer=0;
									SendLowVoltageHighVoltage =0;
									SendSPPLowVoltageHighVoltage = 0;
									spplowhighvoldelay=0;
									PowerCurrentCondition = 1;
									PingHighSmsSendOntimer = 0;
									PingHighRecheckPinCounter = 0;
									livedataflagcount1=0;
									livedataflag1=1;
									nCurretnCond.RVoltage = 0;
									nCurretnCond.YVoltage =0;
									nCurretnCond.BVoltage = 0;
									nCurretnCond.RYVoltage = 0;
									nCurretnCond.YBVoltage = 0;
									nCurretnCond.BRVoltage = 0;
									nCurretnCond.Rcurrent =0;
									nCurretnCond.Bcurrent = 0;
									nCurretnCond.Ycurrent = 0;
									//if(nVaTr.REMTIM<=180)   //dg_check
									//{nVaTr.REMTIM=180;
									//Debug("\n\r nVaTr.REMTIM %d on\n\r",nVaTr.REMTIM);}													 
									//if(nMSettings.motor4ctrlonof>=1)
									//valvetimernlightcounter=0;   //dg_added
								  //firstvalenlightsmsonof=1;	 //dg_added
								}
							}
						}
						else
							RecheckPinCounter = 0;
					}
					else
					{                                      
						if(PingHighSmsSendOntimer == 0)
						{											 
							PingHighRecheckPinCounter++;
							if(PingHighRecheckPinCounter>=30)
							{   										      
								PingHighRecheckPinCounter = 0;
								if(NumberFound==1 && HowManyNumberFound>0)  											
								{													
									
									//Debug("POWER IS THERE");
									if(PowerIsThere!=1&& PowerCurrentCondition!=0)
									{
										CallErrorDelay = 0;
										PowerCondCall = 1;
									}													 
									MotorStarterTripCount = 0;
									OverAllStarterTrip = 0;
									ActMotorStarterTripTimer =0;
									PingHighSmsSendOntimer = 1;
									SendSmsToAll = 1;
									PowerOnSms = 1;
									PowerIsThere = 1;
									NoAcceptSMS=0;
									nMoTr.ActonpowerRunTimer=0;
									nMoTr.ActlnightlightRunTimer=0;
									nMoTr.ActllightRunTimer=0;
									nMoTr.ActlfanRunTimer=0;
									SendLowVoltageHighVoltage =0;
									SendSPPLowVoltageHighVoltage = 0;
									spplowhighvoldelay=0;
									PowerCurrentCondition = 0;
									SmsSendOntimer = 0;
									RecheckPinCounter = 0;
									sprintf(buffer,"AUTO START");
									strcpy(WhoMadeRelayOn,buffer);
									livedataflagcount1=0;
									livedataflag1=1;
								}
							}
						}
						else
							PingHighRecheckPinCounter = 0;
					}
				}
			}
			#endif
}
void check_voicefeedback_status(void) {
	#if 0
   if(nMSettings.VBFOnOff == 1&& Callreceiv == 0 )
	{
		IamCalling = 1;
		if(PowerCondCall == 1&& nMSettings.pwrvfbOnOf==1 )
		{
			CallingBecError = 1;
			PowerCondCall = 0;
			PowerCondVoice = 1;
		}
		else if(nSTATE_MOTOR_SMS != STATE_NO_MOTOR_SMS && GCallingBecError != nSTATE_MOTOR_SMS)
		{
			GCallingBecError = nSTATE_MOTOR_SMS;
			switch(nSTATE_MOTOR_SMS)
			{
				case STATE_MOTORON_SMS:
					break;
				case STATE_MOTOROF_SMS:
					break;
				case STATE_MOTOR_STARTER_TRIP_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_UPPERTANK_TRIP_SMS:
					break;
				case STATE_MOTOR_LOWERTANK_TRIP_SMS:
				   CallingBecError = 1;
					break;
				case STATE_MOTOR_DRYRUN_TRIP_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_CYCLIC_TRIP_SMS:
					//CallingBecError = 1;
					break;
				case STATE_MOTOR_MAX_TRIP_SMS:
					//CallingBecError = 1;
					break;
				case STATE_MOTOR_RTCOF1_TRIP_SMS:
					//CallingBecError = 1;
					break;
				case STATE_MOTOR_RTCOF2_TRIP_SMS:
					//CallingBecError = 1;
					break;
				case STATE_MOTOR_RTCOF3_TRIP_SMS:
					//CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_CURRENTSPP_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_SPP_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_RTCOF4_TRIP_SMS:
					//CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_LOWVOLTAGE_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_HIGHVOLTAGE_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_OVERLOAD_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_HIGHPRESS_SMS:
					CallingBecError = 1;
					break;
				case STATE_MOTOR_TRIP_LOWPRESS_SMS:
					CallingBecError = 1;
					break;
			   default :
				break;

			}
		}
	}
	#endif
}
void Send_30min_Status_sms(void) {	
	#if 0
	 if(PowerIsThere == 1 && AllSmsSendDone == 1 && CallModeOn == 0 && nMSettings.staticSMSOnOff==1 )
		{
			checkpower=Check2Phase();
			if(checkpower == 2)
			{
				if (nTimerSettings.AutoStIIOnOff == 0 || Mobile2Phs3Phase == 3)
				{
					StatusSMSDelay1 = 0;
					SMS30MinStatus = 0;
				}
			}
			StatusSMSDelay1++;
			if(StatusSMSDelay1>=200)
			{
				StatusSMSDelay1 = 0;
				StatusSMSDelay2++;
				if(StatusSMSDelay2>=180)
				{
					SMS30MinStatus = 1;
					Debug("\n\rNow Sending 30 tm_min Status SMS\n\r");									 
					SMS30MinStatusNumber = 0;
					SMS30MinStatusDelay = 0;
					StatusSMSDelay2 = 0;
				}
			}
		}
		else
		{
			StatusSMSDelay1 = 0;
			StatusSMSDelay2 = 0;
			SMS30MinStatus = 0;
			SMS30MinStatusDelay = 0;
		}
		 
		if(SMS30MinStatus == 1)
		{
			if(SMS30MinStatusDelay++>=15)
			{
				SMS30MinStatusDelay = 0;
				  Debug("\n\r*******30 tm_min Status SMS SMS30MinStatusNumber = %d********\n\r",SMS30MinStatusNumber);
				  
				sprintf((char *)Status30MinPhNo,"0%s",SmsNumber[0]);
				//StopTimer(&timer);
				send_test_smsStatus(Status30MinPhNo);
				//timer.timeoutPeriod = 300;
				//timer.timerId = StartTimer(&timer);
				//SMS30MinStatusNumber++;
				//if(SMS30MinStatusNumber>=HowManyNumberFound)
				//{
				SMS30MinStatusNumber = 0;
				SMS30MinStatus = 0;
				Debug("\n\rNow 30 tm_min Status SMS Sendng Completed\n\r");								 
				//}
			}
		}
		if(StaticSMSSend == 1)
		{
			if(StaticSMSDelay++>=15)
			{
				StaticSMSDelay = 0;
				Debug("\n\r*******Static SMS SMS30MinStatusNumber = %d********\n\r",SMS30MinStatusNumber);
				if(strstr(SmsNumber[SMS30MinStatusNumber],"*") == 0)
				sprintf((char *)Status30MinPhNo,"0%s",SmsNumber[SMS30MinStatusNumber]);
				SendSMSStr(StaticSmsString,Status30MinPhNo);
				SMS30MinStatusNumber++;
				if(SMS30MinStatusNumber>=HowManyNumberFound)
				{
					SMS30MinStatusNumber = 0;
					SMS30MinStatus = 0;
					StaticSMSSend = 0;
					Debug("\n\rNow 30 tm_min Status SMS Sendng Completed\n\r");								
				}
			}
		}
		 
	#endif
}
void set_hourly_power_data(void){
	  if(datetime.tm_sec != OnehrPrvSec) 
		{												
		   OnehrPrvSec = datetime.tm_sec;
		   Onehr_sec_timer++;
	
			if((Onehr_sec_timer>=3600) && Enter > 70)
			{						 
				Onehr_sec_timer=0;						
				onehour_send_flag=1;
				//sgetflag_2=1;
				Debug("\n\r Entry to onehour_time =1 line %d ",__LINE__);
			}
		}
}
void checksmslimit(void){
	if(limitsmscount>limitsmsset && limitsmsonof==1)						 
		limitsmsflag=1;						 
	else
		limitsmsflag=0;
}
void DrRestartTimer(void){
		if(nTimerSettings.Drrestartpoweronof==1 && MakeRealyOn == 1 )
		{
			//sAPI_GetRealTimeClock(&datetime);
			if(nTimerSettings.DrReOnOf == 1)
			{
				if(datetime.tm_sec != ActStarDetaPrvSec)
				{
					nMoTr.ActDrRunRestart++;
					ActStarDetaPrvSec = datetime.tm_sec;
				}
				Debug("\n\rnnMoTr.ActDrRunRestart = %ld  nMoTr.DrRunRestart = %ld\n\r",nMoTr.ActDrRunRestart,nMoTr.DrRunRestart);
				 
				if(nMoTr.ActDrRunRestart>=nMoTr.DrRunRestart)
				{
					if(PowerCurrentCondition == 0)
						nSTATE_MOTOR = STATE_MOTOR_TRIP_RESTART;
					else
						nSTATE_STATUS_SMS =STATUS_NO_ELECTRICICY;
					
					Debug("\n\rReStart Time Completed\n\r");				
					nTimerSettings.Drrestartpoweronof=0;
					SendSmsToAll = 1;
				}
				else
				{
					if(PowerCurrentCondition == 0)
						nSTATE_STATUS_SMS =STATUS_MOTOR_DRYRUN_TRIP_SMS;
					else
						Debug("STATUS_NO_ELECTRICICY;");                 
						nSTATE_STATUS_SMS =STATUS_NO_ELECTRICICY;
						nSTATE_MOTOR_SMS = STATE_MOTOR_DRYRUN_TRIP_SMS;
						nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
				}
			}
		}
} 
uint8_t CheckAutoMobile(void){	 
	  uint8_t pinlevelab;
	
		pinlevelab =AUTOMOBILE_KEY;
		//Debug("\n\rAutoMobile Key:%d",pinlevelab);	 
		if(pinlevelab == 0)
		{
			return 0;
		}
		else
		{
			return 1;
		}		
		
}
// Calculate CRC8 checksum for a block of data
uint8_t crc8(const void *data, size_t size){
    uint8_t crc = CRC8_INIT;
    const uint8_t *ptr = (const uint8_t *)data;
    uint8_t j;size_t i;
	  //Debug("size:%d",size);
    for(i = 0; i < size; i++)
    {
			  //Debug("DATA:ox%X",ptr[i]);
        crc ^= ptr[i];
        for ( j = 0; j < 8; j++)
        {
            if (crc & 0x80)
                crc = (crc << 1) ^ CRC8_POLY;
            else
                crc <<= 1;
        }
    }

    return crc;
}
int CheckPH2PH3Selection(void){
	 
		uint8_t pinlevelab;
		 
		pinlevelab = PH3OR2SELECTION_KEY;
		//Debug("Phase selection Key:%d",pinlevelab);	
		if(pinlevelab == 1)
		{
			return 1;
		}
		else
		{
			return 0;
		}	
		
}
unsigned char CyclicTimeron(void){
	if(nMoTr.CycLicOnDelay>0)
	{
		if(datetime.tm_sec != ActCycLicOnDelayPrvSec)
		{
			nMoTr.ActCycLicOnDelay++;
			ActCycLicOnDelayPrvSec = datetime.tm_sec;
		}

	   Debug("\n\rnMoTr.ActCycLicOnDelay = %ld  nMoTr.CycLicOnDelay = %ld\n\r",nMoTr.ActCycLicOnDelay,nMoTr.CycLicOnDelay);
     	   RemainingCyclicOnTime = nMoTr.CycLicOnDelay-nMoTr.ActCycLicOnDelay;
		if(nMoTr.ActCycLicOnDelay>nMoTr.CycLicOnDelay)
		{
			Debug("\n\rCYCLIC ON Completed\n\r");
			return 1;
		}
	}
	else
	{
		//PrintfResp("\n\rNo CYCLIC ON DELAY\n\r");

	}
	return 0;

}
unsigned char CyclicTimerof(void){
	if(nMoTr.CycLicOfDelay>0)
	{
		if(datetime.tm_sec != ActCycLicOfDelayPrvSec)
		{
			nMoTr.ActCycLicOfDelay++;
			ActCycLicOfDelayPrvSec = datetime.tm_sec;
		}
		Debug("\n\rnMoTr.ActCycLicOfDelay = %ld  nMoTr.CycLicOfDelay = %ld\n\r",nMoTr.ActCycLicOfDelay,nMoTr.CycLicOfDelay);
		 
		RemainingCyclicOfTime = nMoTr.CycLicOfDelay-nMoTr.ActCycLicOfDelay;
		if(nMoTr.ActCycLicOfDelay>nMoTr.CycLicOfDelay)
		{
			nSTATE_STATUS_SMS =STATUS_MOTOR_ON_ONDELAY;
			nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_ONDELAY;
			Debug("\n\rCYCLIC OFF Completed\n\r");
			return 1;
		}
	}
	return 0;

}
uint8_t CheckReversePhase(void){

	if(nTimerSettings.RvePhOnoff == 1)
    {
		if(ReversePhase == 1)
		{
			Debug("\n\rReverse Phasee off\n\r");
			return 1;
		}
		else
			return 0;
	}
	else
		return 0;


}
uint8_t CheckMotor(void){	
	#if 1
	   NoAcceptSMS=0;
		if(CheckStrterTrip() == 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_STARTER;
		}
		else if(CheckCurrentSpp() == 1 && WorkingOn3Phas == 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_CSPP;
		}
		else if(CheckSpp() == 1 && WorkingOn3Phas == 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_SPP;
		}
		else if(CheckLowerTank() == 1)
		{
			if(nMSettings.SumpOnOff == 1)
				nSTATE_MOTOR_PROBLEM=STATE_MOTOR_LOWERTANK;
			else
				nSTATE_MOTOR_PROBLEM=STATE_MOTOR_OK;
		}
		else if(CheckNoLoad(WorkingOn3Phas) >= 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_NOLOAD;
		}
		else if(CheckOvLoad(WorkingOn3Phas) >= 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_OVERLOAD;
		}
		else if(CheckLowVoltage(WorkingOn3Phas) >= 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_LOWVOLTAGE;
		}
		else if(CheckHighVoltage(WorkingOn3Phas) >= 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_HIGHVOLTAGE;
		}
		else if(CheckUpperTank() == 1)
		{
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_UPPERTANK;			 
		}		 
		else
			nSTATE_MOTOR_PROBLEM=STATE_MOTOR_OK;
		
		
		#endif
		return 0;

}  
void FloatroString1Dig(char* String,float Number){
	int i,j;
	unsigned char c;
	//float Itp;
  	c = 0; 
	if(Number < 0)
	{
	  c = 1;
	  Number = -Number;
	}
	i = (int)Number; 
	Number = Number-(float)i;
	j = (int)((Number * 10.0f));//+0.5); 
	if(c == 0)
		sprintf(String,"%02d.%01d",i,j);
	else
		sprintf(String,"-%02d.%01d",i,j);
	
		//Debug("String %s",String);
		
}
uint8_t CheckSpp(void){
		int MaxVoltage,MinVoltage;
		//float PerDifference;
		int Tp,Tp1,Tp2,Tp3;

    if(nTimerSettings.SppOnoff == 1)
    {
				MaxVoltage = nCurretnCond.RVoltage;
				if(nCurretnCond.YVoltage>MaxVoltage)
				MaxVoltage = nCurretnCond.YVoltage;
				if(nCurretnCond.BVoltage>MaxVoltage)
				MaxVoltage = nCurretnCond.BVoltage;

				MinVoltage = nCurretnCond.RVoltage;
				if(MinVoltage>nCurretnCond.YVoltage)
				MinVoltage = nCurretnCond.YVoltage;
				if(MinVoltage>nCurretnCond.BVoltage)
				MinVoltage = nCurretnCond.BVoltage;

				Tp=nTimerSettings.ImbVolt;
				Tp=Tp/2.4;
				Tp=Tp*MaxVoltage;
				Tp=Tp*0.01;

				if(Tp<=nTimerSettings.ImbVolt)
				Tp1=Tp;
				else
				Tp1=nTimerSettings.ImbVolt;
				Tp2 = MaxVoltage-Tp1;
				Tp3=nTimerSettings.ImbVolt;
				Tp3=Tp3*0.2;
				Tp3=Tp2+Tp3;
				if(MinVoltage<Tp2&& PrvSppTrip == 0)
				{
					VSPPImbalanceVoltage = MaxVoltage-MinVoltage;
					VoltageSppRecheckCounter++;
					Debug("\n\rVoltage Spp Trip=%d\n\r",VoltageSppRecheckCounter);				
					if(VoltageSppRecheckCounter>=10)
					{
						//PrintfResp("\n\rVoltage Spp Trip\n\r");
						VoltageSppRecheckCounter = 0;
						PrvSppTrip =1;
						return 1;
					}
					else
					return 0;
				}
				else if(MinVoltage>Tp3 && PrvSppTrip == 1)
				{

					VSPPImbalanceVoltage = MaxVoltage-MinVoltage;
					Debug("\n\rVoltage Spp Trip=%d\n\r",VoltageSppRecheckCounter);					
					VoltageSppRecheckCounter++;
					if(VoltageSppRecheckCounter>=30)
					{
						//sprintf(buf,"\n\rVoltage Spp Trip=%d\n\r",VoltageSppRecheckCounter);
						// PrintfResp(buf);
						VoltageSppRecheckCounter = 0;
						PrvSppTrip = 0;
						return 0;
					}
					else
					return 1;
				}
				else if(PrvSppTrip == 1)
				{
					VoltageSppRecheckCounter = 0;
					return 1;
				}
				else
				VoltageSppRecheckCounter = 0;
    }

    return 0;
}
uint8_t CheckSppHys(void){

	int MaxVoltage,MinVoltage;
	//float PerDifference;
    int Tp,Tp1,Tp2,Tp3;

    if(nTimerSettings.SppOnoff == 1)
    {
						MaxVoltage = nCurretnCond.RVoltage;
						if(nCurretnCond.YVoltage>MaxVoltage)
						MaxVoltage = nCurretnCond.YVoltage;
						if(nCurretnCond.BVoltage>MaxVoltage)
						MaxVoltage = nCurretnCond.BVoltage;

						MinVoltage = nCurretnCond.RVoltage;
						if(MinVoltage>nCurretnCond.YVoltage)
						MinVoltage = nCurretnCond.YVoltage;
						if(MinVoltage>nCurretnCond.BVoltage)
						MinVoltage = nCurretnCond.BVoltage;

						Tp=nTimerSettings.ImbVolt;
						Tp=Tp/2.4;
						Tp=Tp*MaxVoltage;
						Tp=Tp*0.01;

						if(Tp<=nTimerSettings.ImbVolt)
						Tp1=Tp;
						else
						Tp1=nTimerSettings.ImbVolt;
						Tp2 = MaxVoltage-Tp1;
						Tp3=nTimerSettings.ImbVolt;
						Tp3=Tp3*0.2;
						Tp3=Tp2+Tp3;
						if(MinVoltage<Tp2&& PrvSppTrip == 0)
						{
								VSPPImbalanceVoltage = MaxVoltage-MinVoltage;
								VoltageSppRecheckCounter++;
								Debug("\n\rVoltage Spp Trip=%d\n\r",VoltageSppRecheckCounter);			
								if(VoltageSppRecheckCounter>0)
								{
									//PrintfResp("\n\rVoltage Spp Trip\n\r");
									VoltageSppRecheckCounter = 0;
									PrvSppTrip =1;
									return 1;
								}
								else
								return 0;
						}
						else if(MinVoltage>Tp3 && PrvSppTrip == 1)
						{

								VSPPImbalanceVoltage = MaxVoltage-MinVoltage;
								Debug("\n\rVoltage Spp Trip=%d\n\r",VoltageSppRecheckCounter);			
								VoltageSppRecheckCounter++;
								if(VoltageSppRecheckCounter>=30)
								{
									//sprintf(buf,"\n\rVoltage Spp Trip=%d\n\r",VoltageSppRecheckCounter);
									// PrintfResp(buf);
									VoltageSppRecheckCounter = 0;
									PrvSppTrip = 0;
									return 0;
								}
								else
								return 1;
						}
						else if(PrvSppTrip == 1)
						{
							VoltageSppRecheckCounter = 0;
							return 1;
						}
						else
							VoltageSppRecheckCounter = 0;
						}
						return 0;
}
unsigned char CheckNoLoad(unsigned char Ph2Ph3){
	float PerCheck;
    //float perlowct;

	if(Ph2Ph3 == 1)
		PerCheck = nTimerSettings.DrAmpsIII;
	else
		PerCheck = nTimerSettings.DrAmpsII;

    if(nMSettings.DryRunOnOff == 1 && PerCheck >0.0f)
    {
        if(nCurretnCond.Rcurrent<PerCheck && nCurretnCond.Rcurrent>2 && nTimerSettings.CTRonoff == 1)
		{
			WhichPhaseHaveingProblem = 1;
			TripCurrent = nCurretnCond.Rcurrent;
			TripVoltage = nCurretnCond.RYVoltage;
            return 1;
		}
        else if(nCurretnCond.Ycurrent<PerCheck && nCurretnCond.Ycurrent>2 && nTimerSettings.CTYonoff == 1 && Ph2Ph3 == 1)
		{
			WhichPhaseHaveingProblem = 2;
			TripCurrent = nCurretnCond.Ycurrent;
			TripVoltage = nCurretnCond.YBVoltage;
            return 2;
		}
        else if(nCurretnCond.Bcurrent<PerCheck && nCurretnCond.Bcurrent>2 && nTimerSettings.CTBonoff == 1)
		{
			WhichPhaseHaveingProblem = 3;
			TripCurrent = nCurretnCond.Bcurrent;
			TripVoltage = nCurretnCond.BRVoltage;
            return 3;
		}
        return 0;
    }

    return 0;
}
uint8_t CheckOvLoad(unsigned char Ph2Ph3){
	 float PerCheck;
   // float perlowct;

		if(Ph2Ph3 == 1)
			PerCheck = nTimerSettings.OlAmpsIII;
		else
			PerCheck = nTimerSettings.OlAmpsII;

    if(nTimerSettings.OlOnOff == 1 && PerCheck>0.0f)
    {
        if(nCurretnCond.Rcurrent>PerCheck && nTimerSettings.CTRonoff == 1)
				{
					WhichPhaseHaveingProblem = 1;
					TripCurrent = nCurretnCond.Rcurrent;
					TripVoltage = nCurretnCond.RYVoltage;
								return 1;
				}
        else if(nCurretnCond.Ycurrent>PerCheck && nTimerSettings.CTYonoff == 1 && Ph2Ph3 == 1)
				{
					WhichPhaseHaveingProblem = 2;
					TripCurrent = nCurretnCond.Ycurrent;
					TripVoltage = nCurretnCond.YBVoltage;
								return 2;
				}
        else if(nCurretnCond.Bcurrent>PerCheck && nTimerSettings.CTBonoff == 1)
				{
					WhichPhaseHaveingProblem = 3;
					TripCurrent = nCurretnCond.Bcurrent;
					TripVoltage = nCurretnCond.BRVoltage;
								return 3;
				}
    }

    return 0;
}
uint8_t CheckLowVoltage(unsigned char Ph2Ph3){
	float PerCheck;
   // float perlowct;

	if(Ph2Ph3 == 1)
		PerCheck = nTimerSettings.LowVoltIII-nTimerSettings.DiffVoltIII;
	else
		PerCheck = nTimerSettings.LowVoltII-nTimerSettings.DiffVoltII;

	if(Ph2Ph3 == 1)
	{
		if(nTimerSettings.LowVoltIII == 0 || nTimerSettings.DiffVoltIII == 0)
		{
			LowVoltageRecheck = 0;
			return 0;
		}

	}
	else
	{
		if(nTimerSettings.LowVoltII == 0 || nTimerSettings.DiffVoltII == 0)
		{
			LowVoltageRecheck = 0;
			return 0;
		}
	}

	if(nTimerSettings.LowVoltOnOff == 1)
    {
        if(nCurretnCond.RYVoltage<PerCheck && Ph2Ph3 == 1)
		{
			WhichPhaseHaveingProblem = 1;
			TripVoltage = nCurretnCond.RYVoltage;
			LowVoltageRecheck++;
			if(LowVoltageRecheck>=60)
            {
				LowVoltageRecheck = 61;
				return 1;
			}
			else
				return 0;
		}
        else if(nCurretnCond.YBVoltage<PerCheck && Ph2Ph3 == 1)
		{
			WhichPhaseHaveingProblem = 2;
			TripVoltage = nCurretnCond.YBVoltage;
			LowVoltageRecheck++;
			if(LowVoltageRecheck>=60)
            {
				LowVoltageRecheck = 61;
				return 2;
			}
			else
				return 0;
		}
        else if(nCurretnCond.BRVoltage<PerCheck)
		{
			WhichPhaseHaveingProblem = 3;
			TripVoltage = nCurretnCond.BRVoltage;
			LowVoltageRecheck++;
			if(LowVoltageRecheck>=60)
            {
				LowVoltageRecheck = 61;
				return 3;
			}
			else
				return 0;
		}

		LowVoltageRecheck = 0;
        return 0;

    }
	LowVoltageRecheck = 0;
    return 0;

}


uint8_t CheckLowVoltageHys(unsigned char Ph2Ph3){
		float PerCheck;
		//float perlowct;
		if(Ph2Ph3 == 1)
			PerCheck = nTimerSettings.LowVoltIII;
		else
			PerCheck = nTimerSettings.LowVoltII;

		if(Ph2Ph3 == 1)
		{
			if(nTimerSettings.LowVoltIII == 0 || nTimerSettings.DiffVoltIII == 0)
				return 0;

		}
		else
		{
			if(nTimerSettings.LowVoltII == 0 || nTimerSettings.DiffVoltII == 0)
				return 0;
		}

		if(nTimerSettings.LowVoltOnOff == 1)
    {
        if(nCurretnCond.RYVoltage<PerCheck && Ph2Ph3 == 1)
				{
					WhichPhaseHaveingProblem = 1;
					TripVoltage = nCurretnCond.RYVoltage;
					return 1;
				}
        else if(nCurretnCond.YBVoltage<PerCheck && Ph2Ph3 == 1)
				{
					WhichPhaseHaveingProblem = 2;
					TripVoltage = nCurretnCond.YBVoltage;
					return 2;
				}
        else if(nCurretnCond.BRVoltage<PerCheck)
				{
					WhichPhaseHaveingProblem = 3;
					TripVoltage = nCurretnCond.BRVoltage;
					return 3;
				}
        return 0;
    }

    return 0;

}
uint8_t CheckHighVoltage(unsigned char Ph2Ph3){
	  float PerCheck;
    //float perlowct;

	 if(Ph2Ph3 == 1)
		PerCheck = nTimerSettings.HighVoltIII;
	 else
		PerCheck = nTimerSettings.HighVoltII;


		if(Ph2Ph3 == 1)
		{
			if(nTimerSettings.HighVoltIII == 0 || nTimerSettings.HiDiffVoltIII == 0)
			{
				HighVoltageRecheck =0;
				return 0;
			}

		}
		else
		{
			if(nTimerSettings.HighVoltII == 0 || nTimerSettings.HiDiffVoltII == 0)
			{
				 HighVoltageRecheck =0;
				return 0;
				}
		}




		if(nTimerSettings.HighVoltOnOff == 1)
			{
					if(nCurretnCond.RYVoltage>PerCheck && Ph2Ph3 == 1)
			{
				WhichPhaseHaveingProblem = 1;
				TripVoltage = nCurretnCond.RYVoltage;
				HighVoltageRecheck++;
				if(HighVoltageRecheck>=60)
							{
					HighVoltageRecheck = 61;
					return 1;
					}

				else
					return 0;
			}
					else if(nCurretnCond.YBVoltage>PerCheck && Ph2Ph3 == 1)
			{
				WhichPhaseHaveingProblem = 2;
				TripVoltage = nCurretnCond.YBVoltage;
				HighVoltageRecheck++;
				if(HighVoltageRecheck>=60)
							{
					HighVoltageRecheck = 61;
					return 2;
				}
				else
					return 0;
			}
					else if(nCurretnCond.BRVoltage>PerCheck)
			{
				WhichPhaseHaveingProblem = 3;
				TripVoltage = nCurretnCond.BRVoltage;
				HighVoltageRecheck++;
				if(HighVoltageRecheck>=60)
							{
					HighVoltageRecheck = 61;
					return 3;
				}
				else
					return 0;
			}
			//sprintf(buf,"\n\rnCurretnCond.RYVoltage=%03.0f   %03.0f    %03.0f  PerCheck = %d\n\r",nCurretnCond.RYVoltage,nCurretnCond.YBVoltage,nCurretnCond.BRVoltage,PerCheck);
			// PrintfResp(buf);
			HighVoltageRecheck = 0;
					return 0;
			}
		HighVoltageRecheck = 0;
		return 0;
}
uint8_t CheckHighVoltageHys(unsigned char Ph2Ph3){
			float PerCheck;
			//float perlowct;

			if(Ph2Ph3 == 1)
				PerCheck = nTimerSettings.HighVoltIII-nTimerSettings.HiDiffVoltIII;
			else
				PerCheck = nTimerSettings.HighVoltII-nTimerSettings.HiDiffVoltII;

			if(Ph2Ph3 == 1)
			{
				if(nTimerSettings.HighVoltIII == 0 || nTimerSettings.HiDiffVoltIII == 0)
					return 0;
			}
			else
			{
				if(nTimerSettings.HighVoltII == 0 || nTimerSettings.HiDiffVoltII == 0)
					return 0;
			}


			Debug("\n\rPerCheck = %f\n\r",PerCheck);	
			if(nTimerSettings.HighVoltOnOff == 1)
			{
					if(nCurretnCond.RYVoltage>PerCheck && Ph2Ph3 == 1)
			{
				WhichPhaseHaveingProblem = 1;
				TripVoltage = nCurretnCond.RYVoltage;
							return 1;
			}
					else if(nCurretnCond.YBVoltage>PerCheck && Ph2Ph3 == 1)
			{
				WhichPhaseHaveingProblem = 2;
				TripVoltage = nCurretnCond.YBVoltage;
							return 2;
			}
					else if(nCurretnCond.BRVoltage>PerCheck)
			{
				WhichPhaseHaveingProblem = 3;
				TripVoltage = nCurretnCond.BRVoltage;
							return 3;
			}
			Debug("\n\rnCurretnCond.RYVoltage=%03.0f   %03.0f    %03.0f  PerCheck = %f\n\r",nCurretnCond.RYVoltage,nCurretnCond.YBVoltage,nCurretnCond.BRVoltage,PerCheck);
					
			return 0;

			}

    return 0;

}
uint8_t Check2Phase(void){
	if(nCurretnCond.YVoltage>=110)
	{
		Debug("\n\rWorking on 3 phase\n\r");
		return 3;
	}
	else if(nCurretnCond.YVoltage<=109)
	{
		Debug("\n\rWorking on 2 phase\n\r");
		return 2;
	}
	return 0;
}
uint8_t CheckManualSwitch(void){
 #if 0
	uint8_t pinlevelab;
	uint8_t pinlevelabc;
	if(nMSettings.ManualswitchOnOff == 1)
	{
		//pinlevelab = sAPI_GpioGetValue(UPTANK_PIN2);
		//pinlevelabc = sAPI_GpioGetValue(UPTANK_PIN2);
		if(pinlevelab == 0 && pinlevelabc == 0)
		{
				RecheckCounterMT=0; //RecheckCounterMT_1++;
		   //	if(RecheckCounterMT_1>=20)
	     //		{
		   //RecheckCounterMT_1 = 0;
			PrvMSMotorStatus = 0;
			return 0;
	     //		}
		} 
		else if(pinlevelab == 1 && pinlevelabc == 1)
		{
			RecheckCounterMT++;
			if(RecheckCounterMT>=20)
			{
				RecheckCounterMT = 21;
				if(PrvMSMotorStatus==0)
				Send_manualswitch(SmsNumber[0]);
				PrvMSMotorStatus = 1;
				return 1;
			}
			else
			{
				PrvMSMotorStatus = 0;
		    //RecheckCounterMT_1=0;
				return 0;
			}
		}
		else
		{
	   //RecheckCounterMT=0;
		 return PrvMSMotorStatus;
		}

	}
	RecheckCounterMT = 0;

	#endif
		return 0;
}
uint8_t CheckUpperTank(void){
	 
	uint8_t pinlevelab;
	uint8_t pinlevelabc;	 
	 
	if(nMSettings.TankOnOff== 1)
	{		 
				//pinlevelab = UPTANK_PIN1;
				//pinlevelabc = UPTANK_PIN2;   //UPTANK_PIN1
				if(nMSettings.ndebugonof==1)		 
					Debug("\n\r UPTANK_PIN1 is %d UPTANK_PIN2 is %d",pinlevelab,pinlevelabc);
				 
				 
				if(pinlevelab == 0 && pinlevelabc == 0)
				{
					RecheckCounterUT = 0;
					PrvUpMotorStatus = 0;
					return PrvUpMotorStatus;
				}
				else if(pinlevelab == 1 && pinlevelabc == 1)
				{
					RecheckCounterUT++;	 
					if(RecheckCounterUT>=5)  
					{
						RecheckCounterUT = 21;		 
						PrvUpMotorStatus = 1;
						return 1;
					}
					else
					{
						PrvUpMotorStatus = 0;
						return 0;
					}
				}
				else

		 return PrvUpMotorStatus;

	}
	RecheckCounterUT = 0;
	return 0;
}
uint8_t CheckLowerTank(void){
	//INT32 iret;
	uint8_t pinlevelab;
	uint8_t pinlevelabc;
	if(nMSettings.SumpOnOff == 1)
	{
		pinlevelab = LOTANK_PIN1;
		pinlevelabc = LOTANK_PIN2;
		PrvLocanMotorStatus=0;
		//pinlevelab = sumplevel;
		//pinlevelabc = sumplevel;
		if(nMSettings.ndebugonof==1)	 
		 Debug("\n\r LOTANK_PIN1 is %d LOTANK_PIN2 is %d",pinlevelab,pinlevelabc);		
		 
		if(pinlevelab == 0 && pinlevelabc == 0)
		{

			if(PrvLoMotorStatus==1)
			{
				RecheckCounterLT++;
				if(RecheckCounterLT>25)
				{
					RecheckCounterLT=0;
					PrvLoMotorStatus = 0;
			        return 0;
				}
			}
			else
			{
			RecheckCounterLT = 0;
			PrvLoMotorStatus = 0;
			return 0;
			}

		}
		else if(pinlevelab == 1 && pinlevelabc == 1)
		{
			RecheckCounterLT++;
			if(RecheckCounterLT>=20)
			{
				RecheckCounterLT = 21;
				PrvLoMotorStatus = 1;
				return 1;
			}
			else
			{
				PrvLoMotorStatus = 0;
				return 0;
			}
		}
		else
			if(PrvLoMotorStatus==1)
			{
				RecheckCounterLT=21;
			}
			//***********//
		//	else
		//		RecheckCounterLT=0;   //dg_added for checking   only for agritel sir site.
			//***********//

			return PrvLoMotorStatus;
	}
  /*	else if(nMSettings.TankOnOff == 1)
		{
		//pinlevelab = sAPI_GpioGetValue(LOTANK_PIN1);
		//pinlevelabc = sAPI_GpioGetValue(LOTANK_PIN2);
		pinlevelab = sumplevel;
		pinlevelabc = sumplevel;
		PrvLoMotorStatus=0;
		if(pinlevelab == 0 && pinlevelabc == 0)
		{
			RecheckCounterLT = 0;
			PrvLocanMotorStatus = 0;
			return 0;
		}
		else if(pinlevelab == 1 && pinlevelabc == 1)
		{
			RecheckCounterLT++;
			if(RecheckCounterLT>=20)
			{
				RecheckCounterLT = 21;
				if(PrvLocanMotorStatus==0)
				Send_tankempty(SmsNumber[0]);

				PrvLocanMotorStatus = 1;
				return 1;
			}
			else
			{
				PrvLocanMotorStatus = 0;
				return 0;
			}
		}
		else
			return PrvLocanMotorStatus;
	} */
	RecheckCounterLT = 0;
	return 0;
}
uint8_t CheckCurrentSpp(void){

	//float perlowct;
	float per,per1;

	if(nTimerSettings.CTRonoff == 0 || nTimerSettings.CTYonoff == 0 || nTimerSettings.CTBonoff == 0)
	{
		CurrentSppRecheckCounter = 0;
		return 0;
	}

	if(nTimerSettings.CurSppOnOff == 1)
    {
			if(nCurretnCond.Rcurrent<2 && nCurretnCond.Ycurrent<2 && nCurretnCond.Bcurrent<2)
			{
				CurrentSppRecheckCounter = 0;		
				return 0;			 
			}

			per = (nCurretnCond.Rcurrent/nCurretnCond.Ycurrent)*100;
			per1 = (nCurretnCond.Ycurrent/nCurretnCond.Bcurrent)*100;
			//Debug("\n\r***CurrentSppRecheckCounter = %d\n\r*****",CurrentSppRecheckCounter);		 
			if(nCurretnCond.Rcurrent<2)
			{
				CSPPValue = 1;
				CurrentSppRecheckCounter++;
				if(CurrentSppRecheckCounter>=50)
				{
					Debug("\n\rCurrent SPP Trip\n\r");
					return 1;
				}
			}
					else if(nCurretnCond.Ycurrent<2)
			{
				CSPPValue = 2;
				CurrentSppRecheckCounter++;
				if(CurrentSppRecheckCounter>=50)
				{
					Debug("\n\rCurrent SPP Trip\n\r");
					return 1;
				}
			}
					else if(nCurretnCond.Bcurrent<2)
			{
				CSPPValue = 3;
				CurrentSppRecheckCounter++;
				if(CurrentSppRecheckCounter>=50)
				{
					Debug("\n\rCurrent SPP Trip\n\r");
					return 1;
				}
			}
			else if(per>200 || per<50)
			{
				CSPPValue = 4;
				CurrentSppRecheckCounter++;
				if(CurrentSppRecheckCounter>=50)
				{
					Debug("\n\rCurrent SPP Trip\n\r");
					return 1;
				}
			}
			else if(per1>200 || per1<50)
			{
				CSPPValue = 5;
				CurrentSppRecheckCounter++;
				if(CurrentSppRecheckCounter>=50)
				{
					Debug("\n\rCurrent SPP Trip\n\r");
					return 1;
				}
			}
			else
				CurrentSppRecheckCounter = 0;
		}


    return 0;
}
uint8_t CheckStrterTrip(void){
		if(nMSettings.SfbOnOff == 1)
		{
				if(nCurretnCond.Rcurrent<2 && nCurretnCond.Ycurrent<2 && nCurretnCond.Bcurrent<2)
				{
				        if(datetime.tm_sec != ActSfbPrvSec)
								{
									nMoTr.ActSfbDelay++;
									ActSfbPrvSec = datetime.tm_sec;
								}
					//RecheckCounterST++;
					if(nMoTr.ActSfbDelay>=nMoTr.SfbDelay)
						return 1;
				}
				else
				{
					if(MotorStarterTripCount!=0)
					MotorStarterTripCount = 0;
					nMoTr.ActSfbDelay=0;
					RecheckCounterST = 0;
				}
		}
		else
		{ 				 
				if(MotorStarterTripCount!=0)
				MotorStarterTripCount = 0;
				RecheckCounterST = 0;
				nMoTr.ActSfbDelay=0;
		}
		return 0;
}
void UpdateVoicePowerCondition(unsigned char PowerCondition){
	VoicePowerCondition = PowerCondition;
}
int FindNearsetElement(long *Pointer,int len){
	int Tp;
	int Small,NextSmall;

	Small=NextSmall = 0;
	for(Tp=1;Tp<len;Tp++)
	{
		if(Pointer[Small] != 0)
		{
			if(Pointer[Small]>Pointer[Tp] && Pointer[Tp]!=0)
				Small = Tp;
			NextSmall = 1;
		}
		else
		{
			NextSmall++;
			Small++;
		}
	}
	if(Small == NextSmall)
		return -1;
	
	return Small;
}
uint8_t WhoIsNext(unsigned char FromWhere){

			//long on1,on2,on3;
			//long Difference1;
			long RTCValues[5];

			if(FromWhere == 1)
			{
				RTCValues[0] = nMoTr.RTCON[2];
				RTCValues[1] = nMoTr.RTCON[3];
				RTCValues[2] = nMoTr.RTCON[4];
				return (FindNearsetElement(RTCValues,3)+1);
			}
			else if(FromWhere == 2)
			{
				RTCValues[0] = nMoTr.RTCON[1];
				RTCValues[1] = nMoTr.RTCON[3];
				RTCValues[2] = nMoTr.RTCON[4];
				return (FindNearsetElement(RTCValues,3)+1);
			}
			else if(FromWhere == 3)
			{
				RTCValues[0] = nMoTr.RTCON[1];
				RTCValues[1] = nMoTr.RTCON[2];
				RTCValues[2] = nMoTr.RTCON[4];
				return (FindNearsetElement(RTCValues,3)+1);
			}
			else if(FromWhere == 4)
			{
				RTCValues[0] = nMoTr.RTCON[1];
				RTCValues[1] = nMoTr.RTCON[2];
				RTCValues[2] = nMoTr.RTCON[3];
				return (FindNearsetElement(RTCValues,3)+1);
			}
			
				return 0;
}





uint8_t CheckRTC(void){
	#if 0
	//CLK_SysTickDelay(1);      //delay of 1 ns
	int8_t ret,i;
	long CurrentSec;
	
	if(RTCCheckFirstTime == 0)
	{
						RTCCheckFirstTime = 1;
						//ReadTimerSettings();
						if(nTimerSettings.RTCOnOf == 1)
						{
							
							for(i=1;i<5;i++)
							{
								nMoTr.RTCON[i] = (nTimerSettings.RTCOnHr[i]*3600)+(nTimerSettings.RTCOnMin[i]*60)+nTimerSettings.RTCOnSec[i];
								nMoTr.RTCOf[i] = (nTimerSettings.RTCOfHr[i]*3600)+(nTimerSettings.RTCOfMin[i]*60)+nTimerSettings.RTCOfSec[i];
							}

							for(i=1;i<5;i++)
							{
								if(nMoTr.RTCON[i]>86400)
								nMoTr.RTCON[i] = 86400;
								if(nMoTr.RTCOf[i]>86400)
								nMoTr.RTCOf[i] = 86400;
							}
							for(i=1;i<5;i++)
							{
								if(nMoTr.RTCON[i]>=nMoTr.RTCOf[i])
								{
									nMoTr.RTCON[i] = 0;
									nMoTr.RTCOf[i] = 0;
								}
							}
						}
						else
						{			 
								for(i=1;i<5;i++)
								{
									nMoTr.RTCON[i] = 0;
									nMoTr.RTCOf[i] = 0;
								}		
						}
						FirstTimerinProgram1 = 0;
						FirstTimerinProgram2 = 0;
						FirstTimerinProgram3 = 0;
						FirstTimerinProgram4 = 0;

	}
	else
	{	 
			//aj sAPI_GetRealTimeClock(&datetime);
			//aj CurrentSec = (datetime.tm_hour*3600)+(datetime.tm_min*60)+datetime.tm_sec;
			//aj if(PrvDate !=datetime.tm_mday)
			{
						NoElePowerOfTimer = 0;
						//nMoTr.ActMaxRunTimer = 0;
						LastDayRunTimer = RunTimer;
						LastDayRunflow = Runflow;
						nMoTr.Actl2powerRunTimer = nMoTr.Act2powerRunTimer;
						nMoTr.Actl3powerRunTimer = nMoTr.Act3powerRunTimer;
						nMoTr.ActlnopowerRunTimer = nMoTr.ActnopowerRunTimer;
						nMoTr.Act2powerRunTimer=0;
						nMoTr.Act3powerRunTimer=0;
						nMoTr.ActnopowerRunTimer=0;
						limitsmsflag=0;
						limitsmscount=0;
						RunTimer = 0;
						Runflow = 0;
						//aj PrvDate= datetime.tm_mday;			
						//ServiceNumberFound  = 0;
			}	
				
			
			//Debug("\n\r------RTC nMoTr.RTCOf1 = %ld  nMoTr.RTCON1 = %ld  CurrentSec=%ld \n\r",nMoTr.RTCOf[1],nMoTr.RTCON[1],CurrentSec);
			 
			if(CurrentSec<nMoTr.RTCOf[1] && CurrentSec>nMoTr.RTCON[1] && nMoTr.RTCON[1] !=0 && nMoTr.RTCOf[1]!=0)
			{
						if(FirstTimerinProgram1 == 0)
						{
							OffMotorByPhone = 0;
							FirstTimerinProgram2 = 0;
							FirstTimerinProgram3 = 0;
							FirstTimerinProgram4 = 0;

							FirstTimerinProgram1 = 1;
						}
						//Debug("**** OffMotorByPhone = %d ****** ",OffMotorByPhone);		
						
						if(OffMotorByPhone == 0)
						{

							nSTATE_STATUS_SMS = STATUS_MOTOR_ON_RTC1;
							nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_RTC1;
							nRTC_CURRENT_STATUS = RTC1_TIMER_ON;
							RemainingRTC1Time = nMoTr.RTCOf[1]-CurrentSec;
							return 1;
						}
						else
							return 0;
			}
			else
			{
						if(FirstTimerinProgram1 == 1)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_RTCOF1_TRIP_SMS;
							SendSmsToAll = 1;
							nSTATE_MOTOR_SMS = STATE_MOTOR_RTCOF1_TRIP_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_RTCOF1;
							WHRTCPRWillNext = WhoIsNext(1);
						}
						FirstTimerinProgram1 = 0;
			}

			if(CurrentSec<nMoTr.RTCOf[2] && CurrentSec>nMoTr.RTCON[2] && nMoTr.RTCON[2] !=0 && nMoTr.RTCOf[2]!=0)
			{
						if(FirstTimerinProgram2 == 0)
						{
							OffMotorByPhone = 0;
							FirstTimerinProgram1 = 0;
							FirstTimerinProgram3 = 0;
							FirstTimerinProgram4 = 0;

							FirstTimerinProgram2 = 1;
						}
						if(OffMotorByPhone == 0)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_ON_RTC2;
							nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_RTC2;
							nRTC_CURRENT_STATUS = RTC2_TIMER_ON;
							RemainingRTC2Time = nMoTr.RTCOf[2]-CurrentSec;
							return 1;
						}
						else
							return 0;

			}
			else
			{
						if(FirstTimerinProgram2 == 1)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_RTCOF2_TRIP_SMS;
							SendSmsToAll = 1;
							nSTATE_MOTOR_SMS = STATE_MOTOR_RTCOF2_TRIP_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_RTCOF2;
							WHRTCPRWillNext = WhoIsNext(2);
						}
						FirstTimerinProgram2 = 0;
			}

			if(CurrentSec<nMoTr.RTCOf[3] && CurrentSec>nMoTr.RTCON[3] && nMoTr.RTCON[3] !=0 && nMoTr.RTCOf[3]!=0)
			{
						if(FirstTimerinProgram3 == 0)
						{
							OffMotorByPhone = 0;
							FirstTimerinProgram1 = 0;
							FirstTimerinProgram2 = 0;
							FirstTimerinProgram4 = 0;

							FirstTimerinProgram3 = 1;
						}
						if(OffMotorByPhone == 0)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_ON_RTC3;
							nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_RTC3;
							nRTC_CURRENT_STATUS = RTC3_TIMER_ON;
							RemainingRTC3Time = nMoTr.RTCOf[3]-CurrentSec;
							return 1;
						}
						else
							return 0;
			}
			else
			{
						if(FirstTimerinProgram3 == 1)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_RTCOF3_TRIP_SMS;
							SendSmsToAll = 1;
							nSTATE_MOTOR_SMS = STATE_MOTOR_RTCOF3_TRIP_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_RTCOF3;
							WHRTCPRWillNext = WhoIsNext(3);
						}
						FirstTimerinProgram3 = 0;
			}

			if(CurrentSec<nMoTr.RTCOf[4] && CurrentSec>nMoTr.RTCON[4] && nMoTr.RTCON[4] !=0 && nMoTr.RTCOf[4]!=0)
			{
						if(FirstTimerinProgram4 == 0)
						{
							OffMotorByPhone = 0;
							FirstTimerinProgram1 = 0;
							FirstTimerinProgram2 = 0;
							FirstTimerinProgram3 = 0;

							FirstTimerinProgram4 = 1;
						}
						if(OffMotorByPhone == 0)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_ON_RTC4;
							nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_RTC4;
							nRTC_CURRENT_STATUS = RTC4_TIMER_ON;
							RemainingRTC4Time = nMoTr.RTCOf[4]-CurrentSec;
							return 1;
						}
						else
							return 0;
			}
			else
			{
						if(FirstTimerinProgram4 == 1)
						{
							SendSmsToAll = 1;
							nSTATE_STATUS_SMS = STATUS_MOTOR_RTCOF4_TRIP_SMS;
							nSTATE_MOTOR_SMS = STATE_MOTOR_RTCOF4_TRIP_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_RTCOF4;
							WHRTCPRWillNext = WhoIsNext(4);
						}
						FirstTimerinProgram4 = 0;
			}

	}
	
	nRTC_CURRENT_STATUS = NO_RTC_TIMER;
	FirstTimerinProgram1 = 0;
	FirstTimerinProgram2 = 0;
	FirstTimerinProgram3 = 0;
	FirstTimerinProgram4 = 0;
	
	
	#endif
	return 0;
}

void RunMotor(unsigned char OnOff,unsigned char PowerCondition){
   #if 1
	 
		 
		static uint8_t RecheckTankStatus = 0;	  
		uint16_t value,Tp,TpHr,TpMin,TpSec,i;
		 
		float TpCur;		
    
  
		UpdateVoicePowerCondition(PowerCondition);

		VolCurGetTimer++;
		if(PowerCondition == 0 && VolCurGetTimer>=5)
		{
			VolCurGetTimer = 0;
			CheckVoltageCurrent();
		}
		else if(PowerCondition == 1)	//else if(PowerCondition == 1&& VolCurGetTimer>=5)
		{
			VolCurGetTimer = 0;
			CheckVoltageCurrent();
		}
    if(debugon == 1)
    Debug("\n\rRunMotor Entry,%d,%d,%d",OnOff,PowerCondition,PrvOnOff);
		if((OnOff == 1) && PowerCondition == 0)
		{
					if(PrvOnOff != OnOff || PrvPowCond != PowerCondition)
					{
					 
						/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				
			 
					if(PrvOnOff != OnOff)
							MotorTriedToStart = 1;
					
					if(Returnfromthisonly == 0 || Returnfromthisonly == 1)
					{
									if(spplowhighvoldelay>=30)
											spplowhighvoldelay=0;



									if(SendLowVoltageHighVoltage ==1 ||SendSPPLowVoltageHighVoltage == 1||MotorReversePhaseSMS==1)
									{
										if(spplowhighvoldelay>=28&& spplowhighvoldelay<=30)
										{
											//ReadSettingsFile();
											//ReadTimerSettings();
											//	spplowhighvoldelay=0;

										}
									}
									else
									{
											//	if(spplowhighvoldelay==0)
											// 	{
											ReadSettingsFile();
								      ReadTimerSettings();	
											//	 spplowhighvoldelay=0;

											// 	}

											// 	spplowhighvoldelay++;
											//	if(spplowhighvoldelay>=28&& spplowhighvoldelay<=30)
											//   {
											//	spplowhighvoldelay=0;

											//	}
									}
									Returnfromthisonly = 0;
									
									nMoTr.OnDelay = (nTimerSettings.POnHr*3600)+(nTimerSettings.POnMin*60)+nTimerSettings.POnSec;
									if(nMoTr.OnDelay>3600)
											nMoTr.OnDelay = 3600;
									
									nMoTr.StarDetaDelay = (nTimerSettings.SDHr*3600)+(nTimerSettings.SDMin*60)+nTimerSettings.SDSec;
									nMoTr.SfbDelay = (nTimerSettings.SfbHr*3600)+(nTimerSettings.SfbMin*60)+nTimerSettings.SfbSec;
									if(nMoTr.StarDetaDelay>31)
											nMoTr.StarDetaDelay = 30;

									if(nTimerSettings.DrReOnOf == 1)
									{
										nMoTr.DrRunRestart = (nTimerSettings.DrReHr*3600)+(nTimerSettings.DrReMin*60)+nTimerSettings.DrReSec;
										if(nMoTr.DrRunRestart>86400)
												nMoTr.DrRunRestart = 86400;
									}
									else
									nMoTr.DrRunRestart = 0;


									nMoTr.DrRunScan = (nTimerSettings.DrScHr*3600)+(nTimerSettings.DrScMin*60)+nTimerSettings.DrScSec;
									if(nMoTr.DrRunScan>300)
											nMoTr.DrRunScan = 300;

									if(nTimerSettings.MaxRnOnOf == 1)
									{
										nMoTr.MaxRunTimer = (nTimerSettings.MaxRnHr*3600)+(nTimerSettings.MaxRnMin*60)+nTimerSettings.MaxRnSec;
										if(nMoTr.MaxRunTimer>86400)
												nMoTr.MaxRunTimer = 86400;
									}
									else
									nMoTr.MaxRunTimer = 0;

									if(nTimerSettings.CycLicOnOf == 1)
									{
										nMoTr.CycLicOnDelay = (nTimerSettings.CycLicOnHr*3600)+(nTimerSettings.CycLicOnMin*60)+nTimerSettings.CycLicOnSec;
										nMoTr.CycLicOfDelay = (nTimerSettings.CycLicOfHr*3600)+(nTimerSettings.CycLicOfMin*60)+nTimerSettings.CycLicOfSec;
										if(nMoTr.CycLicOnDelay>86400)
										nMoTr.CycLicOnDelay = 86400;
										if(nMoTr.CycLicOfDelay>86400)
										nMoTr.CycLicOfDelay = 86400;
									}
									else
									{
										nMoTr.CycLicOnDelay = 0;
										nMoTr.CycLicOfDelay = 0;
									}
									if(nTimerSettings.ScrDlOnOff == 1)
									{
										nMoTr.Scrdl = (nTimerSettings.ScrDlHr*3600)+(nTimerSettings.ScrDlMin*60)+nTimerSettings.ScrDlSec;
									}
									else
									{
										nMoTr.Scrdl = 0;
									}

									if(nTimerSettings.PoScrDlOnOff == 1)
									{
										nMoTr.PoScrdl = (nTimerSettings.PoScrDlHr*3600)+(nTimerSettings.PoScrDlMin*60)+nTimerSettings.PoScrDlSec;
									}
									else
									{
										nMoTr.PoScrdl = 0;
									}

									if(nTimerSettings.OlOnOff == 1)
									nMoTr.OlScan = (nTimerSettings.OlScanHr*3600)+(nTimerSettings.OlScanMin*60)+nTimerSettings.OlScanSec;

									if(nTimerSettings.DrOccurOnOff == 1)
									{
										nMoTr.DrOccurTim = (nTimerSettings.DrOccurTimHr*3600)+(nTimerSettings.DrOccurTimMin*60)+nTimerSettings.DrOccurTimSec;
										nMoTr.DrOccurNum = nMoTr.DrOccurNum;
									}
									if(nTimerSettings.RTCOnOf == 1)
									{
											for(i=1;i<5;i++)
											{
												nMoTr.RTCON[i] = (nTimerSettings.RTCOnHr[i]*3600)+(nTimerSettings.RTCOnMin[i]*60)+nTimerSettings.RTCOnSec[i];
												nMoTr.RTCOf[i] = (nTimerSettings.RTCOfHr[i]*3600)+(nTimerSettings.RTCOfMin[i]*60)+nTimerSettings.RTCOfSec[i];
											}

											for(i=1;i<5;i++)
											{
												if(nMoTr.RTCON[i]>86400)
													nMoTr.RTCON[i] = 86400;
												if(nMoTr.RTCOf[i]>86400)
													nMoTr.RTCOf[i] = 86400;

											}
											for(i=1;i<5;i++)
											{
												if(nMoTr.RTCON[i]>=nMoTr.RTCOf[i])
												{
													nMoTr.RTCON[i] = 0;
													nMoTr.RTCOf[i] = 0;
												}
											}
									}
									else
									{
											for(i=1;i<5;i++)
											{
												nMoTr.RTCON[i] = 0;
												nMoTr.RTCOf[i] = 0;

											}		
									}
									
									if(nTimerSettings.ScrDlOnOff == 1)
									{
										nMoTr.Scrdl = (nTimerSettings.ScrDlHr*3600)+(nTimerSettings.ScrDlMin*60)+nTimerSettings.ScrDlSec;
									}
									else
									{
										nMoTr.Scrdl = 0;
									}

									if(nTimerSettings.PoScrDlOnOff == 1)
									{
										nMoTr.PoScrdl = (nTimerSettings.PoScrDlHr*3600)+(nTimerSettings.PoScrDlMin*60)+nTimerSettings.PoScrDlSec;
									}
									else
									{
										nMoTr.PoScrdl = 0;
									}

									if(nTimerSettings.OlOnOff == 1)
										nMoTr.OlScan = (nTimerSettings.OlScanHr*3600)+(nTimerSettings.OlScanMin*60)+nTimerSettings.OlScanSec;

									if(nTimerSettings.DrOccurOnOff == 1)
									{
										nMoTr.DrOccurTim = (nTimerSettings.DrOccurTimHr*3600)+(nTimerSettings.DrOccurTimMin*60)+nTimerSettings.DrOccurTimSec;
										nMoTr.DrOccurNum = nMoTr.DrOccurNum;
									}
					}


					nMoTr.ActOnDelay = 0;
					//nMoTr.ActDrRunRestart = 0;		//made zero in the ON DEL Timer condition
					//nTimerSettings.Drrestartpoweronof=0;
					nMoTr.ActDrRunScan = 0;
					nMoTr.ActStarDetaDelay = 0;
					nMoTr.ActSfbDelay = 0;

					RecheckCounterST = 0;
					RecheckTankStatus = 0;
					RecheckOlRstState = 0;

					nMoTr.ActPoScrdl = 0;
					nMoTr.ActScrdl = 0;
					nMoTr.ActDrOccurTim = 0;
					nMoTr.ActDrOccurNum = 0;
					nMoTr.ActOlScan = 0;
								nMoTr.ActHPScan = 0;
					nMoTr.ActLPScan = 0;
					Tp = Check2Phase();
					if(Tp == 3)
						WorkingOn3Phas = 1;
					else if(Tp == 2)
						WorkingOn3Phas = 0;
					else
						return;

					Debug("**********NowRestartMe = %d****************\n\r",NowRestartMe);		 
					if(nTimerSettings.AutoOlDrRstIIOnOff == 0 && NowRestartMe == 0)
					{
						if(PreviousTrip == OV_LOAD_TRIP_FLAG)
						{
							nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_OVERLOAD;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_OVERLOAD;
							Returnfromthisonly = 1;
							if(spplowhighvoldelay++>=30)
							spplowhighvoldelay=0;
							if(nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS &&	nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
								
							nSTATE_STATUS_SMS = STATUS_MOTOR_TRIP_OVERLOAD;
							NowRestartMe = 0;
							return;
						}

					}
					
					if(nTimerSettings.AutoDrRunRstIIOnOff == 0 && NowRestartMe == 0)
					{
						if(PreviousTrip == DYRUN_LOAD_TRIP_FLAG)
						{
							nSTATE_STATUS_SMS =STATUS_MOTOR_DRYRUN_TRIP_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
							Returnfromthisonly = 1;
							if(spplowhighvoldelay++>=30)
								spplowhighvoldelay=0;
							if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
							
								nSTATE_STATUS_SMS = STATUS_MOTOR_DRYRUN_TRIP_SMS;
								NowRestartMe = 0;
							return;
						}
						/*else if(PreviousTrip == LOW_PRESS_TRIP_FLAG)
						{
							nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_LOWPRESS;
							//nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_LOWPRESS_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWPRESS;
							//nSTATE_STATUS_SMS =STATUS_MOTOR_DRYRUN_TRIP_SMS;
							//nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
							Returnfromthisonly = 1;
							if(spplowhighvoldelay++>=30)
									spplowhighvoldelay=0;
							if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
								
								nSTATE_STATUS_SMS = STATUS_MOTOR_TRIP_LOWPRESS;
								NowRestartMe = 0;
							return;
						}
						else if(PreviousTrip == HIGH_PRESS_TRIP_FLAG)
						{
								nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_HIGHPRESS;
								//nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_LOWPRESS_SMS;
								nSTATE_MOTOR = STATE_MOTOR_TRIP_HIGHPRESS;
								//nSTATE_STATUS_SMS =STATUS_MOTOR_DRYRUN_TRIP_SMS;
								//nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
								Returnfromthisonly = 1;
								if(spplowhighvoldelay++>=30)
										spplowhighvoldelay=0;
								if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
										nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
										nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS && nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
								
								nSTATE_STATUS_SMS = STATUS_MOTOR_TRIP_HIGHPRESS;
								NowRestartMe = 0;
								return;
						} */  

					}   
			 
					/*if(nTimerSettings.Drrestartpoweronof==1)
					{
						nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
						nTimerSettings.Drrestartpoweronof=0;
					}
					*/
			if(nTimerSettings.CycLicOnOf == 1 )
			{
							if(nCYCTimer == NO_TCOND)
							{
											nMoTr.ActCycLicOnDelay = 0;
											nMoTr.ActCycLicOfDelay = 0;
											nCYCTimer = NO_TCOND;
							}
							else if(nCYCTimer == ON_DELAY)
							{
											Debug("Last On Delay\n\r");
											//nMoTr.ActCycLicOnDelay=NoElePowerOfTimer+nMoTr.ActCycLicOnDelay;
											//NoElePowerOfTimerratio=nMoTr.CycLicOfDelay;
											if(nMoTr.CycLicOnDelay>0)
											{
											NoElePowerOfTimerratio=nMoTr.CycLicOfDelay;
											NoElePowerOfTimerratio=NoElePowerOfTimerratio/nMoTr.CycLicOnDelay;
											NoElePowerOfTimerratio=NoElePowerOfTimerratio*nMoTr.ActCycLicOnDelay;
											Debug("nMoTr.ActCycLicOnDelay= %ld\n\r",nMoTr.ActCycLicOnDelay);					 
											}
											if(nMoTr.ActCycLicOnDelay<=nMoTr.CycLicOnDelay)
											{
												if((NoElePowerOfTimer>=nMoTr.CycLicOfDelay)||(NoElePowerOfTimer>=NoElePowerOfTimerratio))
												{
													nCYCTimer = ON_DELAY;
													nMoTr.ActCycLicOnDelay = 0;
													Debug("No Electricity Timer more Do Started Directly\n\r");							 
												}
												else
												{
													nCYCTimer = ON_DELAY;
													Debug("Keeping On Delay As it is\n\r");
												}
											}
											else
											{
												nCYCTimer = OF_DELAY;
												Debug("Going to be Off delay\n\r");

											}

								}
								else
								{
											nMoTr.ActCycLicOfDelay=NoElePowerOfTimer+nMoTr.ActCycLicOfDelay;					
											Debug("nMoTr.ActCycLicOfDelay= %ld\n\r",nMoTr.ActCycLicOfDelay);					 
											if(nMoTr.ActCycLicOfDelay>=nMoTr.CycLicOfDelay)
											{
												Debug("Going to be on delay\n\r");
												nCYCTimer = ON_DELAY;
												nMoTr.ActCycLicOnDelay = 0;
											}
											else
											{
												nCYCTimer = OF_DELAY;
												Debug("Keeping off Delay As it is\n\r");
											}
								}
								NoElePowerOfTimer = 0;
			}
			else
			{
				nMoTr.ActCycLicOnDelay = 0;
				nMoTr.ActCycLicOfDelay = 0;
				nCYCTimer = NO_TCOND;
			}

			if(nTimerSettings.AutoRstOn == 0 && NowRestartMe == 0)
			{
						Debug("\n\r*******MOTOR OFF AutoRst  == 0 *************\n\r");						 

						/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;

						Returnfromthisonly = 1;
						if(spplowhighvoldelay++>=30)
							spplowhighvoldelay=0;
						NowRestartMe = 0;
							if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS &&
									nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
								nSTATE_STATUS_SMS = STATUS_MOTOROF_SMS;
						return;

				}

			if(nTimerSettings.AutoStIIOnOff == 0 && WorkingOn3Phas == 0)
			{
						Debug("\n\r*******MOTOR OFF AutoStII == 0 *************\n\r");
						/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				
							if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS &&
									nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS &&
								nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
								nSTATE_STATUS_SMS = STATUS_MOTOROF_SMS;
						spplowhighvoldelay++;
						Debug("\n\r*******spplowhighvoldelay ==%03d  *************  SendLowVoltageHighVoltage %d \n\r",spplowhighvoldelay,SendLowVoltageHighVoltage);
						if(SendLowVoltageHighVoltage == 0 && spplowhighvoldelay>=29)
						{
							SendLowVoltageHighVoltage = 1;
							SendSmsToAll = 1;//livedataflagcount1=0;livedataflag1=1;getdataflag=1;enter2=0;
							spplowhighvoldelay =0;
							nSTATE_MOTOR_SMS = STATE_MOTOROF_3PHASE_ONLY_SMS;
						}
						Returnfromthisonly = 1;
						 
						return;
			}
			else if(Mobile2Phs3Phase == 3 && nTimerSettings.AutoStIIOnOff == 1 && WorkingOn3Phas == 0)
			{
				Debug("\n\r*******MOTOR OFF Because Mobile 3 Key Presswed *************\n\r");
				/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				Returnfromthisonly = 1;
				if(spplowhighvoldelay++>=30)
					spplowhighvoldelay=0;
					if(nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS &&
					    nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
						nSTATE_STATUS_SMS = STATUS_MOTOROF_SMS;
				return;
			}
			else if(nTimerSettings.AutoStIIOnOff == 1 && WorkingOn3Phas == 0 && nTimerSettings.AutoRst2On == 0 && NowRestartMe == 0)
			{
			Debug("\n\r*******MOTOR OFF Because AutoRst2On ==0  *************\n\r");
				/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				Returnfromthisonly = 1;
				if(spplowhighvoldelay++>=30)
					spplowhighvoldelay=0;

				NowRestartMe = 0;
					if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS &&
					    nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS &&
						nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
						nSTATE_STATUS_SMS = STATUS_MOTOROF_SMS;
				return;
			}

			VoltageSppRecheckflag=1;
			if(CheckSppHys() == 1 && WorkingOn3Phas == 1)
			{
			/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				
				nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_SPP;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_SPP;
					if(CheckSppHys() == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_SPP;
						PrvOnOff = 0;
					}
					spplowhighvoldelay++;
					Debug("\n\r*******spplowhighvoldelay ==%03d  *************\n\r",spplowhighvoldelay);
				if(SendSPPLowVoltageHighVoltage == 0 && spplowhighvoldelay>=29)
				{
					SendSPPLowVoltageHighVoltage = 1;
					spplowhighvoldelay=0;
					SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
					//nSTATE_MOTOR_SMS = STATUS_MOTOR_TRIP_SPP;
					nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_SPP_SMS;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_SPP;
				}
				Returnfromthisonly = 1;
				return;

			}


			VoltageSppRecheckflag=0;
			if(CheckLowVoltageHys(WorkingOn3Phas) != 0)
			{
			/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				
				Debug("\n\rMOTOR TRIP Low Voltage \n\r");
				nSTATE_STATUS_SMS = STATUS_MOTOR_TRIP_LOWVOLTAGE;
				spplowhighvoldelay++;
				Debug("\n\r*******spplowhighvoldelay ==%03d  *************\n\r",spplowhighvoldelay);
				if(SendLowVoltageHighVoltage == 0&& spplowhighvoldelay>=29)
				{
					SendLowVoltageHighVoltage = 1;
					SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
					spplowhighvoldelay=0;
					nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_LOWVOLTAGE_SMS;
				}
				Returnfromthisonly = 1;
				return;

			}
			else if(CheckHighVoltageHys(WorkingOn3Phas) != 0)
			{
			/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
				
				Debug("\n\rMOTOR TRIP High Voltage \n\r");
				nSTATE_STATUS_SMS = STATUS_MOTOR_TRIP_HIGHVOLTAGE;
				spplowhighvoldelay++;
				Debug("\n\r*******spplowhighvoldelay ==%03d  *************\n\r",spplowhighvoldelay);
				if(SendLowVoltageHighVoltage == 0&& spplowhighvoldelay>=29)
				{
					SendLowVoltageHighVoltage = 1;
					SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
					spplowhighvoldelay =0;
					nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_HIGHVOLTAGE_SMS;
				}
				Returnfromthisonly = 1;
				return;
			}
			else
			{
				SendLowVoltageHighVoltage = 0;
				SendSPPLowVoltageHighVoltage = 0;
				nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATUS_MOTOROF_SMS;
			}

			if(CheckReversePhase() == 1 && WorkingOn3Phas == 1)
			{
				MotorReversePhse = 20;
				if(MotorReversePhasePl++>=20)
				{
					/* "closing all the relay before proceeding" */
						RELAY1=0;					
						RELAY2=0; 
						RELAY4=0;
						RELAY5=0;
					
						Debug("\n\rMOTOR TRIP REVERSE PHASE \n\r");
						nSTATE_STATUS_SMS = STATUS_MOTOR_TRIP_REVERSEPHASE;
						spplowhighvoldelay++;
						Debug("\n\r*******spplowhighvoldelay ==%03d  *************\n\r",spplowhighvoldelay);
						if(MotorReversePhaseSMS == 0 && MotorReversePhasePl>=10&& spplowhighvoldelay>=29)
						{
							MotorReversePhaseSMS = 1;
							spplowhighvoldelay=0;
							SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
							nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_REVERSEPHASE_SMS;
						}
				}
				Returnfromthisonly = 1;
				return;
			}
			else
			{
				if(MotorReversePhse>=1)
				{
					MotorReversePhse--;
					Returnfromthisonly = 1;
					return;
				}
				else
				{
					MotorReversePhse = 0;
				}
			}
			ReadSettingsFile();
			ReadTimerSettings();
			spplowhighvoldelay=0;
			PowerOnDelayComPleted = 0;
			ScrDelayCompleted = 0;
			pfccompleted=0;
			relayTimer=0;
			//scrrelayTimer=0;
			if(nCYCTimer == ON_DELAY || nCYCTimer == NO_TCOND)
				nSTATE_MOTOR = STATE_MOTOR_POWERONDELAY;
			else
			{
				SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
				nSTATE_MOTOR_SMS = STATE_MOTOR_CYCLIC_TRIP_SMS;
				nSTATE_MOTOR =  STATE_MOTOR_TRIP_OFFDELAY;
				nSTATE_STATUS_SMS =STATUS_MOTOR_CYCLIC_TRIP_SMS;
			}
	if(nMoTr.ActMaxRunTimer>=nMoTr.MaxRunTimer && nMoTr.MaxRunTimer != 0)
			{
				SendSmsToAll = 1;
				nSTATE_MOTOR_SMS = STATE_MOTOR_MAX_TRIP_SMS;
				nSTATE_MOTOR = STATE_MOTOR_TRIP_MAXTIME;
			}
			for(Tp=0;Tp<=30;Tp++)
			{
				CheckUpperTank();
			}
			if(CheckUpperTank() == 1)
			{
			SendSmsToAll = 1;
            nSTATE_MOTOR_SMS = STATE_MOTOR_UPPERTANK_TRIP_SMS;
			nSTATE_MOTOR = STATE_MOTOR_TRIP_UPPERTANK;
			Debug("\n\rMotor Off Because of upper Tank\n\r");
			}
				for(Tp=0;Tp<=30;Tp++)
			{
				CheckLowerTank();
			}
			if(CheckLowerTank() == 1)
			{
			SendSmsToAll = 1;
            nSTATE_MOTOR_SMS = STATE_MOTOR_LOWERTANK_TRIP_SMS;
			nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWERTANK;
			Debug("\n\rMotor Off Because of lower Tank\n\r");
			}
	 	/*	if(nMoTr.ActMaxRunTimer>=nMoTr.MaxRunTimer && nMoTr.MaxRunTimer != 0)
			{
				SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
				nSTATE_MOTOR_SMS = STATE_MOTOR_MAX_TRIP_SMS;
				nSTATE_MOTOR = STATE_MOTOR_TRIP_MAXTIME;
			} */
	/*		if(nVaTr.cyclecompleted==1 && nVaTr.cycrestartonof==0)
			{
				SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
				nVaTr.REMTIM=0;
				nSTATE_MOTOR_SMS = STATE_MOTOR_VCYCCOMPLE_TRIP_SMS;
				nSTATE_MOTOR = STATE_MOTOR_TRIP_VCYCCOMPLETE;
				RecheckCounterLT1=0;
			}
			if(nVaTr.reset_nocom_flag==1)
			{
			 if(nVaTr.no_fbk_flag==1 )
			{
				SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
				//nVaTr.REMTIM=0;
				nSTATE_MOTOR_SMS = STATE_MOTOR_NOCOMMUNICATION_TRIP_SMS;
				nSTATE_MOTOR = STATE_MOTOR_TRIP_NOCOMMUNICATION;
				RecheckCounterLT1=0;
			}
			}*/



			PrvPowCond = PowerCondition;
			PrvOnOff = OnOff;
			//spplowhighvoldelay=0;
		}
		NoElePowerOfTimer = 0;
	  //	spplowhighvoldelay=0;
		//aj sAPI_GetRealTimeClock(&datetime);
		//if(WorkingOn3Phas == 0 && PowerOnDelayComPleted == 1 && ScrDelayCompleted == 0)

		if(SCRPowerOnDelay == 1)
		{

		  if(datetime.tm_sec != ActPoScrPrvSec)
			{
				nMoTr.ActPoScrdl++;
				ActPoScrPrvSec = datetime.tm_sec;
			}  
			Debug("nMoTr.ActPoScrdl = %ld  nMoTr.PoScrdl = %ld\n\r",nMoTr.ActPoScrdl,nMoTr.PoScrdl);
			if(nMoTr.ActPoScrdl>=nMoTr.PoScrdl)
			{
					SCRPowerOnDelay = 2;
					/* OUT_DEBUG3(textBuf,"$R,3,1\n\r"); */
            nMoTr.ActScrdl=0;
		        RELAY3=1;
			}

		}
		nTimerSettings.vpfcvolt=nTimerSettings.pfcvolt-20;
		if(debugon == 1)
		Debug("\nPowerOnDelayComPleted %d \n ScrDelayCompleted %d \nnTimerSettings.pfcOnOff %d \npfccompleted %d \n nTimerSettings.pfcvolt %d \n nCurretnCond.BRVoltage %f" ,PowerOnDelayComPleted,ScrDelayCompleted,nTimerSettings.pfcOnOff,pfccompleted,nTimerSettings.pfcvolt,nCurretnCond.BRVoltage);
		if(PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1 && nTimerSettings.pfcOnOff==1&&nTimerSettings.pfcvolt<nCurretnCond.BRVoltage&&pfccompleted==1)
		{
		   RELAY3=0;               //PFC relay turned off
		   pfccompleted=0;
		}
		else if(WorkingOn3Phas == 0&&PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1  && nTimerSettings.pfcOnOff==1&& nTimerSettings.vpfcvolt>nCurretnCond.BRVoltage&&pfccompleted==0)
		{
 		  RELAY3=1;                //PFC relay turned on
			pfccompleted=1;
		 
		}
		else if((nTimerSettings.pfcOnOff==0||WorkingOn3Phas==1)&&PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1&& pfccompleted==1)
		{
			RELAY3=0;
			RELAY2=0;		 
		  pfccompleted=0;
		}
		
		if(PowerOnDelayComPleted == 1 && ScrDelayCompleted == 0 && SCRPowerOnDelay == 2)
		{

			if(datetime.tm_sec != ActScrPrvSec)
			{
				nMoTr.ActScrdl++;
				ActScrPrvSec = datetime.tm_sec;
			}  
			Debug("nMoTr.ActScrdl = %ld  nMoTr.Scrdl = %ld\n\r",nMoTr.ActScrdl,nMoTr.Scrdl);			
			if(nMoTr.ActScrdl>=nMoTr.Scrdl)
			{
				 RELAY2=0;
				if(scrrelayTimer++>3)
				{		 
					ScrDelayCompleted = 1;
					SCRPowerOnDelay = 0;
					//SendSmsToAll = 1;
					NoAcceptSMS=0;
				}
			}
		}
	/*	if(PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1)      
		{
				OUT_DEBUG3(textBuf,"$R,3,0\n\r");
				OUT_DEBUG3(textBuf,"$R,3,0\n\r");
				OUT_DEBUG3(textBuf,"$R,3,0\n\r");
		}*/

		//else if(WorkingOn3Phas != 0)
		//{
		//	ScrDelayCompleted = 1;
		//}

		MotorReversePhaseSMS = 0;
		SendLowVoltageHighVoltage = 0;
		SendSPPLowVoltageHighVoltage = 0;
		switch(nSTATE_MOTOR)
		{
			case STATE_MOTOR_POWERONDELAY:
				{
					//NoAcceptSMS = 1;
					Page = 0;
					nSTATE_STATUS_ONDELAY_SD = STATUS_MOTOR_AT_POWERONDELAY; 
					
					if(datetime.tm_sec != ActOnDelayPrvSec)
					{
						nMoTr.ActOnDelay++;
						ActOnDelayPrvSec = datetime.tm_sec;
						
						if(nMoTr.ActOnDelay<=nMoTr.OnDelay)
						RemainingTime = nMoTr.OnDelay-nMoTr.ActOnDelay;
						 
						value = RemainingTime;
						TpHr = value/3600;
						value = value%3600;
						TpMin = value/60;
						value = value%60;
						TpSec = value;
						if(TpSec<=0)
						TpSec=0;
//						sprintf((char *)lcd_row[0],"ONDEL = %02d:%02d:%02d",TpHr,TpMin,TpSec);
//						FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//						Debug((char *)lcd_row[1],"VRB:%03.0f AMP:%s     ",BigSMS,nCurretnCond.BRVoltage,TpStr);
							sprintf((char *)lcd_row[0],"ON DELAY");
							sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							print_lcd(lcd_row);
						 
						//aj strcpy(DIS_BUF,BigSMS);
						//aj	sAPI_UartWrite(SC_UART, BigSMS, strlen(BigSMS)); 
					
					}

					Debug("\n\rnMoTr.ActOnDelay = %ld  nMoTr.OnDelay = %ld\n\r",nMoTr.ActOnDelay,nMoTr.OnDelay);			 
					 
					 

					if(nMoTr.ActOnDelay>=nMoTr.OnDelay)
					{
					    scrrelayTimer=0;
							relayTimer++;
						/*iret = sAPI_GpioSetValue(RELAY2, SC_GPIORC_HIGH);
					//	iret = sAPI_GpioSetValue(RELAY1, SC_GPIORC_HIGH);*/
						if(WorkingOn3Phas == 0 )
						{
							if(relayTimer>=0 && relayTimer>=8)
							{								
								RELAY5=1;
							}
							if(relayTimer>=18 && relayTimer>=26)
							{
								RELAY2=1;
								SCRPowerOnDelay = 2;
								ScrDelayCompleted = 0;							
								pfccompleted=0;
							}
						}
						else
						{
							if(relayTimer>=0 && relayTimer>=9)
						  {
							 RELAY5=0;
							}
				      if(relayTimer>=20 && relayTimer>=29)
							SCRPowerOnDelay = 1; 
						}


						if(relayTimer>=11 && relayTimer>=18)
						{
							RELAY4=1;
						}
						if(relayTimer>=34)
						{
							RELAY1=1;
						}
						if(relayTimer>=37)
						{
							nSTATE_MOTOR = STATE_MOTOR_STARDELTADELAY;
							Debug("\n\rOn Delay Completed\n\r");
							PowerOnDelayComPleted = 1 ;
							relayTimer=0;
						}
						nMoTr.ActDrRunRestart = 0;
						nMoTr.ActScrdl=0;
						MRunTimer=0;
						MRunflow=0;
					//	pfccompleted=1;   //dg_check
					}
				}
				break;
			case STATE_MOTOR_STARDELTADELAY:
				{
					//NoAcceptSMS = 1;
					nSTATE_STATUS_ONDELAY_SD = STATUS_MOTOR_AT_STARDELTA;
					if(datetime.tm_sec != ActStarDetaPrvSec)
					{
						nMoTr.ActStarDetaDelay++;
						ActStarDetaPrvSec = datetime.tm_sec;
						RemainingTime = nMoTr.StarDetaDelay-nMoTr.ActStarDetaDelay;
						value = RemainingTime;
						TpHr = value/3600;
						value = value%3600;
						TpMin = value/60;
						value = value%60;
						TpSec = value;
						if(TpSec<=0)
						TpSec=0;
						
						if(SCRPowerOnDelay == 2) {
							//sprintf((char *)lcd_row[0],"SDDL = %02d:%02d:%02d ",TpHr,TpMin,TpSec);
							sprintf((char *)lcd_row[0],"SD DELAY");
						}
						else 
							sprintf((char *)lcd_row[0],"LVL SCAN");
//						sprintf((char *)lcd_row[0],"LEVEL SCAN.....");
//						FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//						Debug((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",BigSMS,nCurretnCond.BRVoltage,TpStr);						    
							sprintf((char *)lcd_row[1],"%02d:%02d:%02d",TpHr,TpMin,TpSec);					 
							print_lcd(lcd_row);
						
							/* sAPI_UartWrite(SC_UART, BigSMS, strlen(BigSMS)); */
							// strcpy(textBuf,"$R,2,1\n\r");
							//aj   strcpy(DIS_BUF,BigSMS);
							//aj sAPI_UartWrite(SC_UART, BigSMS, strlen(BigSMS));
					}

					Debug("\n\rnMoTr.ActStarDetaDelay = %ld  nMoTr.StarDetaDelay = %ld\n\r",nMoTr.ActStarDetaDelay,nMoTr.StarDetaDelay);
				 
					/*sprintf(buf,"%s\n\r",BigSMS);
					Debug(buf);*/
					if(nMoTr.ActStarDetaDelay>=nMoTr.StarDetaDelay)
					{
					relayTimer++;
					livedataflag1 = 1;
					livedataflagcount1=0;
						if(nMoTr.StarDetaDelay<=30)
						{
						RELAY1=0;
						}
						else
						{
						/* OUT_DEBUG3(textBuf,"$R,6,0\n\r");
						OUT_DEBUG3(textBuf,"$R,2,1\n\r"); */
							RELAY4=0;
							RELAY1=0;
						}
						if(WorkingOn3Phas == 0)
						{	
							RELAY5=1;
						}
						else
						{	
							RELAY5=0;
						}


						SendSmsflag=1;
						if(relayTimer>=3)
						{
						SendSmsToAll = 1;
						NoAcceptSMS=0;
						relayTimer=0;
						nSTATE_STATUS_ONDELAY_SD = STATUS_MOTOR_ON_PROPERLY;
						nSTATE_MOTOR_SMS = STATE_MOTORON_SMS;
						nSTATE_MOTOR = STATE_MOTOR_ON;
           
						lcd_init(); //reinit LCD whenever Motor On/off 	
							
						CatchDrAccor =1;
						if(CatchDrAccor == 1)
						{
							if(nTimerSettings.DrOccurOnOff == 1)
							{
								CurActDrRunTimer = (datetime.tm_hour*3600)+(datetime.tm_min*60)+datetime.tm_sec;
								ActDrRunTimer = CurActDrRunTimer;
							}
							CatchDrAccor = 0;
						}
						}
						if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_ONDELAY)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_GRTC)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC1)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC2)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC3)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_RTC4)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS==STATE_MOTOR_ON_SWITCH_SMS)
						{

						}
						else if(nSTATE_MOTOR_ON_SMS == STATE_MOTOR_ON_TARGET)
						{

						}
						else
						{
							nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
							nSTATE_STATUS_SMS =STATUS_MOTOR_ON_DEFAULT;
						}
					Debug("\n\rStar Delta Completed\n\r");

					}
				}

				break;
			case STATE_MOTOR_ON:
				{
                    
					  DryRunOccUpdate = 0;

					  if(ScrDelayCompleted == 1)
						{
								if(SendSmsflag == 1 )
								{
										RELAY1=0;
										if(delayCounterSms++>=10)
										{
											//SendSmsToAll=1;
											SendSmsflag=0;
											delayCounterSms=0;
										}
								}
								NoAcceptSMS =0;
						}  	

					if(SetToGreenFlag == 1)
					{
						Debug("\n\r==========SetToGreenFlag %d   Stg3FirstTimer %d   WorkingOn3Phas %d ========\n\r",SetToGreenFlag,
						                                                                                              Stg3FirstTimer,WorkingOn3Phas);					 
					}

					if(SetToGreenFlag == 1 && Stg3FirstTimer == 0 && WorkingOn3Phas == 0)
					{
						//TpCur = (nCurretnCond.Rcurrent+nCurretnCond.Ycurrent+nCurretnCond.Bcurrent)/3;
						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsII =(double)TpCur*1.5;
						nTimerSettings.DrAmpsII =(double)TpCur*0.7;
						//sprintf(buf,"\n\rTpCur = %f\n\r nTimerSettings.OlAmpsIII = %f\n\r nTimerSettings.DrAmpsIII = %f\n\r",TpCur,nTimerSettings.OlAmpsIII,nTimerSettings.DrAmpsIII);

						nTimerSettings.OlOnOff = 1;
						nTimerSettings.OlScanHr = 0;
						nTimerSettings.OlScanMin = 0;
						nTimerSettings.OlScanSec = 10;
						nTimerSettings.DrScOnOf = 1;
						nTimerSettings.DrScHr = 0;
						nTimerSettings.DrScMin = 0;
						nTimerSettings.DrScSec = 20;
						nMSettings.DryRunOnOff = 1;
						SetToGreenFlag = 0;
						Stg3FirstTimer = 1;
						SendSmsToAll = 1;
						nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_STGII_SMS;

						WriteTimerSettings();
						ReadTimerSettings();
					}
					else if(SetToGreenFlag == 1 && Stg2FirstTimer == 0 && WorkingOn3Phas == 1)
					{

						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsIII = (double)TpCur*1.5;
						nTimerSettings.DrAmpsIII = (double)TpCur*0.7;
						//sprintf(buf,"\n\rTpCur = %f\n\r nTimerSettings.OlAmpsIII = %f\n\r nTimerSettings.DrAmpsIII = %f\n\r",TpCur,nTimerSettings.OlAmpsIII,nTimerSettings.DrAmpsIII);
						// Debug(buf);

						nTimerSettings.OlOnOff = 1;
						nTimerSettings.OlScanHr = 0;
						nTimerSettings.OlScanMin = 0;
						nTimerSettings.OlScanSec = 10;
						nTimerSettings.DrScOnOf = 1;
						nTimerSettings.DrScHr = 0;
						nTimerSettings.DrScMin = 0;
						nTimerSettings.DrScSec = 20;
						nMSettings.DryRunOnOff = 1;
						SetToGreenFlag = 0;
						Stg2FirstTimer = 1;
						SendSmsToAll = 1;
						nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_STGIII_SMS;


						WriteTimerSettings();
						ReadTimerSettings();

					}
					else if(SetToGreenFlag == 1)
						SetToGreenFlag = 0;

					if(nTimerSettings.CycLicOnOf == 1)
					{
						nSTATE_STATUS_SMS =STATUS_MOTOR_ON_ONDELAY;
					}

					writetorecordfirsttime = 0;
					RelayConditionUpDateTimer++;
					if(RelayConditionUpDateTimer>=5 && ScrDelayCompleted==1)
					{
						RelayConditionUpDateTimer = 0;

						if(WorkingOn3Phas == 0)
						{	
							RELAY5=1;
						}
						else
						{
							RELAY5=0;
						}
						if(nMoTr.StarDetaDelay<=30)
						{
							RELAY4=1;
							RELAY1=0;
							if(pfccompleted==0)
							{
								RELAY3=0;
							}
							//pfccompleted=0;
						}
						else
						{
							RELAY4=0;
							RELAY1=1;
						}

					}
					RecheckTankStatus = 0;
					if(datetime.tm_sec != ActOnDelayPrvSec)
					{
						RunTimer++;
						MRunTimer++;
					/*	if(nVaTr.calflowrateonof==0)
						{
						Runflow = Runflow + (zone[nDripSettings.stp].runflowrate);
						MRunflow = MRunflow + (zone[nDripSettings.stp].runflowrate);
						}
						else
						{
						if(WorkingOn3Phas == 1)
						{
						Runflow = Runflow + nTimerSettings.calflow3;
						MRunflow = MRunflow + nTimerSettings.calflow3;
						}
						else
						{
						Runflow = Runflow + nTimerSettings.calflow2;
						MRunflow = MRunflow + nTimerSettings.calflow2;
						}
						}  */

						nMoTr.ActMaxRunTimer++;
						ActOnDelayPrvSec = datetime.tm_sec;
					}
					 
					if(nMoTr.ActMaxRunTimer>=nMoTr.MaxRunTimer && nMoTr.MaxRunTimer != 0)
					{
						SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
						nSTATE_MOTOR_SMS = STATE_MOTOR_MAX_TRIP_SMS;
						nSTATE_MOTOR = STATE_MOTOR_TRIP_MAXTIME;
					}			 
					
					else if(CyclicTimeron() == 0  )
					{

						nMoTr.ActCycLicOfDelay = 0;
						DISPLAYMsg = NO_COND;
						nCYCTimer = ON_DELAY;
						// Debug("\n\rGonna call checkmotor");
						CheckMotor();
						switch(nSTATE_MOTOR_PROBLEM)
						{
							case STATE_MOTOR_STARTER:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_STARTER_TRIP_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_STARTER;
									Debug("\n\rMotor Off Because of Strter Trip\n\r");
								}
								break;
							case STATE_MOTOR_NOLOAD:
								{
									nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN_SCAN;
									Debug("\n\rMotor No Load Scan Timer\n\r");
								}
								break;
							case STATE_MOTOR_OVERLOAD:
								{
									nSTATE_MOTOR = STATE_MOTOR_TRIP_OVERLOAD_SCAN;
									Debug("\n\rMotor ol Load Scan Timer\n\r");
								}
								break;
					 	case STATE_MOTOR_HIGHPRESS:
								{
									nSTATE_MOTOR = STATE_MOTOR_TRIP_HIGHPRESS_SCAN;
									Debug("\n\rMotor ol Load Scan Timer\n\r");
								}
								break;
								case STATE_MOTOR_LOWPRESS:
								{
									nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWPRESS_SCAN;
									Debug("\n\rMotor ol Load Scan Timer\n\r");
								}
								break; 
							case STATE_MOTOR_SPP:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_SPP_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_SPP;
									Debug("\n\rMotor No Load Scan Timer\n\r");
								}
								break;
							case STATE_MOTOR_CSPP:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_CURRENTSPP_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_CURRENTSPP;
									Debug("\n\rMotor No Load Scan Timer\n\r");
								}
								break;
							case STATE_MOTOR_UPPERTANK:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_UPPERTANK_TRIP_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_UPPERTANK;
									Debug("\n\rMotor Off Because of upper Tank\n\r");
								}
								break;
							case STATE_MOTOR_LOWERTANK:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_LOWERTANK_TRIP_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWERTANK;
									Debug("\n\rMotor Off Because of lower Tank\n\r");
								}
								break;
							case STATE_MOTOR_LOWVOLTAGE:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_LOWVOLTAGE_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWVOLTAGE;
									Debug("\n\rMotor Off Because of low Voltage\n\r");
								}
								break;
							case STATE_MOTOR_HIGHVOLTAGE:
								{
									SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
									nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_HIGHVOLTAGE_SMS;
									nSTATE_MOTOR = STATE_MOTOR_TRIP_HIGHVOLTAGE;
									Debug("\n\rMotor Off Because of High Voltage\n\r");
								}
								break;
							case STATE_MOTOR_OK:
								{
									nSTATE_MOTOR = STATE_MOTOR_ON;
								}
								break;
						}
					}
					else
					{
				        nCYCTimer = OF_DELAY;
						SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
						nSTATE_MOTOR_SMS = STATE_MOTOR_CYCLIC_TRIP_SMS;
						nSTATE_MOTOR =  STATE_MOTOR_TRIP_OFFDELAY;
						nSTATE_STATUS_SMS =STATUS_MOTOR_CYCLIC_TRIP_SMS;
					}
				}
				break;
			case STATE_MOTOR_TRIP_LOWVOLTAGE:
				{
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{

						 
						//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
						//ReadTripConditions();
						if(WorkingOn3Phas == 1)
						{
							//sprintf(buf,"GetLocalTime:%d/%d/%d %d:%d:%d\r\n",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							// Debug(buf);
							if(WhichPhaseHaveingProblem == 1)
								sprintf(BigSMS,"MOTOR OFF BECAUSE LOW VOLTAGE-MOTOR RUNING AT III PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.LowVoltIII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
								sprintf(BigSMS,"MOTOR OFF BECAUSE LOW VOLTAGE-MOTOR RUNING AT III PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.LowVoltIII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
								sprintf(BigSMS,"MOTOR OFF BECAUSE LOW VOLTAGE-MOTOR RUNING AT III PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.LowVoltIII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						}
						else
						{
							if(WhichPhaseHaveingProblem == 1)
								sprintf(BigSMS,"MOTOR OFF BECAUSE LOW VOLTAGE-MOTOR RUNING AT II PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.LowVoltII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
								sprintf(BigSMS,"MOTOR OFF BECAUSE LOW VOLTAGE-MOTOR RUNING AT II PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.LowVoltII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
								sprintf(BigSMS,"MOTOR OFF BECAUSE LOW VOLTAGE-MOTOR RUNING AT II PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.LowVoltII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						}
//						sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
//						Triprec.TotalRecords++;
//						WriteTripConditions();
					}


					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_LOWVOLTAGE;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWVOLTAGE;
					if(CheckLowVoltageHys(WorkingOn3Phas) == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_LOWVOLTAGE;
						PrvOnOff = 0;
					}
					/*Tp = Check2Phase();
					if(Tp != WorkingOn3Phas)
						PrvOnOff = 0;*/
				}
				break;
			case STATE_MOTOR_TRIP_HIGHVOLTAGE:
				{
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
					 
					//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
						//ReadTripConditions();
						if(WorkingOn3Phas == 1)
						{
							if(WhichPhaseHaveingProblem == 1)
								sprintf(BigSMS,"MOTOR OFF BECAUSE HIGH VOLTAGE-MOTOR RUNING AT III PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.HighVoltIII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
								sprintf(BigSMS,"MOTOR OFF BECAUSE HIGH VOLTAGE-MOTOR RUNING AT III PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.HighVoltIII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
								sprintf(BigSMS,"MOTOR OFF BECAUSE HIGH VOLTAGE-MOTOR RUNING AT III PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.HighVoltIII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						}
						else
						{
							if(WhichPhaseHaveingProblem == 1)
								sprintf(BigSMS,"MOTOR OFF BECAUSE HIGH VOLTAGE-MOTOR RUNING AT II PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.HighVoltII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
								sprintf(BigSMS,"MOTOR OFF BECAUSE HIGH VOLTAGE-MOTOR RUNING AT II PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.HighVoltII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
								sprintf(BigSMS,"MOTOR OFF BECAUSE HIGH VOLTAGE-MOTOR RUNING AT II PHASE-SET VOLT=%03d-RPHASE  VOLT = %03d-%04d/%02d/%04d %02d:%02d:%02d",nTimerSettings.HighVoltII,(int)TripVoltage,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						}
//						sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
//						Triprec.TotalRecords++;
//						WriteTripConditions();
					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_HIGHVOLTAGE;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_HIGHVOLTAGE;
					if(CheckHighVoltageHys(WorkingOn3Phas) == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_HIGHVOLTAGE;
						PrvOnOff = 0;
					}
					
					/*Tp = Check2Phase();
					if(Tp == 3)
					{
						if(WorkingOn3Phas != 1)
							PrvOnOff = 0;	
					}
					else if(Tp == 2)					
					{
						if(WorkingOn3Phas != 0)
							PrvOnOff = 0;	
					}
					else
						return;*/
				}
				break;
			case STATE_MOTOR_TRIP_SPP:
				{					 

					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						 
						//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
						//ReadTripConditions();
						sprintf(BigSMS,"MOTOR OFF BECAUSE VOLTAGE SPP-MOTOR RUNING AT III PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						//sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
						//Triprec.TotalRecords++;
						//WriteTripConditions();
					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_SPP;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_SPP;
					if(CheckSpp() == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_SPP;
						PrvOnOff = 0;
					}
				/*	 Tp = Check2Phase();
					if(Tp == 3)
					{
						if(WorkingOn3Phas != 1)
							PrvOnOff = 0;
					}
					else if(Tp == 2)
					{
						if(WorkingOn3Phas != 0)
							PrvOnOff = 0;
					}
					else
						return; */
				}
				break;
			case STATE_MOTOR_TRIP_CURRENTSPP:
				{					 

					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						 

						//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
						//ReadTripConditions();
						sprintf(BigSMS,"MOTOR OFF BECAUSE CURRENT SPP-MOTOR RUNING AT III PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						//sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
						//Triprec.TotalRecords++;
						//WriteTripConditions();
					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_CURRENTSPP;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_CURRENTSPP;
				}
				break;
			case STATE_MOTOR_TRIP_STARTER:
				{
					 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;

					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						 
						//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
					//	ReadTripConditions();
						if(WorkingOn3Phas == 1)
							sprintf(BigSMS,"MOTOR OFF BECAUSE STARTER TRIP-MOTOR RUNING AT III PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						else
							sprintf(BigSMS,"MOTOR OFF BECAUSE STARTER TRIP-MOTOR RUNING AT II PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						//sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
						//Triprec.TotalRecords++;
						//WriteTripConditions();
					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_STARTER_TRIP_SMS;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_STARTER;
					if(CyclicTimerof() == 1)
					{
						nCYCTimer = NO_TCOND;
						nMoTr.ActCycLicOnDelay = 0;
						PrvOnOff = 0;
					}

					if(MotorStarterTripCount<=1)
					{
						if(datetime.tm_sec != ActOnDelayPrvSec)
						{
							ActMotorStarterTripTimer++;
							Debug("\n\r***ActMotorStarterTripTimer = %d ************\n\r",ActMotorStarterTripTimer);							
							ActOnDelayPrvSec = datetime.tm_sec;
						}
						if(ActMotorStarterTripTimer>=180)
						{
							ActMotorStarterTripTimer = 0;
							MotorStarterTripCount++;
							OverAllStarterTrip++;
							if(OverAllStarterTrip>=2)
							{
								Debug("\n\r*** Starter Trip Restart Count OverAllStarterTrip = %d Reached************\n\r",OverAllStarterTrip);								
							}
							else
							{
								Debug("\n\r*** Starter Trip Restart Count OverAllStarterTrip = %d ************\n\r",OverAllStarterTrip);								
								Debug("\n\r*** Starter Trip Restart Count MotorStarterTripCount = %d ************\n\r",MotorStarterTripCount);								
								PrvOnOff = 0;
								ActMotorStarterTripTimer = 0;
							}
						}

					}

				}
				break;		 
			case STATE_MOTOR_TRIP_DRYRUN_SCAN:
				{
					PreviousTrip = NO_TRIP_FLAG;
					if(SetToGreenFlag == 1 && Stg3FirstTimer == 0 && WorkingOn3Phas == 0)
					{
						//TpCur = (nCurretnCond.Rcurrent+nCurretnCond.Ycurrent+nCurretnCond.Bcurrent)/3;
						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsII =(double) TpCur*1.5;
						nTimerSettings.DrAmpsII =(double)TpCur*0.7;
						//sprintf(buf,"\n\rTpCur = %f\n\r nTimerSettings.OlAmpsIII = %f\n\r nTimerSettings.DrAmpsIII = %f\n\r",TpCur,nTimerSettings.OlAmpsIII,nTimerSettings.DrAmpsIII);
						// Debug(buf);
						nTimerSettings.OlOnOff = 1;
						nTimerSettings.OlScanHr = 0;
						nTimerSettings.OlScanMin = 0;
						nTimerSettings.OlScanSec = 10;
						nTimerSettings.DrScOnOf = 1;
						nTimerSettings.DrScHr = 0;
						nTimerSettings.DrScMin = 0;
						nTimerSettings.DrScSec = 20;
						nMSettings.DryRunOnOff = 1;
						SetToGreenFlag = 0;
						Stg3FirstTimer = 1;
						SendSmsToAll = 1;
						nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS) STATE_STGII_SMS;

						WriteTimerSettings();
						ReadTimerSettings();
					}
					else if(SetToGreenFlag == 1 && Stg2FirstTimer == 0 && WorkingOn3Phas == 1)
					{

						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsIII =(double) TpCur*1.2f;
						nTimerSettings.DrAmpsIII = (double)TpCur*0.7f;
						//sprintf(buf,"\n\rTpCur = %f\n\r nTimerSettings.OlAmpsIII = %f\n\r nTimerSettings.DrAmpsIII = %f\n\r",TpCur,nTimerSettings.OlAmpsIII,nTimerSettings.DrAmpsIII);
						// Debug(buf);

						nTimerSettings.OlOnOff = 1;
						nTimerSettings.OlScanHr = 0;
						nTimerSettings.OlScanMin = 0;
						nTimerSettings.OlScanSec = 10;
						nTimerSettings.DrScOnOf = 1;
						nTimerSettings.DrScHr = 0;
						nTimerSettings.DrScMin = 0;
						nTimerSettings.DrScSec = 20;
						nMSettings.DryRunOnOff = 1;
						SetToGreenFlag = 0;
						Stg2FirstTimer = 1;
						SendSmsToAll = 1;
						nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_STGIII_SMS;


						WriteTimerSettings();
						ReadTimerSettings();

					}
					else if(SetToGreenFlag == 1)
						SetToGreenFlag = 0;



					DISPLAYMsg = NO_LOAD;
					// Debug("\n\rGonna Checkmotor 25");
					CheckMotor();
					if(nSTATE_MOTOR_PROBLEM == STATE_MOTOR_NOLOAD)
					{



						if(datetime.tm_sec != ActStarDetaPrvSec)
						{
							nMoTr.ActDrRunScan++;
							ActStarDetaPrvSec = datetime.tm_sec;
						}
					  Debug("\n\rnMoTr.ActDrRunScan = %ld  nMoTr.DrRunScan = %ld\n\r",nMoTr.ActDrRunScan,nMoTr.DrRunScan);
					
						if(nTimerSettings.DrOccurOnOff == 1)
						{
							if(DryRunOccUpdate == 0)
							{
								SetDrRunTimer = (nTimerSettings.DrOccurTimHr*3600)+(nTimerSettings.DrOccurTimMin*60)+nTimerSettings.DrOccurTimSec;
								CurActDrRunTimer = (datetime.tm_hour*3600)+(datetime.tm_min*60)+datetime.tm_sec;
								if(SetDrRunTimer>=(CurActDrRunTimer-ActDrRunTimer))
								{
									Debug("\n\r DryRun Occ  ActDrRunCount= %d\n\r",ActDrRunCount);
									
									if(ActDrRunCount>=nTimerSettings.DrOccurNum)
									{
										SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
										nSTATE_STATUS_SMS =STATUS_MOTOR_DRYRUN_TRIP_SMS;
										nSTATE_MOTOR_SMS = STATE_MOTOR_DRYRUN_TRIP_SMS;
										nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
										Debug("\n\r Trip Because of DryRun Occorance\n\r");
									}
									else
										ActDrRunCount++;
								}
								DryRunOccUpdate = 1;
							}
						}

						if(nMoTr.ActDrRunScan>=nMoTr.DrRunScan)
						{
							SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
							nSTATE_STATUS_SMS =STATUS_MOTOR_DRYRUN_TRIP_SMS;
							nSTATE_MOTOR_SMS = STATE_MOTOR_DRYRUN_TRIP_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
							Debug("\n\rDry Run SCAN Completed\n\r");
						}
					}
					else
					{
						CatchDrAccor =1;
						if(CatchDrAccor == 1)
						{
							if(nTimerSettings.DrOccurOnOff == 1)
							{
								CurActDrRunTimer = (datetime.tm_hour*3600)+(datetime.tm_min*60)+datetime.tm_sec;
								ActDrRunTimer = CurActDrRunTimer;
							}
							CatchDrAccor = 0;
						}
						nMoTr.ActDrRunScan = 0;
						nSTATE_MOTOR = STATE_MOTOR_ON;
					}

				}
				break;
			case STATE_MOTOR_TRIP_OVERLOAD_SCAN:
				{
					PreviousTrip = NO_TRIP_FLAG;
					if(SetToGreenFlag == 1 && Stg3FirstTimer == 0 && WorkingOn3Phas == 0)
					{
						//TpCur = (nCurretnCond.Rcurrent+nCurretnCond.Ycurrent+nCurretnCond.Bcurrent)/3;
						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsII =(double) TpCur*1.2f;
						nTimerSettings.DrAmpsII =(double)TpCur*0.7f;
						//sprintf(buf,"\n\rTpCur = %f\n\r nTimerSettings.OlAmpsIII = %f\n\r nTimerSettings.DrAmpsIII = %f\n\r",TpCur,nTimerSettings.OlAmpsIII,nTimerSettings.DrAmpsIII);
						// Debug(buf);
						nTimerSettings.OlOnOff = 1;
						nTimerSettings.OlScanHr = 0;
						nTimerSettings.OlScanMin = 0;
						nTimerSettings.OlScanSec = 10;
						nTimerSettings.DrScOnOf = 1;
						nTimerSettings.DrScHr = 0;
						nTimerSettings.DrScMin = 0;
						nTimerSettings.DrScSec = 20;
						nMSettings.DryRunOnOff = 1;
						SetToGreenFlag = 0;
						Stg3FirstTimer = 1;
						SendSmsToAll = 1;
						nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_STGII_SMS;

						WriteTimerSettings();
						ReadTimerSettings();
					}
					else if(SetToGreenFlag == 1 && Stg2FirstTimer == 0 && WorkingOn3Phas == 1)
					{

						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsIII =(double)TpCur*1.2f;
						nTimerSettings.DrAmpsIII =(double)TpCur*0.7f;
						//sprintf(buf,"\n\rTpCur = %f\n\r nTimerSettings.OlAmpsIII = %f\n\r nTimerSettings.DrAmpsIII = %f\n\r",TpCur,nTimerSettings.OlAmpsIII,nTimerSettings.DrAmpsIII);
						// Debug(buf);

						nTimerSettings.OlOnOff = 1;
						nTimerSettings.OlScanHr = 0;
						nTimerSettings.OlScanMin = 0;
						nTimerSettings.OlScanSec = 10;
						nTimerSettings.DrScOnOf = 1;
						nTimerSettings.DrScHr = 0;
						nTimerSettings.DrScMin = 0;
						nTimerSettings.DrScSec = 20;
						nMSettings.DryRunOnOff = 1;
						SetToGreenFlag = 0;
						Stg2FirstTimer = 1;
						SendSmsToAll = 1;
						nSTATE_MOTOR_SMS =(STATE_MOTOR_SMS)STATE_STGIII_SMS;
						
						WriteTimerSettings();
						ReadTimerSettings();

					}
					else if(SetToGreenFlag == 1)
						SetToGreenFlag = 0;

					DISPLAYMsg = OV_LOAD;
					CheckMotor();
					if(nSTATE_MOTOR_PROBLEM == STATE_MOTOR_OVERLOAD)
					{
						if(datetime.tm_sec != ActStarDetaPrvSec)
						{
							nMoTr.ActOlScan++;
							ActStarDetaPrvSec = datetime.tm_sec;
						}

						Debug("\n\rnMoTr.ActOlScan = %ld  nMoTr.ActOlScan = %ld\n\r",nMoTr.ActOlScan,nMoTr.ActOlScan);					
						if(nMoTr.ActOlScan>=nMoTr.OlScan)
						{
							SendSmsToAll = 1;livedataflagcount1=0;livedataflag1=1;
							nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_OVERLOAD;
							nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_OVERLOAD_SMS;
							nSTATE_MOTOR = STATE_MOTOR_TRIP_OVERLOAD;
							Debug("\n\rOver Load SCAN Completed\n\r");

							Debug("\n\rMotor Trip Over Load\n\r");
						}
					}
					else
					{
						nMoTr.ActOlScan = 0;
						nSTATE_MOTOR = STATE_MOTOR_ON;
					}

				}
				break;
		 
			case STATE_MOTOR_TRIP_OVERLOAD:
				{
					 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
				   SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
						//ReadTripConditions();
						if(WorkingOn3Phas == 1)
						{
						if(WhichPhaseHaveingProblem == 1)
						{
							FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
							sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
							FloatroString1Dig(TpStr,TripCurrent);
							//sprintf(BigSMS,"%s-RPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						}
						else if(WhichPhaseHaveingProblem == 2)
						{
							FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
							sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
							FloatroString1Dig(TpStr,TripCurrent);
							sprintf(BigSMS,"%s-YPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						}
						//sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNIING AT III PHASE-SET AMPS=%03.1f-YPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.OlAmpsIII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						else if(WhichPhaseHaveingProblem == 3)
						{
							FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
							sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
							FloatroString1Dig(TpStr,TripCurrent);
							sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						}
						//sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNIING AT III PHASE-SET AMPS=%03.1f-BPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.OlAmpsIII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						}
						else
							{
							if(WhichPhaseHaveingProblem == 1)
							{
								FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
							//sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNIING AT II PHASE-SET AMPS=%03.1f-RPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.OlAmpsII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
							{
								FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
							//sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNIING AT II PHASE-SET AMPS=%03.1f-YPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.OlAmpsII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
							{
								FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
							//sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNIING AT II PHASE-SET AMPS=%03.1f-BPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.OlAmpsII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

							}
						//sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
					  //Triprec.TotalRecords++;
						//WriteTripConditions();
					}
					PreviousTrip = OV_LOAD_TRIP_FLAG;
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_OVERLOAD;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_OVERLOAD;
					if(nTimerSettings.OlRstVolOnoff == 1 && WorkingOn3Phas == 0)
					{
						if(nCurretnCond.RVoltage>nTimerSettings.OlRstVol)
						{

						}
						else if(nCurretnCond.YVoltage>nTimerSettings.OlRstVol)
						{

						}
						else if(nCurretnCond.BVoltage>nTimerSettings.OlRstVol)
						{

						}
						else
						{
							RecheckOlRstState++;
							if(RecheckOlRstState>=5)
							{
								Debug("\n\rMotor Will on Because of Olrst\n\r");
								nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_OLVOLTAGE;
								PrvOnOff = 0;
							}
						}
					}
				}
				break;
			case STATE_MOTOR_TRIP_DRYRUN:
				{					 

					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
                SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						//sAPI_GetRealTimeClock(&datetime);
						writetorecordfirsttime = 1;
				   		//ReadTripConditions();
						if(WorkingOn3Phas == 1)
						{
							if(WhichPhaseHaveingProblem == 1)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-RPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						  }
								//sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNIING AT III PHASE-SET AMPS=%03.1f-RPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.DrAmpsIII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-YPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						  }
								//sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNIING AT III PHASE-SET AMPS=%03.1f-YPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.DrAmpsIII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						  }
								//sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNIING AT III PHASE-SET AMPS=%03.1f-BPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.DrAmpsIII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
            }
						else
						{
							if(WhichPhaseHaveingProblem == 1)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-RPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
								//sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNIING AT II PHASE-SET AMPS=%03.1f-RPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.DrAmpsII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 2)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-YPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
								//sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNIING AT II PHASE-SET AMPS=%03.1f-YPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.DrAmpsII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							else if(WhichPhaseHaveingProblem == 3)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
								//sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNIING AT II PHASE-SET AMPS=%03.1f-BPHASE CURRENT = %0.1f-%02d/%02d/%04d %02d:%02d:%02d",nTimerSettings.DrAmpsII,TripCurrent,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						}
						//sprintf(Triprec.Records[Triprec.TotalRecords],"%s",BigSMS);
						//Triprec.TotalRecords++;
						//WriteTripConditions();
					}
						 PreviousTrip = DYRUN_LOAD_TRIP_FLAG;
						//nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_OVERLOAD;
						//nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
					if(nTimerSettings.DrReOnOf == 1)
					{
						nTimerSettings.Drrestartpoweronof=1;
						if(datetime.tm_sec != ActStarDetaPrvSec)
						{
							nMoTr.ActDrRunRestart++;
							ActStarDetaPrvSec = datetime.tm_sec;
						}
						Debug("\n\rnnMoTr.ActDrRunRestart = %ld  nMoTr.DrRunRestart = %ld\n\r",nMoTr.ActDrRunRestart,nMoTr.DrRunRestart);						
						RemainingDrTime = nMoTr.DrRunRestart-nMoTr.ActDrRunRestart;
						if(nMoTr.ActDrRunRestart>=nMoTr.DrRunRestart)
						{
							nSTATE_MOTOR = STATE_MOTOR_TRIP_RESTART;
							Debug("\n\rReStart Time Completed\n\r");
							nTimerSettings.Drrestartpoweronof=0;
						}
						else
						{
							nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
						}
					}
					else
					{
						nSTATE_MOTOR = STATE_MOTOR_TRIP_DRYRUN;
					}

					nCYCTimer = OF_DELAY;
					if(CyclicTimerof() == 1)
					{
						nCYCTimer = NO_TCOND;
						nMoTr.ActCycLicOnDelay = 0;
						PrvOnOff = 0;
					}

				}
				break;
			case STATE_MOTOR_TRIP_UPPERTANK:
				{
					nSTATE_STATUS_SMS = STATUS_MOTOR_UPPERTANK_TRIP_SMS;
				 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
					SCRPowerOnDelay=0;
				 	if(CheckUpperTank() == 0)
					{
						RecheckTankStatus++;
						if(RecheckTankStatus>=5)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_ON_UPPERTANK;
							nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_UPPERTANK;
							PrvOnOff = 0;

						}
					}
					else
						RecheckTankStatus = 0;
					if(CyclicTimerof() == 1)
					{
						nCYCTimer = NO_TCOND;
						nMoTr.ActCycLicOnDelay = 0;
						PrvOnOff = 0;
					}	
				}
				break;
			case STATE_MOTOR_TRIP_LOWERTANK:
				{
					nSTATE_STATUS_SMS = STATUS_MOTOR_LOWERTANK_TRIP_SMS;
			   	RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
				  SCRPowerOnDelay=0;
					if(CheckLowerTank() == 0)
					{
						RecheckTankStatus++;
						if(RecheckTankStatus>=5)
						{
							nSTATE_STATUS_SMS = STATUS_MOTOR_ON_LOWERTANK;
							nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_LOWERTANK;
							PrvOnOff = 0; 
						}
					}
					else
						RecheckTankStatus = 0;
					nCYCTimer = OF_DELAY;
					if(CyclicTimerof() == 1)
					{
						nCYCTimer = NO_TCOND;
						nMoTr.ActCycLicOnDelay = 0;
						PrvOnOff = 0;
					}
				}
				break;
			case STATE_MOTOR_TRIP_TARGET:
				{ 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					SCRPowerOnDelay=0;
				}
				break;
			case STATE_MOTOR_TRIP_RESTART:
				{
					nSTATE_STATUS_SMS = STATUS_ON_RESTART_NOLOAD; 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					PrvOnOff = 0;
					SCRPowerOnDelay=0;
				}
				break;
			case STATE_MOTOR_TRIP_MAXTIME:
				{
					nSTATE_MOTOR = STATE_MOTOR_TRIP_MAXTIME;
					nSTATE_STATUS_SMS = STATUS_MOTOR_MAX_TRIP_SMS;
					
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
					
				SCRPowerOnDelay=0;
				}
				break;			 
			case STATE_MOTOR_TRIP_NOCOMMUNICATION:
				
						nSTATE_MOTOR = STATE_MOTOR_TRIP_NOCOMMUNICATION;
						nSTATE_STATUS_SMS = STATUS_MOTOR_NOCOMMUNICATION_TRIP_SMS;

						RELAY1=0;
						RELAY2=0;
						RELAY4=0;
						RELAY5=0;
						break;
			case STATE_MOTOR_TRIP_OFFDELAY:
				{					 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
				  SCRPowerOnDelay=0;
					nCYCTimer = OF_DELAY;
					if(CyclicTimerof() == 1)
					{
						nCYCTimer = NO_TCOND;
						nMoTr.ActCycLicOnDelay = 0;
						PrvOnOff = 0;
					}
				}
				break;
			case STATE_MOTOR_OFF:
				{
				 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
				SCRPowerOnDelay=0;
					nCYCTimer = OF_DELAY;
					if(CyclicTimerof() == 1)
					{
						nCYCTimer = NO_TCOND;
						nMoTr.ActCycLicOnDelay = 0;
						PrvOnOff = 0;
					}
				}
				break;
			default:
				 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
				SCRPowerOnDelay=0;
				break;
		}

	}
	else
	{
		RelayConditionUpDateTimer++;
		if(RelayConditionUpDateTimer>=5)
		{
			RelayConditionUpDateTimer = 0;
			 
					RELAY1=0;
					RELAY2=0;
					RELAY4=0;
					RELAY5=0;
		}
		PrvPowCond = PowerCondition;
		nSTATE_STATUS_ONDELAY_SD = STATUS_MOTOR_AT_OFF;
		if(PowerCondition == 1)
		{
			if(datetime.tm_sec != prvNoElePowerOfTimersec)
		{
			NoElePowerOfTimer++;
			nMoTr.ActnopowerRunTimer++;
			nMoTr.ActofpowerRunTimer++;

			prvNoElePowerOfTimersec = datetime.tm_sec;
			Debug("NoElePowerOfTimer=%ld\n\r",NoElePowerOfTimer);       
			
		}
			nSTATE_STATUS_SMS = STATUS_NO_ELECTRICICY;
			//NoElePowerOfTimer++;
			//nMoTr.ActnopowerRunTimer++;
			//nMoTr.ActofpowerRunTimer++;
			NowRestartMe = 0;
		}
		else
		{
			if(	nSTATE_STATUS_SMS != STATUS_MOTOR_GRTCOF_TRIP_SMS &&
			    nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF1_TRIP_SMS &&
				nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF2_TRIP_SMS &&
				nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF3_TRIP_SMS &&
				nSTATE_STATUS_SMS != STATUS_MOTOR_RTCOF4_TRIP_SMS &&
				nSTATE_STATUS_SMS != STATUS_MOTOR_ON_SWITCH_TRIP_SMS )
					nSTATE_STATUS_SMS = STATUS_MOTOROF_SMS;
			if(MotorTriedToStart == 1)
			{
				NowRestartMe = 1;
				MotorTriedToStart = 0;
			}
		}
		nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;



		if(PrvOnOff != OnOff && PowerCondition == 0)
		{
			nMoTr.ActCycLicOnDelay = 0;
			nMoTr.ActCycLicOfDelay = 0;

			NowRestartMe = 1;
			if(nSTATE_MOTOR_SMS != STATE_MOTOR_GRTCOF_TRIP_SMS && nSTATE_MOTOR_SMS != STATE_MOTOR_RTCOF1_TRIP_SMS &&
				nSTATE_MOTOR_SMS != STATE_MOTOR_RTCOF2_TRIP_SMS && nSTATE_MOTOR_SMS != STATE_MOTOR_RTCOF3_TRIP_SMS &&
				nSTATE_MOTOR_SMS != STATE_MOTOR_RTCOF4_TRIP_SMS && nSTATE_STATUS_SMS != STATE_MOTOR_OFF_TARGET)
				{
					SendSmsToAll = 1;
					nSTATE_MOTOR_SMS = STATE_MOTOROF_SMS;
					Debug("STATE_MOTOROF_SMS loaded");
				}
		}
		//if(PrvOnOff != OnOff)
		//	PreviousTrip = NO_TRIP_FLAG;

			nSTATE_MOTOR = STATE_MOTOR_OFF;
			if(PowerCondition == 0)
				PrvOnOff = 0;
			SendLowVoltageHighVoltage = 0;
			SendSPPLowVoltageHighVoltage = 0;
			MotorReversePhaseSMS = 0;
			ActDrRunTimer = 0;
			ActDrRunCount = 0;
			CurActDrRunTimer = 0;
			SetDrRunTimer = 0;
			CatchDrAccor = 0;
	}
  #endif
  
}
void DisplayRountine(void){
#if 1
	char TpStr[20]="nimish";
	long TpHr,TpMin,TpSec,value;
	 
	checkpower=Check2Phase();


	if(MassageReceived == 0)
	{
		
		if(Page == 0)
		{
			#if 1
			Displaydelay++;
			if(Displaydelay>=2)
			{
				Displaydelay = 0;
				switch(nSTATE_STATUS_SMS)
				{

					 case STATUS_MOTOR_ON_SWITCH_TRIP_SMS:
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								if(checkpower == 2) {
//									sprintf((char *)lcd_row[0],"MOB MOTOR OFF II ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s  ",nCurretnCond.BRVoltage,TpStr);
									
									  sprintf((char *)lcd_row[0]," MOTOR  ");
			              sprintf((char *)lcd_row[1],"OFF  II ");
								}
								else {
//									sprintf((char *)lcd_row[0],"MOB MOTOR OFFIII ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s  ",nCurretnCond.BRVoltage,TpStr);
										sprintf((char *)lcd_row[0]," MOTOR  ");
										sprintf((char *)lcd_row[1],"OFF III ");
								} 
					break;
					case STATUS_MOTOROF_SMS:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s   ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s  ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								if(checkpower == 2)
								{
//									sprintf((char *)lcd_row[0],"MOB MOTOR OFF II   " );
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s  ",nCurretnCond.BRVoltage,TpStr);
									
									  sprintf((char *)lcd_row[0]," MOTOR  ");
			              sprintf((char *)lcd_row[1],"OFF II  ");
								      
								}
								else{
									//sprintf((char *)lcd_row[0],"MOB MOTOR OFF III  " );									 
									//sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s     ",nCurretnCond.BRVoltage,TpStr);
									
									sprintf((char *)lcd_row[0]," MOTOR  ");
			            sprintf((char *)lcd_row[1],"OFF III ");
									 
								}
							}							 
						}
						break;
					case STATUS_NO_ELECTRICICY:
						{
							 sprintf((char *)lcd_row[0],"NO SUPPLY");    
							 sprintf((char *)lcd_row[1],"TO MODEM ");							
						}
						break;
					case STATUS_ON_RESTART_NOLOAD:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld     ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s     ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s    ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}							 
						}
						break;
					case STATUS_MOTOR_STARTER_TRIP_SMS:
						{
							if(WorkingOn3Phas == 0)
							{
//								sprintf((char *)lcd_row[0],"  MOTOR OFF II  "); 
//								sprintf((char *)lcd_row[1],"STARTER TRIP:%d ",(OverAllStarterTrip+1));
								sprintf((char *)lcd_row[0],"STARTER"); 
								sprintf((char *)lcd_row[1]," TRIP:%d ",(OverAllStarterTrip+1));
							}
							else
							{
//								sprintf((char *)lcd_row[0]," MOTOR OFF III  ");
//								sprintf((char *)lcd_row[1],"STARTER TRIP:%d ",(OverAllStarterTrip+1));
								sprintf((char *)lcd_row[0],"STARTER"); 
								sprintf((char *)lcd_row[1]," TRIP:%d ",(OverAllStarterTrip+1));
							}
						}
						break;
					case STATUS_MOTOR_UPPERTANK_TRIP_SMS:
						{
							if(WorkingOn3Phas == 0)
							{
//								sprintf((char *)lcd_row[0]," MOTOR OFF II     ");
//								sprintf((char *)lcd_row[1],"UPPER TANK FULL  ");
								  sprintf((char *)lcd_row[0],"  TANK  ");
								  sprintf((char *)lcd_row[1],"  FULL  ");
							}
							else
							{
//								sprintf((char *)lcd_row[0]," MOTOR OFF III     ");
//								sprintf((char *)lcd_row[1],"UPPER TANK FULL   ");
									sprintf((char *)lcd_row[0],"  TANK  ");
								  sprintf((char *)lcd_row[1],"  FULL  ");
							}
						}
						break;
					case STATUS_MOTOR_LOWERTANK_TRIP_SMS:
						{
							if(WorkingOn3Phas == 0)
							{
//								sprintf((char *)lcd_row[0]," MOTOR OFF II    ");
//								sprintf((char *)lcd_row[1],"SUMP TANK EMPTY  ");
								sprintf((char *)lcd_row[0],"  SUMP  ");
								sprintf((char *)lcd_row[1]," EMPTY  ");
							}
							else
							{
//								sprintf((char *)lcd_row[0]," MOTOR OFF III   ");
//								sprintf((char *)lcd_row[1],"SUMP TANK EMPTY  ");
								sprintf((char *)lcd_row[0],"  SUMP  ");
								sprintf((char *)lcd_row[1]," EMPTY  ");								
							}
						}
						break;
					case STATUS_MOTOR_DRYRUN_TRIP_SMS:
						{

							/*if(WhichPhaseHaveingProblem == 1)
								sprintf(BigSMS,"RPHASE: %0.1f",TripCurrent);
							else if(WhichPhaseHaveingProblem == 2)
								sprintf(BigSMS,"YPHASE: %0.1f\n",TripCurrent);
							else if(WhichPhaseHaveingProblem == 3)
								sprintf(BigSMS,"BPHASE: %0.1f\n",TripCurrent);*/
							if(WorkingOn3Phas == 0)
							{
								if(nTimerSettings.DrReOnOf == 1)
								{
									value = RemainingDrTime;
									TpHr = value/3600;
									value = value%3600;
									TpMin = value/60;
									value = value%60;
									TpSec = value;
//									sprintf((char *)lcd_row[0],"RS:%02ld:%02ld MOT OFF",TpHr,TpMin);
//									sprintf((char *)lcd_row[1],"DRY RUN TRIP II");
									
									sprintf((char *)lcd_row[0],"  DRT II  ");
									sprintf((char *)lcd_row[1]," %02ld:%02ld  ",TpHr,TpMin);
								}
								else
								{
//									sprintf((char *)lcd_row[0],"  MOTOR OFF II   ");
//									sprintf((char *)lcd_row[1],"  DRY RUN TRIP   ");
									sprintf((char *)lcd_row[0],"DRY RUN ");
									sprintf((char *)lcd_row[1],"TRIP II ");
									
								}
							}
							else
							{
								if(nTimerSettings.DrReOnOf == 1)
								{
									value = RemainingDrTime;
									TpHr = value/3600;
									value = value%3600;
									TpMin = value/60;
									value = value%60;
									TpSec = value;
//									sprintf((char *)lcd_row[0],"RS:%02ld:%02ld MOTOR OFF",TpHr,TpMin);
//									sprintf((char *)lcd_row[1],"DRYRUN TRIP III ");
									sprintf((char *)lcd_row[0],"  DRT III ");
									sprintf((char *)lcd_row[1]," %02ld:%02ld  ",TpHr,TpMin);
								}
								else
								{
//									sprintf((char *)lcd_row[0]," MOTOR OFF III  ");
//									sprintf((char *)lcd_row[1],"  DRY RUN TRIP  ");
									sprintf((char *)lcd_row[0],"DRY RUN ");
									sprintf((char *)lcd_row[1],"TRIP III");
								}
							}						 
						}
						break;
						 
					    case STATUS_MOTOR_TRIP_OVERLOAD:
						{
							/*if(WhichPhaseHaveingProblem == 1)
								sprintf(BigSMS,"RPHASE: %0.1f",TripCurrent);
							else if(WhichPhaseHaveingProblem == 2)
								sprintf(BigSMS,"YPHASE: %0.1f\n",TripCurrent);
							else if(WhichPhaseHaveingProblem == 3)
								sprintf(BigSMS,"BPHASE: %0.1f\n",TripCurrent);*/
							if(WorkingOn3Phas == 0)
							{
//								sprintf((char *)lcd_row[0],"  MOTOR OFF II  ");
//								sprintf((char *)lcd_row[1]," OVER LOAD TRIP ");
								sprintf((char *)lcd_row[0],"OVR LOAD");
								sprintf((char *)lcd_row[1],"TRIP  II");
							}
							else
							{
//								sprintf((char *)lcd_row[0]," MOTOR OFF III  ");
//								sprintf((char *)lcd_row[1],"OVER LOAD TRIP  ");
								sprintf((char *)lcd_row[0],"OVR LOAD");
								sprintf((char *)lcd_row[1],"TRIP III");
							}
						}
						break;
					case STATUS_MOTOR_TRIP_SPP:
						{
//							sprintf((char *)lcd_row[0]," MOTOR OFF III  ");
//							sprintf((char *)lcd_row[1],"   SPP FAULT    ");
								sprintf((char *)lcd_row[0],"VOLTAGE ");
								sprintf((char *)lcd_row[1],"  SPP   ");
						}
						break;
					case STATUS_MOTOR_TRIP_REVERSEPHASE:
						{
//							sprintf((char *)lcd_row[0]," MOTOR OFF III  "); 
//							sprintf((char *)lcd_row[1]," REVERSE PHASE   ");
								sprintf((char *)lcd_row[0],"REVERSE "); 
								sprintf((char *)lcd_row[1]," PHASE  ");
						}
						break;
					case STATUS_MOTOR_TRIP_CURRENTSPP:
						{
//							sprintf((char *)lcd_row[0]," MOTOR OFF III  ");
//							sprintf((char *)lcd_row[1],"  CURRENT SPP   ");
								sprintf((char *)lcd_row[0],"CURRENT ");
								sprintf((char *)lcd_row[1],"  SPP   ");
						}
						break;
					case STATUS_MOTOR_TRIP_LOWVOLTAGE:
						{

							if(WorkingOn3Phas == 0)
							{
								if(WhichPhaseHaveingProblem == 1)
								{
									sprintf((char *)lcd_row[0]," LOW VOL TRIP II ");
									sprintf((char *)lcd_row[1],"     RY: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 2)
								{
									sprintf((char *)lcd_row[0],"LOW VOL TRIP II ");
									sprintf((char *)lcd_row[1],"    YB: %3.0f       ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 3)
								{
									sprintf((char *)lcd_row[0],"LOW VOL TRIP II ");
									sprintf((char *)lcd_row[1],"     BR: %3.0f       ",TripVoltage);
								}
							}
							else
							{
								if(WhichPhaseHaveingProblem == 1)
								{
									sprintf((char *)lcd_row[0],"LOW VOL TRIP III ");     
									sprintf((char *)lcd_row[1],"      RY: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 2)
								{
									sprintf((char *)lcd_row[0],"LOW VOL TRIP III ");     
									sprintf((char *)lcd_row[1],"      YB: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 3)
								{
									sprintf((char *)lcd_row[0],"LOW VOL TRIP III ");
									sprintf((char *)lcd_row[1],"      BR: %3.0f        ",TripVoltage);
								}
							}
						}
						break;
					case STATUS_MOTOR_TRIP_HIGHVOLTAGE:
						{
							if(WorkingOn3Phas == 0)
							{
								if(WhichPhaseHaveingProblem == 1)
								{
									sprintf((char *)lcd_row[0],"HIGH VOL TRIP II  ");
									sprintf((char *)lcd_row[1],"    RY: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 2)
								{
									sprintf((char *)lcd_row[0],"HIGH VOL TRIP II  ");
									sprintf((char *)lcd_row[1],"    YB: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 3)
								{
									sprintf((char *)lcd_row[0],"HIGH VOL TRIP II  ");     
									sprintf((char *)lcd_row[1],"    BR: %3.0f        ",TripVoltage);
								}
							}
							else
							{
								if(WhichPhaseHaveingProblem == 1)
								{
									sprintf((char *)lcd_row[0],"HIGH VOL TRIPIII  ");
									sprintf((char *)lcd_row[1],"    RY: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 2)
								{
									sprintf((char *)lcd_row[0],"HIGH VOL TRIPIII");
									sprintf((char *)lcd_row[1],"    YB: %3.0f        ",TripVoltage);
								}
								else if(WhichPhaseHaveingProblem == 3)
								{
									sprintf((char *)lcd_row[0],"HIGH VOL TRIPIII");
									sprintf((char *)lcd_row[1],"    BR: %3.0f        ",TripVoltage);
								}
							}
						}
						break;
				   case STATUS_MOTOR_RTCOF1_TRIP_SMS:
						{
							FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
							sprintf((char *)lcd_row[0]," MOTOR OFF RTC1 ");
							sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
						}
						break;
					case STATUS_MOTOR_RTCOF2_TRIP_SMS:
						{
							FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
							sprintf((char *)lcd_row[0]," MOTOR OFF RTC2 ");
							sprintf((char *)lcd_row[1]," VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
						}
						break;
					case STATUS_MOTOR_RTCOF3_TRIP_SMS:
						{
							FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
							sprintf((char *)lcd_row[0]," MOTOR OFF RTC3 ");
							sprintf((char *)lcd_row[1]," VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
						}
						break;
					case STATUS_MOTOR_RTCOF4_TRIP_SMS:
						{
							FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
							sprintf((char *)lcd_row[0]," MOTOR OFF RTC4 ");
							sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);

						}
						break;
					case STATUS_MOTOR_CYCLIC_TRIP_SMS:
						{
							value = RemainingCyclicOfTime;
							TpHr = value/3600;
							value = value%3600;
							TpMin = value/60;
							value = value%60;
							TpSec = value;
							FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
							sprintf((char *)lcd_row[0],"CYT:%02ld:%02ld MOT OF ",TpHr,TpMin);
							sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",nCurretnCond.BRVoltage,TpStr);
						}
						break;
					case STATUS_MOTOR_MAX_TRIP_SMS:
						{
//							sprintf((char *)lcd_row[0],"   MOTOR OFF    ");
//							sprintf((char *)lcd_row[1],"  MAXIMUM TIME  ");
								sprintf((char *)lcd_row[0],"MAX TIME");
								sprintf((char *)lcd_row[1],"REACHED ");
						}
						break;					 
					  case STATUS_MOTOR_ON_DEFAULT:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld   ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0]," SDDEL  ");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								if(DISPLAYMsg == NO_COND)
								{
									FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);									 
                  if(WorkingOn3Phas == 0)
									{
//										sprintf((char *)lcd_row[0],"  MOTOR ON II   ");
//										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
											sprintf((char *)lcd_row[0]," MOTOR  ");
											sprintf((char *)lcd_row[1]," ON II  ");
									}
									else
									{
//										sprintf((char *)lcd_row[0],"  MOTOR ON III  ");
//										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
											sprintf((char *)lcd_row[0]," MOTOR  ");
											sprintf((char *)lcd_row[1]," ON III ");
									}

								}							 
								else if(DISPLAYMsg == NO_LOAD)
								{
											FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//										sprintf((char *)lcd_row[0],"  DRY RUN TIME  ");
//										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
											sprintf((char *)lcd_row[0],"DRY RUN ");
											sprintf((char *)lcd_row[1],"  TIME  ");
								}
								else if(DISPLAYMsg == OV_LOAD)
								{
										FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//									sprintf((char *)lcd_row[0]," OVER LOAD TIME ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
										sprintf((char *)lcd_row[0],"OVR LOAD");
										sprintf((char *)lcd_row[1],"  TIME  ");
								}
							}							 
						}
						break;
					case STATUS_MOTOR_ON_ONDELAY:
						{

							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s    ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingCyclicOnTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[0],"CYT:%02ld:%02ld MOT ON  ",TpHr,TpMin);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								  sprintf((char *)lcd_row[0],"CT:%02ld:%02ld",TpHr,TpMin);
								  sprintf((char *)lcd_row[1],"MOTOR ON");
							}							 
						}
						break;
						 

					case STATUS_MOTOR_ON_RTC1:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld   ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",nCurretnCond.BRVoltage,TpStr);	
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s      ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC1Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								sprintf((char *)lcd_row[0],"RTC1:%02ld:%02ldMOT ON  ",TpHr,TpMin);
								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
							}							 
						}
						break;
						case STATUS_MOTOR_ON_TARGET:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld   ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);		
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC2Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
									if(WorkingOn3Phas == 0)
									{
										sprintf((char *)lcd_row[0],"TAR MOT ON   II ");
										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
									}
									else
									{
										sprintf((char *)lcd_row[0],"TAR MOT ON  III ");
										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s         ",nCurretnCond.BRVoltage,TpStr);
									}
							}							 
						}
						break;
					case STATUS_MOTOR_ON_SWITCH:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC2Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								if(WorkingOn3Phas == 0)
								{
//									sprintf((char *)lcd_row[0],"AUTO MOT ON   II ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
									sprintf((char *)lcd_row[0],"AUTO MOT ");
									sprintf((char *)lcd_row[1],"  ON II  ");
								}
								else
								{
//									sprintf((char *)lcd_row[0],"AUTO MOT ON  III ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
									  sprintf((char *)lcd_row[0],"AUTO MOT ");
									  sprintf((char *)lcd_row[1]," ON III ");									  
								}
							}
							 
						}
						break;
					case STATUS_MOTOR_ON_RTC2:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);	
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0]," SDDEL  ");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC2Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								sprintf((char *)lcd_row[0],"RTC2:%02ld:%02ldMOT ON  ",TpHr,TpMin);
								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
							}							 
						}
						break;
					case STATUS_MOTOR_ON_RTC3:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);		
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);	
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0]," SDDEL  ");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC3Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								sprintf((char *)lcd_row[0],"RTC3:%02ld:%02ldMOT ON  ",TpHr,TpMin);
								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
							}							 
						}
						break;
					case STATUS_MOTOR_ON_RTC4:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0]," SDDEL  ");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC4Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								sprintf((char *)lcd_row[0],"RTC4:%02ld:%02ldMOT ON",TpHr,TpMin);
								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
							}						 
						}
						break;
					case STATUS_MOTOR_ON_UPPERTANK:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC1Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[0],"   MOTOR ON     ");
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"MOTOR ON");
								sprintf((char *)lcd_row[1],"        ");
							}
 
						}
						break;
					case STATUS_MOTOR_ON_LOWERTANK:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC1Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
									if(WorkingOn3Phas == 0)
									{
//										sprintf((char *)lcd_row[0],"  MOTOR ON  II  ");
//										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
										sprintf((char *)lcd_row[0]," MOTOR  ");
										sprintf((char *)lcd_row[1]," ON II  ");
									}
									else
									{
//										sprintf((char *)lcd_row[0],"  MOTOR ON III  ");
//										sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
										sprintf((char *)lcd_row[0]," MOTOR  ");
										sprintf((char *)lcd_row[1]," ON III ");
									}
							}							 
						}
						break;
					case STATUS_MOTOR_ON_RESTARTTIMER:
						{
							if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_POWERONDELAY)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"ONDEL = %02ld:%02ld:%02ld  ,",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"ON DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
								break;
							}
							else if(nSTATE_STATUS_ONDELAY_SD == STATUS_MOTOR_AT_STARDELTA)
							{
								value = RemainingTime;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
//								sprintf((char *)lcd_row[0],"SDDL = %02ld:%02ld:%02ld  ",TpHr,TpMin,TpSec);
//								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
//								sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s       ",nCurretnCond.BRVoltage,TpStr);
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								value = RemainingRTC1Time;
								TpHr = value/3600;
								value = value%3600;
								TpMin = value/60;
								value = value%60;
								TpSec = value;
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								if(WorkingOn3Phas == 0)
								{
//									sprintf((char *)lcd_row[0],"  MOTOR ON  II ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
										sprintf((char *)lcd_row[0]," MOTOR  ");
										sprintf((char *)lcd_row[1]," ON II  ");
								}
								else
								{
//									sprintf((char *)lcd_row[0]," MOTOR ON III  ");
//									sprintf((char *)lcd_row[1],"VRB:%03.0f AMP:%s        ",nCurretnCond.BRVoltage,TpStr);
									  sprintf((char *)lcd_row[0]," MOTOR  ");
									  sprintf((char *)lcd_row[1]," ON III ");
								}
							}
							 
						}
						break;
					default:
						{
							sprintf(BigSMS2,"Worning Malfunction Please Contact Support");
						}
						break;
				}
				
			}
			 
			#endif
			
		}	   	
		else if(Page == 1)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{
				Displaydelay = 0;
				sprintf((char *)lcd_row[0],"%03.0fRN      %03.0fYN   ",nCurretnCond.RVoltage,nCurretnCond.YVoltage);
				sprintf((char *)lcd_row[1],"%03.0fBN     VOLTS      ",nCurretnCond.BVoltage);    
				 
			}
		}
		else if(Page == 2)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{
				Displaydelay = 0;
				sprintf((char *)lcd_row[0],"%03.0fRY    %03.0fYB    ",nCurretnCond.RYVoltage,nCurretnCond.YBVoltage);
				sprintf((char *)lcd_row[1],"%03.0fBR    VOLTS       ",nCurretnCond.BRVoltage);    
				 
			}
		}
		else if(Page == 3)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{
			  FloatroString1Dig((char *)TpS1tr,nCurretnCond.Rcurrent);
				FloatroString1Dig((char *)TpS2tr,nCurretnCond.Ycurrent);
			  FloatroString1Dig((char *)TpS3tr,nCurretnCond.Bcurrent);
				Displaydelay = 0;
				sprintf((char *)lcd_row[0],"%sR    %sY      ",TpS1tr,TpS2tr);
				sprintf((char *)lcd_row[1],"%sB    AMPS       ",TpS3tr); 
				 
			}
		}
		else if(Page == 4)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{ 

			float SignalStrength=0;
			int sstrength=0;
			SignalStrength = (float)(CSQ*3.2258);
			if(SignalStrength>100)
			SignalStrength = 100;
			else if(SignalStrength<0)
			SignalStrength = 0;
			sstrength=SignalStrength; 

				Displaydelay = 0;
				sprintf((char *)lcd_row[0],"SIGNAL STRENGTH   ");
			  sprintf((char *)lcd_row[1],"  %03d PERCENT     ",sstrength);
				 
			}
		}
		else if(Page == 5)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{
				Displaydelay = 0;				
				sprintf((char *)lcd_row[0],"DATE:%02d/%02d/%04d   ",datetime.tm_mday,datetime.tm_mon,datetime.tm_year);
				sprintf((char *)lcd_row[1],"TIME:%02d:%02d:%02d   ",datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
			 
			}
		}
		else if(Page == 6)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{
				Displaydelay = 0;			 
				sprintf((char *)lcd_row[0],"ORO-PUMP %s      ",Version );
				sprintf((char *)lcd_row[1],"Build :%s          ",Build);
				 
			}
		}
		else if(Page == 7)
		{
			Displaydelay++;
			if(Displaydelay>=1)
			{
				Displaydelay = 0;			 			 
				sprintf((char *)lcd_row[0],"      SMSM           ");
				sprintf((char *)lcd_row[1],"   %s                ",StoredPhoneNumber[0]);
				 
			}
		}
		else if(Page == 8)
		{
			Displaydelay++;
			if(Displaydelay>=3)
			{
				Displaydelay = 0;			 				 
				sprintf((char *)lcd_row[0],"      IMEI          ");
				//sprintf((char *)lcd_row[1],"   %s                ",IMEI);
				sprintf((char *)lcd_row[1],"864180050432315 ");
				 
			}
		}
		else if(Page == 9)
		{
			Displaydelay++;
			if(Displaydelay>=12)
			{
				Displaydelay = 0;				 
				switch (SubPage)
				{
					case 0:
					{ 
						nMSettings.shwvolt =0;
						if(nMSettings.shwvolt == 1) {
						sprintf((char *)lcd_row[0],"  VPH   ");
						sprintf((char *)lcd_row[1]," RN:231 ");						 
						SubPage++;
						}
						else{
							SubPage++;
							Displaydelay=13;
						}
						break;
					}
					case 1:
					{ 
						nMSettings.shwvolt =0;
						if(nMSettings.shwvolt == 1) {
						sprintf((char *)lcd_row[0]," YN:233 ");
						sprintf((char *)lcd_row[1]," BN:235 ");						 
						SubPage++;
						}
						else{
							SubPage++;
							Displaydelay=13;
						}
						break;
					}
					case 2:
					{ 
						nMSettings.shwvolt =0;
						if(nMSettings.shwvolt == 1) {
						sprintf((char *)lcd_row[0],"   VL   ");
						sprintf((char *)lcd_row[1]," RY:401 ");						 
						SubPage++;
						}
						else{
							SubPage++;
							Displaydelay=13;
						}
						break;
					}
					case 3:
					{ 
						nMSettings.shwvolt =0;
						if(nMSettings.shwvolt == 1) {
						sprintf((char *)lcd_row[0]," YB:402  ");
						sprintf((char *)lcd_row[1]," BR:402  ");						 
						SubPage++;
						}
						else{
							SubPage++;
							Displaydelay=13;
						}
						break;
					}
					case 4:
					{ 
						nMSettings.shwcur =1;
						if(nMSettings.shwcur == 1){
						sprintf((char *)lcd_row[0],"  AMPS  ");
						sprintf((char *)lcd_row[1],"RC:15.3 ");						 
						SubPage++;
						}
						else {
						 SubPage++;
						 Displaydelay=13;
						}
						break;
					}
					case 5:
					{ 
						nMSettings.shwcur =1;
						if(nMSettings.shwcur == 1){
						sprintf((char *)lcd_row[0],"YC:15.7 ");
						sprintf((char *)lcd_row[1],"BC:15.7 ");						 
						SubPage++;						
						} 
						else {
						 SubPage++;
						 Displaydelay=13;
						}
						break;
					}
					case 6:
					{ 					 					 
              sprintf((char *)lcd_row[0],"%02d:%02d:%02d",datetime.tm_hour,datetime.tm_min,datetime.tm_sec);
		          sprintf((char *)lcd_row[1],"%02d/%02d/%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year);							
							SubPage++; 
						  break;
					}
					case 7:
					{  
						sprintf((char *)lcd_row[0]," SIGNAL ");
						sprintf((char *)lcd_row[1],"  %d%%   ",85);						 
						SubPage++; 
						break;
					}
					case 8:
					{  
						sprintf((char *)lcd_row[0],"8641800 ");
						sprintf((char *)lcd_row[1],"50432523 ");						 
						SubPage++; 
						break;
					}
					
					case 9:
					{ 
						Page=0; 
						break;
					}
					default:
					{
					}
				}
			}
		}
		#if 0 
		else if(Page == 9)
		{
			Displaydelay++;
			if(Displaydelay>=10)
			{
				Displaydelay = 0;				 
				switch (SubPage)
				{
					case 0:
					{
						if(nTimerSettings.OlOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"  OVER LOAD ON   ");
							sprintf((char *)lcd_row[1],"  TIM:%02d:%02d:%02d     ",nTimerSettings.OlScanHr,nTimerSettings.OlScanMin,nTimerSettings.OlScanSec);
						}
						else
						{
							sprintf((char *)lcd_row[0],"  OVER LOAD OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 1:
					{
						FloatroString1Dig((char *)TpS3tr,nTimerSettings.OlAmpsII);
						sprintf((char *)lcd_row[0],"  OL II %s      ",TpS3tr);
						FloatroString1Dig((char *)TpS3tr,nTimerSettings.OlAmpsIII);
						sprintf((char *)lcd_row[1],"  OL III %s      ",TpS3tr);
						
						SubPage++;
						break;
					}
					case 2:
					{
						if(nMSettings.DryRunOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," DRY RUN SCAN ON  ");
							sprintf((char *)lcd_row[1]," TIM:%02d:%02d:%02d         ",nTimerSettings.DrScHr,nTimerSettings.DrScMin,nTimerSettings.DrScSec);
						}
						else
						{
							sprintf((char *)lcd_row[0],"DRY RUN SCAN OFF");
							sprintf((char *)lcd_row[1],"                 ");
						}
						SubPage++;
						break;
					}
					case 3:
					{
					  FloatroString1Dig((char *)TpS3tr,nTimerSettings.DrAmpsII);
						sprintf((char *)lcd_row[0],"DRY RUN II %s     ",TpS3tr);
						FloatroString1Dig((char *)TpS3tr,nTimerSettings.DrAmpsIII);
						sprintf((char *)lcd_row[1],"DRY RUN III %s        ",TpS3tr);
						
						SubPage++;
						break;
					}
					case 4:
					{						 
						if(nTimerSettings.LowVoltOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"   LOW VOLT ON      ");
							sprintf((char *)lcd_row[1],"II:%03d  III:%03d   ",nTimerSettings.LowVoltII,nTimerSettings.LowVoltIII);
						}
						else
						{
							sprintf((char *)lcd_row[0],"  LOW VOLT OFF    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						
						SubPage++;
						break;
					}
					case 5:
					{						 
						if(nTimerSettings.LowVoltOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"  HIGH VOLT ON  ");
							sprintf((char *)lcd_row[1],"II:%03d  III:%03d      ",nTimerSettings.HighVoltII,nTimerSettings.HighVoltIII);
						}
						else
						{
							sprintf((char *)lcd_row[0]," HIGH VOLT OFF  ");
							sprintf((char *)lcd_row[1],"                 ");
						}
						
						SubPage++;
						break;
					}
					case 6:
					{
						 
						sprintf((char *)lcd_row[0]," IMBALANCE VOLT ");
						sprintf((char *)lcd_row[1],"    Val:%03d       ",nTimerSettings.ImbVolt);
						
						SubPage++;
						break;
					}
					case 7:
					{
						 
						sprintf((char *)lcd_row[0],"   ON DELAY     ");
						sprintf((char *)lcd_row[1],"TIM:%02d:%02d:%02d   ",nTimerSettings.POnHr,nTimerSettings.POnMin,nTimerSettings.POnSec);
						
						SubPage++;
						break;
					}
					case 8:
					{
						 
						sprintf((char *)lcd_row[0],"STAR DELTA DELAY ");
						sprintf((char *)lcd_row[1],"TIM:%02d:%02d:%02d   ",nTimerSettings.SDHr,nTimerSettings.SDMin,nTimerSettings.SDSec);
						
						SubPage++;
						break;
					}
					case 9:
					{
						if(nTimerSettings.ScrDlOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"  SCR TIMER ON  ");
							sprintf((char *)lcd_row[1],"  TIM:%02d:%02d:%02d  ",nTimerSettings.ScrDlHr,nTimerSettings.ScrDlMin,nTimerSettings.ScrDlSec);
						}
						else
						{
							sprintf((char *)lcd_row[0],"  SCR TIMER OFF ");
							sprintf((char *)lcd_row[1],"                ");
						}						
						SubPage++;
						break;
					}
					case 10:
					{
						 
						if(nTimerSettings.PoScrDlOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"  SCR DELAY ON   ");
							sprintf((char *)lcd_row[1],"  TIM:%02d:%02d:%02d   ",nTimerSettings.PoScrDlHr,nTimerSettings.PoScrDlMin,nTimerSettings.PoScrDlSec);
						}
						else
						{
							sprintf((char *)lcd_row[0],"  SCR DELAY OFF ");
							sprintf((char *)lcd_row[1],"                ");					
						}
						SubPage++; 
						break;
					}
					
					case 11:
					{
						 
						if(nMSettings.SecOnOf == 1)
						{
							sprintf((char *)lcd_row[0],"  SECURITY ON   ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[1],"  SECURITY OFF  ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 12:
					{
						 
						if(nTimerSettings.MaxRnOnOf == 1)
						{
							sprintf((char *)lcd_row[0],"  MAX TIMER ON  ");
							sprintf((char *)lcd_row[1],"TIM:%02d:%02d:%02d  ",nTimerSettings.MaxRnHr,nTimerSettings.MaxRnMin,nTimerSettings.MaxRnSec);
						}
						else
						{
							sprintf((char *)lcd_row[0]," MAX TIMER OFF  ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 13:
					{
            
						if(nTimerSettings.DrReOnOf == 1)
						{							 
							sprintf((char *)lcd_row[0]," DRY RUN RST ON ");
							sprintf((char *)lcd_row[1],"TIM:%02d:%02d:%02d    ",nTimerSettings.DrReHr,nTimerSettings.DrReMin,nTimerSettings.DrReSec);
						}
						else
						{
							sprintf((char *)lcd_row[0],"DRY RUN RST OFF ");
							sprintf((char *)lcd_row[1],"                ");									
						}
						SubPage++;
						break;
					}
					case 14:
					{
						 
						if(nTimerSettings.CycLicOnOf == 1)
						{
							sprintf((char *)lcd_row[0],"  CYT TIMER ON  ");
							sprintf((char *)lcd_row[1],"%02d:%02d   %02d:%02d  ",nTimerSettings.CycLicOnHr,nTimerSettings.CycLicOnMin,nTimerSettings.CycLicOfHr,nTimerSettings.CycLicOfMin);

						}
						else
						{
							sprintf((char *)lcd_row[0]," CYT TIMER OFF  ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 15:
					{
						 
						if(nTimerSettings.RTCOnOf == 1)
						{
							sprintf((char *)lcd_row[0]," RTC1 TIMER ON  "); 
							sprintf((char *)lcd_row[1],"%02d:%02d   %02d:%02d  ",nTimerSettings.RTCOnHr[1],nTimerSettings.RTCOnMin[1],nTimerSettings.RTCOfHr[1],nTimerSettings.RTCOfMin[1]);
						}
						else
						{
							sprintf((char *)lcd_row[0]," RTC TIMER OFF  ");
							sprintf((char *)lcd_row[1],"                ");
							SubPage = 19;
							break;
						}				
						SubPage++;
						break;
						
					}
					case 16:
					{
            
						sprintf((char *)lcd_row[0]," RTC2 TIMER ON  ");
						sprintf((char *)lcd_row[1],"%02d:%02d    %02d:%02d     ",nTimerSettings.RTCOnHr[2],nTimerSettings.RTCOnMin[2],nTimerSettings.RTCOfHr[2],nTimerSettings.RTCOfMin[2]);
						SubPage++;
						break;
					}
					case 17:
					{
             
						sprintf((char *)lcd_row[0]," RTC3 TIMER ON  ");
						sprintf((char *)lcd_row[1],"%02d:%02d    %02d:%02d     ",nTimerSettings.RTCOnHr[3],nTimerSettings.RTCOnMin[3],nTimerSettings.RTCOfHr[3],nTimerSettings.RTCOfMin[3]);
						SubPage++;
						break;
					}
					case 18:
					{
             
						sprintf((char *)lcd_row[0]," RTC4 TIMER ON  ");
						sprintf((char *)lcd_row[1],"%02d:%02d   %02d:%02d      ",nTimerSettings.RTCOnHr[4],nTimerSettings.RTCOnMin[4],nTimerSettings.RTCOfHr[4],nTimerSettings.RTCOfMin[4]);
						SubPage++;
						break;
					}
					case 19:
					{
						sprintf((char *)lcd_row[0],"DATE:%02d/%02d/%04d    ",datetime.tm_mday,datetime.tm_mon,datetime.tm_year);
						sprintf((char *)lcd_row[1],"TIME:%02d:%02d:%02d    ",datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						SubPage++;
						break;
					}
					case 20:
					{
						 
						if(nMSettings.VBFOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"  VOICE FEB ON  ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"  VOICE FEB OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 21:
					{
						 
						if(nMSettings.SumpOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," SUMP LEVEL ON  ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{							
							sprintf((char *)lcd_row[0]," SUMP LEVEL OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 22:
					{
						 
						if(nMSettings.TankOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," TANK LEVEL ON  ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0]," TANK LEVEL OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						
						SubPage++;
						break;
					}
					case 23:
					{
						 
						if(nMSettings.TargetOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," TARGET CALL ON ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"TARGET CALL OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 24:
					{
						 
						if(nTimerSettings.RvePhOnoff == 1)
						{
							sprintf((char *)lcd_row[0],"REVERS PHASE ON ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"REVERS PHASE OFF");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 25:
					{
						 
						if(nTimerSettings.CurSppOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," CURRENT SPP ON ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"CURRENT SPP OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 26:
					{
						 
						if(nTimerSettings.SppOnoff == 1)
						{
							sprintf((char *)lcd_row[0],"  VOLT SPP ON   ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"  VOLT SPP OFF  ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;	
						break;
					}
					case 27:
					{
						 
						if(nMSettings.SMSOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"     SMS ON     ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"     SMS OFF    ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;

					}
					case 28:
					{
						 
						if(nMSettings.SfbOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," STARTER FEB ON ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"STARTER FEB OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 29:
					{
						 
						if(nMSettings.RelayControlOnCall == 1)
						{
							sprintf((char *)lcd_row[0],"  CALL REC ON   ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"  CALL REC OFF  ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 30:
					{
						 
						if(nTimerSettings.AutoStIIOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," AUTO SET II ON ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0]," AUTO SET II OFF");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 31:						
					{
						 
						if(nTimerSettings.AutoStIIIOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"AUTO SET III ON ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"AUTO SET III OFF");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 32:
					{
						 
						if(nTimerSettings.AutoOlDrRstIIOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"   OL RST ON    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"   OL RST OFF   ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 33:
					{
						 
						if(nTimerSettings.AutoDrRunRstIIOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"   DY RST ON    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"   DY RST OFF   ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}

					case 34:
					{
						 
						if(nTimerSettings.ManualOnOff == 1)
						{
							sprintf((char *)lcd_row[0],"   MANUAL ON    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"   MANUAL OFF   ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 35:
					{
						 
						if(nTimerSettings.OlRstVolOnoff == 1)
						{
							sprintf((char *)lcd_row[0]," OL RST VOLT ON ");
							sprintf((char *)lcd_row[1],"VOL:%03d        ",nTimerSettings.OlRstVol);
						}
						else
						{
							sprintf((char *)lcd_row[0]," OL RST VOLT OFF");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 36:
					{
						 
						if(nTimerSettings.DrOccurOnOff == 1)
						{
							sprintf((char *)lcd_row[0]," DRY RUN OCC ON ");
							sprintf((char *)lcd_row[1],"TIM:%02d:%02d-%02d        ",nTimerSettings.DrOccurTimHr,nTimerSettings.DrOccurTimMin,nTimerSettings.DrOccurNum);
						}
						else
						{
							sprintf((char *)lcd_row[0],"DRY RUN OCC OFF ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 37:
					{
						 
						if(nTimerSettings.CTRonoff == 1)
						{
							sprintf((char *)lcd_row[0],"    CT R ON    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"    CT R OFF    ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 38:
					{
						 
						if(nTimerSettings.CTYonoff == 1)
						{
							sprintf((char *)lcd_row[0],"    CT Y ON    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"    CT Y OFF    ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 39:
					{
						 
						if(nTimerSettings.CTBonoff == 1)
						{							
							sprintf((char *)lcd_row[0],"    CT B ON    ");
							sprintf((char *)lcd_row[1],"                ");
						}
						else
						{
							sprintf((char *)lcd_row[0],"    CT B OFF   ");
							sprintf((char *)lcd_row[1],"                ");						
						}
						SubPage++;
						break;
					}
					case 40:
					{						 
						sprintf((char *)lcd_row[0],"STAR TRIP DELAY ");
						sprintf((char *)lcd_row[1],"TIM:%02d:%02d:%02d           ",nTimerSettings.SfbHr,nTimerSettings.SfbMin,nTimerSettings.SfbSec);
						SubPage++;
						break;
					}
					case 41:
					{
						SubPage = 0;
						Page = 0;
						break;
					}
				}

			}
			
		}
    #endif
    
	}
	
	else if(MassageReceived == 1)
	{ 
		 
		sprintf((char *)lcd_row[0],"SETTING");
		sprintf((char *)lcd_row[1],"RECEIVED");
		 
		Displaydelay++;
		if(Displaydelay>=5)
		{
			Displaydelay = 0;		 
			MassageReceived = 0;
		}
	}
	else if(MassageReceived == 2)
	{		 
		sprintf((char *)lcd_row[0],"MESSAGE ");
		sprintf((char *)lcd_row[1],"SENT... ");
		 
		Displaydelay++;
		if(Displaydelay>=5)
		{
			Displaydelay = 0;
			MassageReceived = 0;
		}
	}
 
	 print_lcd(lcd_row); 
 
	#endif
}

uint8_t Process_Received_Settings(void){
	#if 1
		char ProcessBuf[200]={0};
		char* Pch1=NULL;char*p=NULL;
		uint16_t length=0;
		//Debug("\nReceived uart data:[%s]\n",ModemString);
		if(ModemString[0] == '$')
		{
				memcpy(ProcessBuf,(char*)ModemString+1,(strlen((char*)ModemString)-2));	
				/*after copy clr the modem buffer*/
				memset((char*)ModemString,NULL,sizeof(ModemString));
				//Debug("\n#ProcessBuf:[%s]\n",ProcessBuf);
				
				/*convert to lowercase*/
				p = ProcessBuf;
			length=strlen(ProcessBuf);
			for (i = 0; i <length; i++)  
			{
				if(*p>='A' && *p<='Z')
				*p = (*p+'a')-'A';
				p++;
			}
			/*split data with ','*/
			Pch1 = strtok((char *)ProcessBuf, (char *)"," );
			StrTokStrVer = 0;
			while( Pch1 != NULL )
			{
				strcpy(StrTokStr[StrTokStrVer],Pch1);
				StrTokStrVer++;
				Pch1 = strtok( NULL, "," );
			}
			
			//if(debugon==1)
			Debug("\nUART DATA:{%s}\n",StrTokStr[0]);
      printf("\nUART DATA:{%s}\n",StrTokStr[0]); 			
			/*sending ack after receiving the data*/
			printf(ACK);
			//Uart_Send_with_crc(ACK);
			/*settings process starts here*/
			
			if(strstr(StrTokStr[0],"motoron") != 0)
          {motoron(PhoneNumber);}
      if(strstr(StrTokStr[0],"motorof") != 0)
          {motorof(PhoneNumber);}
		  if(strstr(StrTokStr[0],"mtron") != 0)
          {motoron(PhoneNumber);}
      if(strstr(StrTokStr[0],"mtrof") != 0)
          {motorof(PhoneNumber);}
					
			if(strstr(StrTokStr[0],"+rxdtmf") != 0 )
				{
					/*call function handle */
					DTMF_Proccessor(StrTokStr[0]);
				}					
			else if(strstr(StrTokStr[0],"debugon") != 0 )
				{
				debugon=1;
				nMSettings.ndebugonof=1;
			}
			else if(strstr(StrTokStr[0],"test1") != 0 )
				{				
				char  buf[50] ="test string";				 
				Uart_Send_with_crc(buf);	
        				
			}
			else if(strstr(StrTokStr[0],"prodset") != 0 )
				{
				prodset();
			}
		  else if(strstr(StrTokStr[0],"voltagcal") != 0)
				{
				float TpVoltR,TpVoltY,TpVoltB;
				float TpTmp;

				ReadTimerSettings();
			 
				TpVoltR = myatof(StrTokStr[1]);
				TpVoltY = myatof(StrTokStr[2]);
				TpVoltB = myatof(StrTokStr[3]);
        Debug("%f,%f,%f",TpVoltR,TpVoltY,TpVoltB);
				TpTmp = (TpVoltR/nCurretnCond.RVoltage);
				Debug(":%f,%f,",TpTmp,nTimerSettings.CalRVoltage);
				nTimerSettings.CalRVoltage =(double)(TpTmp)*nTimerSettings.CalRVoltage;
				TpTmp = (TpVoltY/nCurretnCond.YVoltage);
				nTimerSettings.CalYVoltage =(double)(TpTmp)*nTimerSettings.CalYVoltage;
				TpTmp = (TpVoltB/nCurretnCond.BVoltage);
				nTimerSettings.CalBVoltage = (double)(TpTmp)*nTimerSettings.CalBVoltage;
				 
				WriteTimerSettings();			 
				//SendSMSViewCal(1,SmsNumber[0]);				 
				ReadTimerSettings();
			}  			 		
		  
		  else if(strstr(StrTokStr[0],"dt") != 0 && isDtValidLength(StrTokStr[1]) == 1)
				{
		      int8_t retv;
          struct _rtc timevar;				
         	int hour,min,sec,year,mon,day;       
			
					Debug("\n\rD&T:[%s]\n\r",StrTokStr[1]);		  
					sscanf((char* )StrTokStr[1],"%02d/%02d/%02d/%02d/%02d/%02d",&year,&mon,&day,&hour,&min,&sec);
					timevar.tm_hour=hour;
					timevar.tm_min=min;
					timevar.tm_sec=sec;
          timevar.tm_mday=day;
					timevar.tm_mon =mon;
					timevar.tm_year=year;              
					 
		  
				  Debug("Before Set TIME:[%02d:%02d:%02d]\n",timevar.tm_hour,timevar.tm_min,timevar.tm_sec);
	        Debug("DATE:[%02d-%02d-%02d]\n",timevar.tm_mday,timevar.tm_mon,timevar.tm_year);
					 
					
					if((timevar.tm_hour < 0 && timevar.tm_min < 0 && timevar.tm_sec <0 )|| (timevar.tm_mday <= 0 || timevar.tm_mon <= 0 || timevar.tm_year <=0))
					{
						Debug("\r\n{set time format error!}\r\n");
					}
					else
					{
						retv=SetDateTime(timevar);
						if(retv < 0)
							Debug("\r\n{set time failed }!\r\n");
						else			
							Debug("\r\n{set time successed!}\r\n");		
				  }
		  
		      if(nMSettings.responseOnOf==1) {
					  STATE_SENDSMS=STATE_DATETIME_SMS;
					  SendSmsToAll = 1;
					}

				}   
			else if(strstr(StrTokStr[0],"dramps3") != 0 && strlen(StrTokStr[0]) == 12)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][7]-'0';
					Tp1 = StrTokStr[0][8]-'0';
					Tp2 = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.DrAmpsIII = (Tp*1000)+(Tp1*100)+(Tp2*10)+Tp3;
					//Debug("\n\r Got Value of nTimerSettings.DrAmpsIII = %0.1f\n\r",nTimerSettings.DrAmpsIII);				 
					nTimerSettings.DrAmpsIII = (nTimerSettings.DrAmpsIII)/10;
					//Debug("\n\r Got Value of nTimerSettings.DrAmpsIII = %0.1f\n\r",nTimerSettings.DrAmpsIII);					 
					//Debug("\n\r Got Value of textBuf = %s\n\r",textBuf);					
					Debug("\n\r Got Value of nTimerSettings.DrAmpsIII = %0.1f\n\r",nTimerSettings.DrAmpsIII);					  
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DRAMPIII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}	

			else if(strstr(StrTokStr[0],"dramps2") != 0 && strlen(StrTokStr[0]) == 12 )
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][7]-'0';
					Tp1 = StrTokStr[0][8]-'0';
					Tp2 = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.DrAmpsII = (Tp*1000)+(Tp1*100)+(Tp2*10)+Tp3;
					//sAPI_Sprintf(buf,"\n\r Got Value of textBuf = %s\n\r",textBuf);
					// PrintfResp(buf);
					nTimerSettings.DrAmpsII = nTimerSettings.DrAmpsII/10;
					Debug("\n\r Got Value of nTimerSettings.DrAmpsII = %0.1f\n\r",nTimerSettings.DrAmpsII);					
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DRAMPII_SMS;
						SendSmsToAll = 1;						
					}	
					ReadTimerSettings();

				}		
				
			else if(strstr(StrTokStr[0],"olamps3") != 0 && strlen(StrTokStr[0]) == 12 )
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][7]-'0';
					Tp1 = StrTokStr[0][8]-'0';
					Tp2 = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.OlAmpsIII = (Tp*1000)+(Tp1*100)+(Tp2*10)+Tp3;
					nTimerSettings.OlAmpsIII = nTimerSettings.OlAmpsIII/10;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_OLAMPSIII_SMS;
						SendSmsToAll = 1;
						Debug("\n\r Got Value of nTimerSettings.OlAmpsII = %0.1f\n\r",nTimerSettings.OlAmpsII);						 
					}
					ReadTimerSettings();
				}			
				
			else if(strstr(StrTokStr[0],"olamps2") != 0 && strlen(StrTokStr[0]) == 12 )
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][7]-'0';
					Tp1 = StrTokStr[0][8]-'0';
					Tp2 = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.OlAmpsII = (Tp*1000)+(Tp1*100)+(Tp2*10)+Tp3;
					nTimerSettings.OlAmpsII = nTimerSettings.OlAmpsII/10;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_OLAMPSII_SMS;
						SendSmsToAll = 1;
						//nTimerSettings.OlAmpsII = (nTimerSettings.OlAmpsII*100)+(Tp*10)+Tp3;
						//sAPI_Sprintf(buf,"\n\r Got Value of textBuf = %s\n\r",textBuf);
						// PrintfResp(buf);
						Debug("\n\r Got Value of nTimerSettings.OlAmpsII = %2.1f\n\r",nTimerSettings.OlAmpsII);						 
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"ondelay") != 0 && strlen(StrTokStr[0]) == 13)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][7]-'0';
					Tp3 = StrTokStr[0][8]-'0';
					nTimerSettings.POnHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][10]-'0';
					nTimerSettings.POnMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][11]-'0';
					Tp3 = StrTokStr[0][12]-'0';

					nTimerSettings.POnSec = (Tp*10)+Tp3;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						//cpbrsearchend =0;
						STATE_SENDSMS=STATE_ONDELAY_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();

				}	

			else if(strstr(StrTokStr[0],"sddelay") != 0 && strlen(StrTokStr[0]) == 13)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][7]-'0';
					Tp3 = StrTokStr[0][8]-'0';
					nTimerSettings.SDHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][10]-'0';
					nTimerSettings.SDMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][11]-'0';
					Tp3 = StrTokStr[0][12]-'0';

					nTimerSettings.SDSec = (Tp*10)+Tp3;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_SDDELAY_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
      else if(strstr(StrTokStr[0],"sfbdelay") != 0)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][8]-'0';
					Tp3 = StrTokStr[0][9]-'0';
					nTimerSettings.SfbHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.SfbMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][12]-'0';
					Tp3 = StrTokStr[0][13]-'0';

					nTimerSettings.SfbSec = (Tp*10)+Tp3;
					WriteSettingsFile();
          if(nMSettings.responseOnOf==1){
					STATE_SENDSMS=STATE_SFBDELAY_SMS;
					SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}
			else if(strstr(StrTokStr[0],"scrdelay") != 0 && strlen(StrTokStr[0]) == 14)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][8]-'0';
					Tp3 = StrTokStr[0][9]-'0';
					nTimerSettings.ScrDlHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.ScrDlMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][12]-'0';
					Tp3 = StrTokStr[0][13]-'0';

					nTimerSettings.ScrDlSec = (Tp*10)+Tp3;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_SCRDEL_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		

			else if(strstr(StrTokStr[0],"scrdelayon") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.ScrDlOnOff = 1;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_SCRDLONOF_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"scrdelayof") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.ScrDlOnOff = 0;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_SCRDLONOF_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}
				
			else if(strstr(StrTokStr[0],"drrestart") != 0 && isValidDRTFormat(StrTokStr[0])==1)
				{
						ReadTimerSettings();
						Tp = StrTokStr[0][9]-'0';
						Tp3 = StrTokStr[0][10]-'0';
						nTimerSettings.DrReHr = (Tp*10)+Tp3;

						Tp = StrTokStr[0][11]-'0';
						Tp3 = StrTokStr[0][12]-'0';
						nTimerSettings.DrReMin = (Tp*10)+Tp3;

						Tp = StrTokStr[0][13]-'0';
						Tp3 = StrTokStr[0][14]-'0';

						nTimerSettings.DrReSec = (Tp*10)+Tp3;

						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_DRRST_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}		
						
			else if(strstr(StrTokStr[0],"cyclictimonof") != 0 && isValidCyclicTimerFormat(StrTokStr[1])==1 && isValidCyclicTimerFormat(StrTokStr[2])==1) 
				{
						ReadTimerSettings();
					
   					Tp1= StrTokStr[1][0]-'0';
						Tp2= StrTokStr[1][1]-'0';
						nTimerSettings.CycLicOnHr=(Tp1*10)+Tp2;
						Tp1= StrTokStr[1][2]-'0';
						Tp2= StrTokStr[1][3]-'0';
						nTimerSettings.CycLicOnMin=(Tp1*10)+Tp2;
						Tp1= StrTokStr[2][0]-'0';
						Tp2= StrTokStr[2][1]-'0';
						nTimerSettings.CycLicOfHr=(Tp1*10)+Tp2;
						Tp1= StrTokStr[2][2]-'0';
						Tp2= StrTokStr[2][3]-'0';
						nTimerSettings.CycLicOfMin=(Tp1*10)+Tp2;
						nTimerSettings.CycLicOnSec=0;
						nTimerSettings.CycLicOfSec=0;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_CYCLICONOF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}		

			else if(strstr(StrTokStr[0],"cyclicon") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.CycLicOnOf = 1;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_CYCLICONOF_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}

			else if(strstr(StrTokStr[0],"cyclicof") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.CycLicOnOf = 0;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_CYCLICONOF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}			
				
			else if(strstr(StrTokStr[0],"olrestartvolt") != 0 && strlen(StrTokStr[0])== 16)
				{
						ReadTimerSettings();
						nTimerSettings.OlRstVol = StrTokStr[0][13]-'0';
						Tp = StrTokStr[0][14]-'0';
						Tp3 = StrTokStr[0][15]-'0';
						nTimerSettings.OlRstVol = (nTimerSettings.OlRstVol*100)+(Tp*10)+Tp3;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_OLRSTVOL_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}	

			else if(strstr(StrTokStr[0],"olrestartvolton") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.OlRstVolOnoff= 1;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_OLRSTVOLONOFF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}	

			else if(strstr(StrTokStr[0],"olrestartvoltof") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.OlRstVolOnoff = 0;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_OLRSTVOLONOFF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"drrestarton") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.DrReOnOf = 1;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){	
							STATE_SENDSMS=STATE_DRRST_SMS;
							SendSmsToAll = 1;
						}	
						ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"drrestartof") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.DrReOnOf = 0;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DRRST_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}

			else if(strstr(StrTokStr[0],"volsppon") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.SppOnoff = 1;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_SPP_SMS;
							SendSmsToAll = 1;
						}
					ReadTimerSettings();
				}		

			else if(strstr(StrTokStr[0],"volsppof") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.SppOnoff = 0;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_SPP_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"currentsppon") != 0)
				{
						ReadTimerSettings();
						nTimerSettings.CurSppOnOff = 1;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_CURSPP_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}	

			else if(strstr(StrTokStr[0],"currentsppof") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.CurSppOnOff = 0;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_CURSPP_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}	

			else if(strstr(StrTokStr[0],"reversephaseon") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.RvePhOnoff = 1;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_REVPHASE_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"reversephaseof") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.RvePhOnoff = 1;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_REVPHASE_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"droccurtim") != 0  && strlen(StrTokStr[0])==16)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';
					nTimerSettings.DrOccurTimHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][12]-'0';
					Tp3 = StrTokStr[0][13]-'0';
					nTimerSettings.DrOccurTimMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][14]-'0';
					Tp3 = StrTokStr[0][15]-'0';

					nTimerSettings.DrOccurTimSec = (Tp*10)+Tp3;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DROCCTIM_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}				
				
			else if(strstr(StrTokStr[0],"droccuron") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.DrOccurOnOff= 1;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DROCCONOFF_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}
				
			else if(strstr(StrTokStr[0],"droccurof") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.DrOccurOnOff = 0;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DROCCONOFF_SMS;
						SendSmsToAll = 1;
					}	
					ReadTimerSettings();
				}		

			else if(strstr(StrTokStr[0],"lowvolt2") != 0 && strlen(StrTokStr[0])==11)
				{
					ReadTimerSettings();
					nTimerSettings.LowVoltII = StrTokStr[0][8]-'0';
					Tp = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][10]-'0';

					nTimerSettings.LowVoltII = (nTimerSettings.LowVoltII*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_LOWVOLTII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"lowvolt3") != 0 && strlen(StrTokStr[0])==11)
				{
					ReadTimerSettings();
					nTimerSettings.LowVoltIII = StrTokStr[0][8]-'0';
					Tp = StrTokStr[0][9]-'0';
					Tp3 = StrTokStr[0][10]-'0';

					nTimerSettings.LowVoltIII = (nTimerSettings.LowVoltIII*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_LOWVOLTIII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		

			else if(strstr(StrTokStr[0],"highvolt2") != 0 && strlen(StrTokStr[0])==12 )
				{
					ReadTimerSettings();
					nTimerSettings.HighVoltII = StrTokStr[0][9]-'0';
					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';

					nTimerSettings.HighVoltII = (nTimerSettings.HighVoltII*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_HIGHVOLTII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"highvolt3") != 0 && strlen(StrTokStr[0])==12)
				{
					ReadTimerSettings();
					nTimerSettings.HighVoltIII = StrTokStr[0][9]-'0';
					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';

					nTimerSettings.HighVoltIII = (nTimerSettings.HighVoltIII*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_HIGHVOLTIII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}				
				
			else if(strstr(StrTokStr[0],"diffvolt2") != 0 && strlen(StrTokStr[0])==12)
				{
					ReadTimerSettings();
					nTimerSettings.DiffVoltII = StrTokStr[0][9]-'0';
					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';

					nTimerSettings.DiffVoltII = (nTimerSettings.DiffVoltII*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DIFFVOLTII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		

			else if(strstr(StrTokStr[0],"diffvolt3") != 0 && strlen(StrTokStr[0])==12)
				{
					ReadTimerSettings();
					nTimerSettings.DiffVoltIII = StrTokStr[0][9]-'0';
					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';

					nTimerSettings.DiffVoltIII = (nTimerSettings.DiffVoltIII*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DIFFVOLTIII_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"imbvolt") != 0 && strlen(StrTokStr[0])== 10)
				{
					ReadTimerSettings();
					nTimerSettings.ImbVolt = StrTokStr[0][7]-'0';
					Tp = StrTokStr[0][8]-'0';
					Tp3 = StrTokStr[0][9]-'0';

					nTimerSettings.ImbVolt = (nTimerSettings.ImbVolt*100)+(Tp*10)+Tp3;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_IMBVOLT_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}		
				
			else if(strstr(StrTokStr[0],"drscan") != 0 && strlen(StrTokStr[0])== 12)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][6]-'0';
					Tp3 = StrTokStr[0][7]-'0';
					nTimerSettings.DrScHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][8]-'0';
					Tp3 = StrTokStr[0][9]-'0';
					nTimerSettings.DrScMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';

					nTimerSettings.DrScSec = (Tp*10)+Tp3;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_DRSCAN_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}	
			
			else if(strstr(StrTokStr[0],"olscan") != 0 && strlen(StrTokStr[0])== 12)
				{
					ReadTimerSettings();
					Tp = StrTokStr[0][6]-'0';
					Tp3 = StrTokStr[0][7]-'0';
					nTimerSettings.OlScanHr = (Tp*10)+Tp3;

					Tp = StrTokStr[0][8]-'0';
					Tp3 = StrTokStr[0][9]-'0';
					nTimerSettings.OlScanMin = (Tp*10)+Tp3;

					Tp = StrTokStr[0][10]-'0';
					Tp3 = StrTokStr[0][11]-'0';

					nTimerSettings.OlScanSec = (Tp*10)+Tp3;

					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_OLSCAN_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}			
				
			else if(strstr(StrTokStr[0],"sfbon") != 0)
				{
					ReadSettingsFile();
					nMSettings.SfbOnOff = 1;
					WriteSettingsFile();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS = STATE_SFB_SMS;
						SendSmsToAll = 1;
					}	
					ReadSettingsFile();
				}			

			else if(strstr(StrTokStr[0],"sfbof") != 0)
				{
						ReadSettingsFile();
						nMSettings.SfbOnOff = 0;
						WriteSettingsFile();
					if(nMSettings.responseOnOf==1){
								STATE_SENDSMS = STATE_SFB_SMS;
								SendSmsToAll = 1;
					}
						ReadSettingsFile();
				}				
			else if(strstr(StrTokStr[0],"pfcseton") != 0)
				{
					ReadSettingsFile();
					nTimerSettings.pfcOnOff = 1;
					WriteSettingsFile();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_POWERFACTOR_SMS;
						SendSmsToAll = 1;
					}
					ReadSettingsFile();
				}
				
			else if(strstr(StrTokStr[0],"pfcsetof") != 0)
				{
					ReadSettingsFile();
					nTimerSettings.pfcOnOff = 0;
					WriteSettingsFile();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_POWERFACTOR_SMS;
						SendSmsToAll = 1;
					}
					ReadSettingsFile();
				}				
			else if(strstr(StrTokStr[0],"sumpon") != 0)
				{
				ReadSettingsFile();
				nMSettings.SumpOnOff = 1;
				WriteSettingsFile();
				ReadSettingsFile();
				if(nMSettings.responseOnOf==1){	
					STATE_SENDSMS = STATE_SUMP_SMS;			
					SendSmsToAll = 1;
				}			
			}
			else if(strstr(StrTokStr[0],"sumpof") != 0)
				{
				ReadSettingsFile();
				nMSettings.SumpOnOff = 0;				
				WriteSettingsFile();
				ReadSettingsFile();
				
			  if(nMSettings.responseOnOf==1){
				  STATE_SENDSMS = STATE_SUMP_SMS;
				  SendSmsToAll = 1;
			  }
				
			}
		  else if(strstr(StrTokStr[0],"tankon") != 0)
				{
				ReadSettingsFile();
				nMSettings.TankOnOff = 1;
				WriteSettingsFile();				
				ReadSettingsFile();
				if(nMSettings.responseOnOf==1){
					STATE_SENDSMS = STATE_TANK_SMS;
					SendSmsToAll = 1;
				}				
			}
			else if(strstr(StrTokStr[0],"tankof") != 0)
				{
				ReadSettingsFile();
				nMSettings.TankOnOff = 0;				
				WriteSettingsFile();
				ReadSettingsFile();				
				if(nMSettings.responseOnOf==1){
					STATE_SENDSMS = STATE_TANK_SMS;
					SendSmsToAll = 1;
				}
				
			}
			else if(strstr(StrTokStr[0],"pwrvbof") != 0)
				{				 
					ReadSettingsFile();
					nMSettings.pwrvfbOnOf = 0;				
					WriteSettingsFile();				
					ReadSettingsFile();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS = STATE_PWRVFB_SMS;
						SendSmsToAll = 1;
					}
			 
				}
			else if(strstr(StrTokStr[0],"vfbon") != 0)
				{
					ReadSettingsFile();
					nMSettings.VBFOnOff = 1;				
					ReadSettingsFile();
					WriteSettingsFile();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS = STATE_VFB_SMS;			
						SendSmsToAll = 1;
					}
				}
			else if(strstr(StrTokStr[0],"vfbof") != 0)
				{
					ReadSettingsFile();
					nMSettings.VBFOnOff = 0;				
					WriteSettingsFile();				
					ReadSettingsFile();				
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS = STATE_VFB_SMS;
						SendSmsToAll = 1;
					}
				}	
			else if(strstr(StrTokStr[0],"maxtim") != 0)
				{
						ReadTimerSettings();
						Tp = StrTokStr[0][6]-'0';
						Tp3 = StrTokStr[0][7]-'0';
						nTimerSettings.MaxRnHr = (Tp*10)+Tp3;

						Tp = StrTokStr[0][8]-'0';
						Tp3 = StrTokStr[0][9]-'0';
						nTimerSettings.MaxRnMin = (Tp*10)+Tp3;

						Tp = StrTokStr[0][10]-'0';
						Tp3 = StrTokStr[0][11]-'0';

						nTimerSettings.MaxRnSec = (Tp*10)+Tp3;

						WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
							STATE_SENDSMS=STATE_MAXTIM_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
				}
		
		else if(strstr(StrTokStr[0],"maxtimon") != 0)
			{
				ReadTimerSettings();
				nTimerSettings.MaxRnOnOf = 1;
				WriteTimerSettings();
				if(nMSettings.responseOnOf==1){		
					STATE_SENDSMS=STATE_MAXTIM_SMS;
					SendSmsToAll = 1;
				}
				ReadTimerSettings();
			}
		
		else if(strstr(StrTokStr[0],"maxtimof") != 0)
			{
				ReadTimerSettings();
				nTimerSettings.MaxRnOnOf = 0;
				WriteTimerSettings();
				if(nMSettings.responseOnOf==1){
					STATE_SENDSMS=STATE_MAXTIM_SMS;
					SendSmsToAll = 1;
				}
				ReadTimerSettings();
			}
				else if(strstr(StrTokStr[0],"rtctimonof") != 0 )
				{
							i = StrTokStr[0][10]-'0';
					
							if(i>=1&&i<=4)
							{							 

							Tp1= StrTokStr[1][0]-'0';
							Tp2= StrTokStr[1][1]-'0';
							nTimerSettings.RTCOnHr[i]=(Tp1*10)+Tp2;
							Tp1= StrTokStr[1][2]-'0';
							Tp2= StrTokStr[1][3]-'0';
							nTimerSettings.RTCOnMin[i]=(Tp1*10)+Tp2;
							Tp1= StrTokStr[2][0]-'0';
							Tp2= StrTokStr[2][1]-'0';
							nTimerSettings.RTCOfHr[i]=(Tp1*10)+Tp2;
							Tp1= StrTokStr[2][2]-'0';
							Tp2= StrTokStr[2][3]-'0';
							nTimerSettings.RTCOfMin[i]=(Tp1*10)+Tp2;

							WriteTimerSettings();
							ReadTimerSettings();
								
							if(nMSettings.responseOnOf==1){	
									if(i==1)
									STATE_SENDSMS=STATE_RTCTIMON1_SMS;
									if(i==2)
									STATE_SENDSMS=STATE_RTCTIMON2_SMS;
									if(i==3)
									STATE_SENDSMS=STATE_RTCTIMON3_SMS;
									if(i==4)
									STATE_SENDSMS=STATE_RTCTIMON4_SMS;
									SendSmsToAll = 1;
								}
							}
				}
			else if(strstr(StrTokStr[0],"rtcon") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.RTCOnOf = 1;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_RTCONOF_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}				
			else if(strstr(StrTokStr[0],"rtcof") != 0)
				{
					ReadTimerSettings();
					nTimerSettings.RTCOnOf = 0;
					WriteTimerSettings();
					if(nMSettings.responseOnOf==1){
						STATE_SENDSMS=STATE_RTCONOF_SMS;
						SendSmsToAll = 1;
					}
					ReadTimerSettings();
				}
			else if(strstr(StrTokStr[0],"lowvolton") != 0)
					{
						ReadTimerSettings();
						nTimerSettings.LowVoltOnOff = 1;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){	
							STATE_SENDSMS=STATE_LOWVOLTONOFF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
					}
					
				else if(strstr(StrTokStr[0],"lowvoltof") != 0)
					{
						ReadTimerSettings();
						nTimerSettings.LowVoltOnOff = 0;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){	
							STATE_SENDSMS=STATE_LOWVOLTONOFF_SMS;
							SendSmsToAll = 1;
						}
							ReadTimerSettings();
					}
				else if(strstr(StrTokStr[0],"highvolton") != 0)
					{
						ReadTimerSettings();
						nTimerSettings.HighVoltOnOff = 1;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){	
							STATE_SENDSMS=STATE_HIGHVOLTONOFF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
					}					
				else if(strstr(StrTokStr[0],"highvoltof") != 0)
					{
						ReadTimerSettings();
						nTimerSettings.HighVoltOnOff = 0;
						WriteTimerSettings();
						if(nMSettings.responseOnOf==1){	
							STATE_SENDSMS=STATE_HIGHVOLTONOFF_SMS;
							SendSmsToAll = 1;
						}
						ReadTimerSettings();
					}
				else if(strstr(StrTokStr[0],"hidiffvolt2") != 0)
						{
								ReadTimerSettings();
								nTimerSettings.HiDiffVoltII = StrTokStr[0][11]-'0';
								Tp = StrTokStr[0][12]-'0';
								Tp3 = StrTokStr[0][13]-'0';

								nTimerSettings.HiDiffVoltII = (nTimerSettings.HiDiffVoltII*100)+(Tp*10)+Tp3;
								WriteTimerSettings();
								if(nMSettings.responseOnOf==1){
									STATE_SENDSMS=STATE_HIDIFFVOLTII_SMS;
									SendSmsToAll = 1;
								}
								ReadTimerSettings();
						}		
						
				else if(strstr(StrTokStr[0],"hidiffvolt3") != 0)
						{
								ReadTimerSettings();
								nTimerSettings.HiDiffVoltIII = StrTokStr[0][11]-'0';
								Tp = StrTokStr[0][12]-'0';
								Tp3 = StrTokStr[0][13]-'0';
								Debug("\n\r High Volt = %d %d %d\n\r",nTimerSettings.HiDiffVoltIII,Tp,Tp3);						 
								nTimerSettings.HiDiffVoltIII = (nTimerSettings.HiDiffVoltIII*100)+(Tp*10)+Tp3;
								Debug("\n\r--------------- %d %d %d -------------------\n\r",nTimerSettings.HiDiffVoltIII,Tp,Tp3);
								WriteTimerSettings();
								if(nMSettings.responseOnOf==1){
									STATE_SENDSMS=STATE_HIDIFFVOLTIII_SMS;
									SendSmsToAll = 1;
								}
								ReadTimerSettings();
						}	
        else if(strstr(StrTokStr[0],"pfcvolt") != 0)
						{
							ReadSettingsFile();
							nTimerSettings.pfcvolt = StrTokStr[0][7]-'0';
							Tp = StrTokStr[0][8]-'0';
							Tp3 = StrTokStr[0][9]-'0';

							nTimerSettings.pfcvolt = (nTimerSettings.pfcvolt*100)+(Tp*10)+Tp3;
							WriteSettingsFile();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS=STATE_PFCVOLT_SMS;
								SendSmsToAll = 1;
							}
							ReadSettingsFile();
						}  
				else if(strstr(StrTokStr[0],"imbvolt") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.ImbVolt = StrTokStr[0][7]-'0';
							Tp = StrTokStr[0][8]-'0';
							Tp3 = StrTokStr[0][9]-'0';

							nTimerSettings.ImbVolt = (nTimerSettings.ImbVolt*100)+(Tp*10)+Tp3;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS=STATE_IMBVOLT_SMS;
								SendSmsToAll = 1;
							}
							ReadTimerSettings();
						}
				else if(strstr(StrTokStr[0],"olon") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.OlOnOff = 1;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS=STATE_OLINOFF_SMS;
								SendSmsToAll = 1;
							}
							ReadTimerSettings();
						}		
						
				else if(strstr(StrTokStr[0],"olof") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.OlOnOff = 0;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS=STATE_OLINOFF_SMS;
								SendSmsToAll = 1;
							}	
							ReadTimerSettings();
						}
				else if(strstr(StrTokStr[0],"2phaseon") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.AutoStIIOnOff = 1;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS=STATE_AUTOSTII_SMS;
								SendSmsToAll = 1;
							}
							ReadTimerSettings();
						}
						
				else if(strstr(StrTokStr[0],"2phaseof") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.AutoStIIOnOff = 0;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS= STATE_AUTOSTII_SMS;
								SendSmsToAll = 1;
							}
							ReadTimerSettings();
						} 	
        else if(strstr(StrTokStr[0],"olrston") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.AutoOlDrRstIIOnOff = 1;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS=STATE_AUTOOLDRRST_SMS;
								SendSmsToAll = 1;
							}
							ReadTimerSettings();
						}
						
					else if(strstr(StrTokStr[0],"olrstof") != 0)
						{
							ReadTimerSettings();
							nTimerSettings.AutoOlDrRstIIOnOff = 0;
							WriteTimerSettings();
							if(nMSettings.responseOnOf==1){
								STATE_SENDSMS= STATE_AUTOOLDRRST_SMS;
								SendSmsToAll = 1;
							}
							ReadTimerSettings();
						}	
            else if(strstr(StrTokStr[0],"drrston") != 0)
								{
									ReadTimerSettings();
									nTimerSettings.AutoDrRunRstIIOnOff = 1;
									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_AUTODRRUNRST_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}
								
						else if(strstr(StrTokStr[0],"drrstof") != 0)
								{
									ReadTimerSettings();
									nTimerSettings.AutoDrRunRstIIOnOff = 0;
									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS= STATE_AUTODRRUNRST_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}
           else if(strstr(StrTokStr[0],"manualon") != 0)
								{
									ReadTimerSettings();
									nTimerSettings.ManualOnOff = 1;
									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_MANULONOF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}
								
						else if(strstr(StrTokStr[0],"manualof") != 0)
								{
									ReadTimerSettings();
									nTimerSettings.ManualOnOff = 0;
									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_MANULONOF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}	
            else if(strstr(StrTokStr[0],"droccurnbr") != 0)
								{
									ReadTimerSettings();
									Tp = StrTokStr[0][10]-'0';
									Tp3 = StrTokStr[0][11]-'0';
									nTimerSettings.DrOccurNum = (Tp*10)+Tp3;
									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_DROCCNUM_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								} 
            else if(strstr(StrTokStr[0],"ctron") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.CTRonoff = 1;
									
									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_CTRON_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}
								
						else if(strstr(StrTokStr[0],"ctrof") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.CTRonoff = 0;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_CTROF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}		

						else if(strstr(StrTokStr[0],"ctyon") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.CTYonoff = 1;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_CTYON_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}
								
						else if(strstr(StrTokStr[0],"ctyof") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.CTYonoff = 0;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_CTYOF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}		
						else if(strstr(StrTokStr[0],"ctbon") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.CTBonoff = 1;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=STATE_CTBON_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}								
						else if(strstr(StrTokStr[0],"ctbof") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.CTBonoff = 0;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_CTBOF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}
						else if(strstr(StrTokStr[0],"autorst2on") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.AutoRst2On = 1;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_AUTORST2ONOFF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}								
						else if(strstr(StrTokStr[0],"autorst2of") != 0)
								{
									ReadTimerSettings();

									nTimerSettings.AutoRst2On = 0;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_AUTORST2ONOFF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}								
						else if(strstr(StrTokStr[0],"mobilerston") != 0)
								{
									ReadTimerSettings();
									nTimerSettings.AutoRstOn = 1;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_AUTORSTONOFF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								}									
						else if(strstr(StrTokStr[0],"mobilerstof") != 0)
								{
									ReadTimerSettings();
									nTimerSettings.AutoRstOn = 0;

									WriteTimerSettings();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS=	STATE_AUTORSTONOFF_SMS;
										SendSmsToAll = 1;
									}
									ReadTimerSettings();
								} 
           else if(strstr(StrTokStr[0],"pwrvbon") != 0)
								{
									//char SendString[70] = "";
									ReadSettingsFile();
									nMSettings.pwrvfbOnOf = 1;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_PWRVFB_SMS;
										SendSmsToAll = 1;
										// sAPI_Sprintf(SendString,"POWER VFB ON\n");
										//sAPI_Sprintf(SendString,"%sREG S NO:%s\n",SendString,StoredPhoneNumber[11]);
										// simcom_sms_msg_send(ph_num, SendString, strlen(SendString),SmSCallback);
										// sAPI_Sprintf(buf,"\n\r smsbuffer %s\n\r",SendString);
										// PrintfResp(buf);
									}
									ReadSettingsFile();
								}		
								
						else if(strstr(StrTokStr[0],"pwrvbof") != 0)
								{
									//char SendString[70] = "";
									ReadSettingsFile();
									nMSettings.pwrvfbOnOf = 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_PWRVFB_SMS;										 
										SendSmsToAll = 1;
										//sAPI_Sprintf(SendString,"POWER VFB OFF\n");
										//simcom_sms_msg_send(ph_num, SendString, strlen(SendString),SmSCallback);
										// sAPI_Sprintf(buf,"\n\r smsbuffer %s\n\r",SendString);
										// PrintfResp(buf);
									}
									ReadSettingsFile();
								}		
								
						else if(strstr(StrTokStr[0],"vfbon") != 0)
								{
									ReadSettingsFile();
									nMSettings.VBFOnOff = 1;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_VFB_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}
										
						else if(strstr(StrTokStr[0],"vfbof") != 0)
								{
									ReadSettingsFile();
									nMSettings.VBFOnOff = 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_VFB_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}			
								
						else if(strstr(StrTokStr[0],"smson") != 0)
								{
										ReadSettingsFile();
										nMSettings.SMSOnOff = 1;
										WriteSettingsFile();
										if(nMSettings.responseOnOf==1){
											STATE_SENDSMS = STATE_SMSON_SMS;
											SendSmsToAll = 1;
											//simcom_sms_send(ph_num,smsbuffer,strlen(smsbuffer));
											//sAPI_Sprintf(smsbuffer,"SMS ON");										
										}
										ReadSettingsFile();	
								}	

						else if(strstr(StrTokStr[0],"smsof") != 0)
								{
									//char SendString[70] = "";
									ReadSettingsFile();
									nMSettings.SMSOnOff = 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_SMSON_SMS;
										SendSmsToAll = 1;			
										//	sprintf(SendString,"SMS OFF\n\r");
										//simcom_sms_send(ph_num, SendString, strlen(SendString));
									}
									ReadSettingsFile();
								}
						else if(strstr(StrTokStr[0],"stsmson") != 0)
								{
									ReadSettingsFile();
									nMSettings.staticSMSOnOff = 1;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_stSMSON_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}
								
						else if(strstr(StrTokStr[0],"stsmsof") != 0)
								{
									ReadSettingsFile();
									nMSettings.staticSMSOnOff = 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
									STATE_SENDSMS = STATE_stSMSON_SMS;
									SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}
						else if(strstr(StrTokStr[0],"responseon") != 0)
								{
									ReadSettingsFile();
									nMSettings.responseOnOf= 1;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_RESP_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}	
           else if(strstr(StrTokStr[0],"responseof") != 0)
								{
									ReadSettingsFile();
									nMSettings.responseOnOf= 0;
									WriteSettingsFile();									 
									STATE_SENDSMS = STATE_RESP_SMS;
									SendSmsToAll = 1;									 
									ReadSettingsFile();
								}
           
					else if(strstr(StrTokStr[0],"loraon") != 0)
								{
									ReadSettingsFile();
									nMSettings.ModeSelect= 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_RESP_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}
					else if(strstr(StrTokStr[0],"gsmon") != 0)
								{
									ReadSettingsFile();
									nMSettings.ModeSelect= 1;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_RESP_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}	
					else if(strstr(StrTokStr[0],"wifion") != 0)
								{
									ReadSettingsFile();
									nMSettings.ModeSelect= 2;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_RESP_SMS;
										SendSmsToAll = 1;
									}
									ReadSettingsFile();
								}
        							
				
			/*clear the buffer after processed*/
			memset(ProcessBuf,NULL,sizeof(ProcessBuf));
			return 1;  //succeed
	}
	else {
			/*clear the buffer after processed*/
			memset(ProcessBuf,NULL,sizeof(ProcessBuf));
			memset((char*)ModemString,NULL,sizeof(ModemString));
			return 0;
	}
	#endif
}


