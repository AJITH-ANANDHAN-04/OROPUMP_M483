#line 1 "..\\RunMotor.c"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 3 "..\\RunMotor.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 4 "..\\RunMotor.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 5 "..\\RunMotor.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 6 "..\\RunMotor.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"
 
 
 
 





 






 








#line 35 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"






#line 49 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"

 
#line 59 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"

 
 









 
#line 81 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"





#line 133 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"

extern __declspec(__nothrow) __attribute__((const)) unsigned char **__rt_ctype_table(void);







    extern int (isalnum)(int  );

     





    extern int (isalpha)(int  );

     





    extern int (iscntrl)(int  );

     
     

 




    extern int (isdigit)(int  );

     

    extern int (isblank)(int  );
     
     
     





    extern int (isgraph)(int  );

     





    extern int (islower)(int  );

     





    extern int (isprint)(int  );

     
     





    extern int (ispunct)(int  );

     





    extern int (isspace)(int  );

     





    extern int (isupper)(int  );

     

 
 

__inline int __isxdigit_helper(int __t) { return (__t ^ (__t << 2)); }




    extern int (isxdigit)(int  );

     



extern int tolower(int  );
     
     

extern int toupper(int  );
     
     







#line 272 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"



 

#line 7 "..\\RunMotor.c"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\Platform.h"



#line 5 "..\\..\\..\\..\\Library\\StdDriver\\inc\\Platform.h"
 





 



 






 





 



   

 





 
 
 	
#line 49 "..\\..\\..\\..\\Library\\StdDriver\\inc\\Platform.h"

 

















 




 
 
 
void CheckVoltageCurrent(void); 
unsigned char CheckRTC(void);
void RunMotor(unsigned char OnOff,unsigned char PowerCondition);
void UpdateVoicePowerCondition(unsigned char PowerCondition);
unsigned int myatoi(char *s);
double myatof( char *s);
void prodset(void);
int ReadSettingsFile(void);
int WriteSettingsFile(void);
int ReadTimerSettings(void);
int WriteTimerSettings(void);
void print_lcd(volatile uint8_t (*lcd_ptr)[16]);
void checkkeypress(void);
void DisplayRountine(void);
int CheckPH2PH3Selection(void);
uint8_t CheckAutoMobile(void);
uint8_t Check2Phase(void);
void DrRestartTimer(void);
void checksmslimit(void);
void set_hourly_power_data(void);
void Send_30min_Status_sms(void);
void check_voicefeedback_status(void);
void Power_event_check(void);
void Check_Send_SMS(void);
uint8_t Process_Received_Settings(void);
uint8_t crc8(const void *data, size_t size);
void debug(char * data,int len);
void Debug(const char *format, ...);
void Uart_Send_with_crc(char* data);
void buffer_memsets(void);

 
 
 
 
 
extern char DIS_BUF[80];
extern char SMS_BUF[200];
extern int8_t DNDSMSFLAG[5];
extern char WhoMadeRelayOn[20];
extern char buffer[200]; 
extern volatile int8_t IMEI[15];
extern volatile char ModemString[200];

 
extern volatile uint8_t lcd_row[2][16];
 
 
extern unsigned char PreviousTrip;

extern volatile signed char Page;

extern uint8_t FirstTimerinProgram1,FirstTimerinProgram2,FirstTimerinProgram3,FirstTimerinProgram4,RTCCheckFirstTime,OverAllStarterTrip;

 
extern long 	NoElePowerOfTimer,LastDayRunTimer,RunTimerhr,RunTimermin,RunTimersec,RunTimer,MRunTimer,Runflow,MRunflow,LastDayRunflow;
 
 
extern uint8_t 	SetToGreenFlag,Stg3FirstTimer,Stg2FirstTimer,MassageReceived,limitsmsonof,limitsmscount,limitsmsset,
                limitsmsflag,WritePhoneNumber,SaveNumberPos,valve_onof_msg,limitsmscountsmsm,PrvAutoMobileKey,Appmodeon,gprson,
                ModemIsReady,power_on_flag_count,OnFromMobile,PrvLoMotorStatus,PrvUpMotorStatus,NoAcceptSMS,AutoMobileKey,OnByTarget,
								checkpower,TargetNumberFound,debugon;

extern uint8_t FirstTimerinProgram1,FirstTimerinProgram2,FirstTimerinProgram3,FirstTimerinProgram4,PrvDate,OffMotorByPhone,
	             SendSmsToAll,ChangeSoundStatus,NowStarted,NowOff,VolCurGetTimer,VolCurGetTimern,Ph2Ph3Selection,PrvPh2Ph3Selection;

extern uint8_t Enter,enter1,enter2,MakeRealyOn,StartByMobile,PowerCurrentCondition,livedataflag1,livedataflagcount1;

extern int  MotorStarterTripCount,ActMotorStarterTripTimer,Mobile2Phs3Phase;

extern uint16_t RecheckCounterUT;
struct CurrentCond
{
	float RVoltage,YVoltage,BVoltage;
	float RYVoltage,YBVoltage,BRVoltage;
	float Rcurrent,Ycurrent,Bcurrent;	 
};
 
typedef enum
{
	STATUS_MOTOROF_SMS,
	STATUS_NO_ELECTRICICY,
	STATUS_ON_RESTART_NOLOAD,
	STATUS_MOTOR_STARTER_TRIP_SMS,
	STATUS_MOTOR_UPPERTANK_TRIP_SMS,
	STATUS_MOTOR_LOWERTANK_TRIP_SMS,
	STATUS_MOTOR_DRYRUN_TRIP_SMS,
	STATUS_MOTOR_TRIP_OVERLOAD,
	STATUS_MOTOR_TRIP_HIGHPRESS,
	STATUS_MOTOR_TRIP_LOWPRESS,
	STATUS_MOTOR_TRIP_SPP,
	STATUS_MOTOR_TRIP_REVERSEPHASE,
	STATUS_MOTOR_TRIP_2PHASE,
	STATUS_MOTOR_TRIP_3PHASE,
	STATUS_MOTOR_TRIP_CURRENTSPP,
	STATUS_MOTOR_TRIP_LOWVOLTAGE,
	STATUS_MOTOR_TRIP_HIGHVOLTAGE,
	STATUS_MOTOR_GRTCOF_TRIP_SMS,
	STATUS_MOTOR_RTCOF1_TRIP_SMS,
	STATUS_MOTOR_RTCOF2_TRIP_SMS,
	STATUS_MOTOR_RTCOF3_TRIP_SMS,
	STATUS_MOTOR_RTCOF4_TRIP_SMS,
	STATUS_MOTOR_CYCLIC_TRIP_SMS,
	STATUS_MOTOR_MAX_TRIP_SMS,
	STATUS_MOTOR_VCYCCOMPLE_TRIP_SMS,
	STATUS_MOTOR_NOCOMMUNICATION_TRIP_SMS,
	STATUS_MOTOR_ON_DEFAULT,
	STATUS_MOTOR_ON_ONDELAY,
	STATUS_MOTOR_ON_RTC1,
	STATUS_MOTOR_ON_GRTC,
	STATUS_MOTOR_ON_RTC2,
	STATUS_MOTOR_ON_RTC3,
	STATUS_MOTOR_ON_RTC4,
	STATUS_MOTOR_ON_UPPERTANK,
	STATUS_MOTOR_ON_LOWERTANK,
	STATUS_MOTOR_ON_RESTARTTIMER,
	STATUS_MOTOR_ON_SWITCH,
	STATE_STGIII_SMS,
	STATE_STGII_SMS,
	STATUS_MOTOR_ON_SWITCH_TRIP_SMS,
	STATUS_MOTOR_ON_TARGET,
	STATUS_MOTOR_OFF_TARGET,
}STATE_STATUS_SMS;

typedef enum
{
	STATE_MOTOR_ON_DEFAULT,
	STATE_MOTOR_ON_ONDELAY,
	STATE_MOTOR_ON_GRTC,
	STATE_MOTOR_ON_RTC1,
	STATE_MOTOR_ON_RTC2,
	STATE_MOTOR_ON_RTC3,
	STATE_MOTOR_ON_RTC4,
	STATE_MOTOR_ON_UPPERTANK,
	STATE_MOTOR_ON_LOWERTANK,
	STATE_MOTOR_ON_RESTARTTIMER,
	STATE_MOTOR_ON_SPP,
	STATE_MOTOR_ON_HIGHVOLTAGE,
	STATE_MOTOR_ON_LOWVOLTAGE,
	STATE_MOTOR_ON_AUTOOLDRRST,
	STATE_MOTOR_ON_OLVOLTAGE,
	STATE_MOTOR_ON_SWITCH_SMS,
	STATE_MOTOR_ON_TARGET,
}STATE_MOTOR_ON_SMS;

typedef enum
{
	NO_RTC_TIMER,
	GRTC_TIMER_ON,
	RTC1_TIMER_ON,
	RTC2_TIMER_ON,
	RTC3_TIMER_ON,
	RTC4_TIMER_ON,

}RTC_CURRENT_STATUS;

typedef enum
{
	STATE_NO_MOTOR_SMS,
	STATE_MOTORON_SMS,
	STATE_MOTOROF_SMS,
	STATE_MOTOR_STARTER_TRIP_SMS,
	STATE_MOTOR_UPPERTANK_TRIP_SMS,
	STATE_MOTOR_LOWERTANK_TRIP_SMS,
	STATE_MOTOR_TRIP_OVERLOAD_SMS,
	STATE_MOTOR_TRIP_HIGHPRESS_SMS,
	STATE_MOTOR_TRIP_LOWPRESS_SMS,
	STATE_MOTOR_TRIP_SPP_SMS,
	STATE_MOTOR_TRIP_REVERSEPHASE_SMS,
	STATE_MOTOR_TRIP_2PHASE_SMS,
	STATE_MOTOR_TRIP_3PHASE_SMS,
	STATE_MOTOR_TRIP_CURRENTSPP_SMS,
	STATE_MOTOR_TRIP_LOWVOLTAGE_SMS,
	STATE_MOTOR_TRIP_HIGHVOLTAGE_SMS,
	STATE_MOTOR_DRYRUN_TRIP_SMS,
	STATE_MOTOR_GRTCOF_TRIP_SMS,
	STATE_MOTOR_RTCOF1_TRIP_SMS,
	STATE_MOTOR_RTCOF2_TRIP_SMS,
	STATE_MOTOR_RTCOF3_TRIP_SMS,
	STATE_MOTOR_RTCOF4_TRIP_SMS,
	STATE_MOTOR_CYCLIC_TRIP_SMS,
	STATE_MOTOR_MAX_TRIP_SMS,
	STATE_MOTOR_VCYCCOMPLE_TRIP_SMS,
	STATE_MOTOR_OFF_TARGET,
	STATE_MOTOR_NOCOMMUNICATION_TRIP_SMS,
	STATE_MOTOROF_3PHASE_ONLY_SMS,
}STATE_MOTOR_SMS;


typedef enum
{
	STATE_MOTOR_POWERONDELAY,
	STATE_MOTOR_STARDELTADELAY,
	STATE_MOTOR_ON,
	STATE_MOTOR_TRIP_STARTER,
	STATE_MOTOR_TRIP_DRYRUN_SCAN,
	STATE_MOTOR_TRIP_DRYRUN,
	STATE_MOTOR_TRIP_HIGHPRESS,
	STATE_MOTOR_TRIP_LOWPRESS,
	STATE_MOTOR_TRIP_OVERLOAD_SCAN,
	STATE_MOTOR_TRIP_HIGHPRESS_SCAN,
	STATE_MOTOR_TRIP_LOWPRESS_SCAN,
	STATE_MOTOR_TRIP_OVERLOAD,
	STATE_MOTOR_TRIP_SPP,
	STATE_MOTOR_TRIP_REVERSEPHASE,
	STATE_MOTOR_TRIP_2PHASE,
	STATE_MOTOR_TRIP_3PHASE,
	STATE_MOTOR_TRIP_CURRENTSPP,
	STATE_MOTOR_TRIP_LOWVOLTAGE,
	STATE_MOTOR_TRIP_HIGHVOLTAGE,
	STATE_MOTOR_TRIP_UPPERTANK,
	STATE_MOTOR_TRIP_LOWERTANK,
	STATE_MOTOR_TRIP_TARGET,
	STATE_MOTOR_TRIP_RESTART,
	STATE_MOTOR_TRIP_MAXTIME,
	STATE_MOTOR_TRIP_VCYCCOMPLETE,
	STATE_MOTOR_TRIP_OFFDELAY,
	STATE_MOTOR_TRIP_GRTCOF,
	STATE_MOTOR_TRIP_RTCOF1,
	STATE_MOTOR_TRIP_RTCOF2,
	STATE_MOTOR_TRIP_RTCOF3,
	STATE_MOTOR_TRIP_RTCOF4,
	STATE_MOTOR_OFF,
	STATE_MOTOR_ON_SWITCH_TRIP_SMS,
	STATE_MOTOR_TRIP_NOCOMMUNICATION,
}STATE_MOTOR;

typedef enum
{
	NO_TCOND,
	ON_DELAY,
	OF_DELAY,
}CYCTimer;

typedef enum
{
	STATUS_MOTOR_AT_OFF,
	STATUS_MOTOR_AT_POWERONDELAY,
	STATUS_MOTOR_AT_STARDELTA,
	STATUS_MOTOR_ON_PROPERLY,

}STATE_STATUS_ONDELAY_SD;

typedef enum
{
    NO_COND,
	NO_LOAD,
	OV_LOAD,
	OVPRESS_LOAD,
	LOPRESS_LOAD,
}nDISPLAYMsg;
typedef enum
{
	STATE_MOTOR_OK,
	STATE_MOTOR_STARTER,
	STATE_MOTOR_NOLOAD,
	STATE_MOTOR_UPPERTANK,
	STATE_MOTOR_LOWERTANK,
	STATE_MOTOR_OVERLOAD,
	STATE_MOTOR_HIGHPRESS,
	STATE_MOTOR_LOWPRESS,
	
	STATE_MOTOR_SPP,
	STATE_MOTOR_CSPP,
	
	STATE_MOTOR_LOWVOLTAGE,
	STATE_MOTOR_HIGHVOLTAGE,
}STATE_MOTOR_PROBLEM;
typedef enum
{
    STATE_NO_SMS,
	STATE_SMSON_SMS,	 
	STATE_LIMIT_SMSON_SMS,
	STATE_LIMITSMSSET_SMS,
	STATE_VLIMITSMSSET_SMS,
	STATE_stSMSON_SMS,
	STATE_sampleSMSON_SMS,
	STATE_canSMSON_SMS,
	STATE_dataSMSON_SMS,
	STATE_gethidesmson_SMS,
	STATE_SFB_SMS,
	STATE_PRESSURE_SMS,
	STATE_MANUALSWITCH_SMS,
	STATE_TANK_SMS,
	STATE_SUMP_SMS,
	STATE_DRYRUN_SMS,
	STATE_TARGET_SMS,
	STATE_VFB_SMS,
	STATE_PWRVFB_SMS,
	STATE_ONDELAY_SMS,
	STATE_SDDELAY_SMS,
	STATE_SFBDELAY_SMS,
	STATE_DRRSTONOF_SMS,
	STATE_DRRST_SMS,
	STATE_DRSCANONOF_SMS,
	STATE_DRSCAN_SMS,
	STATE_MAXTIMONOF_SMS,
	STATE_MAXTIM_SMS,
	STATE_CYCLICONOF_SMS,	 
	STATE_CYCLICTIMON_SMS,
	STATE_CYCLICTIMOF_SMS, 
	STATE_CALFLOWONOF_SMS,	 
	STATE_RTCONOF_SMS,
	STATE_RTCTIMON1_SMS,
	STATE_RTCTIMOF1_SMS,	
	STATE_RTCTIMON2_SMS,
	STATE_RTCTIMOF2_SMS,
	STATE_RTCTIMON3_SMS,
	STATE_RTCTIMOF3_SMS,
	STATE_RTCTIMON4_SMS,
	STATE_RTCTIMOF4_SMS,
	STATE_DATETIME_SMS,
	STATE_PROGRAMSEL_SMS,
	STATE_VISET_SMS,	
	STATE_SECONOF_SMS,
	STATE_SCRDLONOF_SMS,
	STATE_SCRDEL_SMS,
	STATE_POSCRDLONOF_SMS,
	STATE_POSCRDEL_SMS,
	STATE_LOWVOLTONOFF_SMS,
	STATE_LOWVOLTII_SMS,
	STATE_LOWVOLTIII_SMS,
	STATE_HIGHVOLTONOFF_SMS,
	STATE_HIGHVOLTII_SMS,
	STATE_HIGHVOLTIII_SMS,
	STATE_IMBVOLT_SMS,
	STATE_PFCVOLT_SMS,
	STATE_REVPHASE_SMS,
	STATE_CURSPP_SMS,
	STATE_SPP_SMS,
	STATE_CALFLOWII_SMS,
	STATE_CALFLOWIII_SMS,
	STATE_DRAMPII_SMS,
	STATE_DRAMPIII_SMS,
	STATE_OLINOFF_SMS,
	STATE_LOWPRESS_SMS,
	STATE_HIGHPRESS_SMS,
	STATE_HIGHPRESSONOF_SMS,
	STATE_LOWPRESSONOF_SMS,
	STATE_OLAMPSII_SMS,
	STATE_OLAMPSIII_SMS,
	STATE_OLSCAN_SMS,
	STATE_AUTOSTII_SMS,
	STATE_AUTOSTIII_SMS,
	STATE_AUTOOLDRRST_SMS,
	STATE_AUTODRRUNRST_SMS,
	STATE_POWERFACTOR_SMS,
	STATE_MANULONOF_SMS,
	STATE_OLRSTVOLONOFF_SMS,
	STATE_OLRSTVOL_SMS,
	STATE_DROCCONOFF_SMS,
	STATE_DROCCTIM_SMS,
	STATE_DROCCNUM_SMS,
	STATE_DIFFVOLTII_SMS,
	STATE_DIFFVOLTIII_SMS,
	STATE_CALPV_SMS,
	STATE_CALPC_SMS,
	STATE_CALV_SMS,
	STATE_CALC_SMS,
	STATE_VIEWCALV_SMS,
	STATE_VIEWCALC_SMS,
	STATE_CTRON_SMS,
	STATE_CTROF_SMS,
	STATE_CTYON_SMS,
	STATE_CTYOF_SMS,
	STATE_CTBON_SMS,
	STATE_CTBOF_SMS,
	STATE_SERVICE_SMS,
	STATE_INSTALLATIONDATE_SMS,
	STATE_VINSTALLATIONDATE_SMS,
	STATE_AUTORST2ONOFF_SMS,
	STATE_AUTORSTONOFF_SMS,
	STATE_HIDIFFVOLTII_SMS,
	STATE_HIDIFFVOLTIII_SMS,
	STATE_SUMP_RST_SMS,
	STATE_FOTA_SMS,
	STATE_MQTT_STATUS_SMS,
	STATE_RESP_SMS,
}nSTATE_SENDSMS;


struct TimerSettings
{
	unsigned char POnHr,POnMin,POnSec;
	unsigned char SDHr,SDMin,SDSec;
	unsigned char SfbHr,SfbMin,SfbSec;
	unsigned char DrReOnOf,Drrestartpoweronof,Driprestartpoweronof;
	unsigned char DrReHr,DrReMin,DrReSec;
	unsigned char DrScOnOf;
	unsigned char DrScHr,DrScMin,DrScSec;
	unsigned char MaxRnOnOf;
	unsigned char MaxRnHr,MaxRnMin,MaxRnSec;
	unsigned char CycLicOnOf;
	unsigned char CycLicOnHr,CycLicOnMin,CycLicOnSec,fertCycLicOnMin,fertCycLicOnSec;
	unsigned char CycLicOfHr,CycLicOfMin,CycLicOfSec,fertCycLicOfMin,fertCycLicOfSec;
	unsigned char RTCOnOf;
	unsigned char RTCOnHr[5],RTCOnMin[5],RTCOnSec[5];
	unsigned char RTCOfHr[5],RTCOfMin[5],RTCOfSec[5];	 
	unsigned char ScrDlOnOff;
	unsigned char ScrDlHr,ScrDlMin,ScrDlSec;
	unsigned char PoScrDlOnOff;
	unsigned char PoScrDlHr,PoScrDlMin,PoScrDlSec;
	unsigned char LowVoltOnOff;
	int LowVoltII,LowVoltIII;
	unsigned char HighVoltOnOff;
	int HighVoltII,HighVoltIII;
	int DiffVoltII,DiffVoltIII;
	int ImbVolt,pfcvolt,vpfcvolt;
	unsigned char RvePhOnoff;
	unsigned char SppOnoff;
	unsigned char CurSppOnOff;
	unsigned char OlOnOff,lowpressOnOff,highpressOnOff;
	double DrAmpsII,DrAmpsIII,calflow2,calflow3;
	double OlAmpsII,OlAmpsIII,lowpress,highpress;
	uint16_t wrDrAmpsII,wrDrAmpsIII,wrlowpress,wrhighpress;
	uint16_t wrOlAmpsII,wrOlAmpsIII;
	unsigned char  OlScanHr,OlScanMin,OlScanSec;
	unsigned char AutoStIIOnOff;
	unsigned char AutoStIIIOnOff;
	unsigned char AutoOlDrRstIIOnOff,AutoDrRunRstIIOnOff,pfcOnOff;
	unsigned char ManualOnOff;
	unsigned char OlRstVolOnoff;
	unsigned char OlRstVol;
	unsigned char DrOccurOnOff;
	unsigned char DrOccurTimHr,DrOccurTimMin,DrOccurTimSec;
	unsigned char DrOccurNum;
	double CalRVoltage,CalYVoltage,CalBVoltage;
	double CalRCurrent,CalYCurrent,CalBCurrent;
	uint16_t wrCalRVoltage,wrCalYVoltage,wrCalBVoltage;
	uint16_t wrCalRCurrent,wrCalYCurrent,wrCalBCurrent;
	unsigned char CTRonoff,CTYonoff,CTBonoff;
	unsigned char AutoRst2On;
	unsigned char AutoRstOn;
	int HiDiffVoltII,HiDiffVoltIII;
	double RPhaseToPhaseFactor;
	double YPhaseToPhaseFactor;
	double BPhaseToPhaseFactor; 
	double R2PhaseToPhaseFactor;
	uint16_t wrRPhaseToPhaseFactor;
	uint16_t wrYPhaseToPhaseFactor;
	uint16_t wrBPhaseToPhaseFactor; 
	uint16_t wrR2PhaseToPhaseFactor;
};
struct MSettings
{
		unsigned char SMSOnOff;
		unsigned char SfbOnOff;
		unsigned char ManualswitchOnOff;
		unsigned char TankOnOff;
		unsigned char SumpOnOff;
		unsigned char DryRunOnOff;
		unsigned char TargetOnOff;
		unsigned char VBFOnOff;
		unsigned char RelayControlOnCall;
		unsigned char SecOnOf;
		unsigned char gethidesmsonoff;
		unsigned char staticSMSOnOff;
		unsigned char serviceOnOff;
		unsigned char pwrvfbOnOf; 
		unsigned char ndebugonof;
	  unsigned char AutoMobileKeyOnOf;
	  unsigned char Ph2Ph3SelectOnOf;
	  unsigned char responseOnOf;
	  unsigned char ModeSelect;   
	  unsigned char shwvolt;
	  unsigned char shwcur;
		 
	
};
struct MoTr
{	
	long OnDelay;
	long StarDetaDelay;
	long SfbDelay;
	long DrRunRestart;
	long DrRunScan;
	long CycLicOnDelay;
	long CycLicOfDelay;
	long MaxRunTimer;
	unsigned long RTCON[6];
	unsigned long RTCOf[6];
	long Scrdl;
	long PoScrdl;
	long DrOccurTim;
	long DrOccurNum;
	long OlScan;
	
	long ActOnDelay;
	long ActDrRunRestart;
	long ActDrRunScan;
	long ActStarDetaDelay;
	long ActSfbDelay;
	long ActCycLicOnDelay;
	long ActlightCycLicOnDelay;
	long ActfanCycLicOnDelay;
	long ActfoggerCycLicOnDelay;
	long ActnightlightCycLicOnDelay;
	long ActCycLicOfDelay;
	long ActMaxRunTimer;
	long Act2powerRunTimer;
	long ActonpowerRunTimer;
	long ActofpowerRunTimer;
	long Act3powerRunTimer;
	long ActnopowerRunTimer;
	long Actl2powerRunTimer;
	long Actl3powerRunTimer;
	long ActlnopowerRunTimer;
	long ActlF1RunTimer;
	long ActlF2RunTimer;
	long ActlF3RunTimer;
	long ActlF4RunTimer;
	long ActlnightlightRunTimer;
	long ActllightRunTimer;
	long ActlfogRunTimer;
	long ActlfanRunTimer;
	long ActRTCON1;
	long ActRTCOf1;
	long ActRTCON2;
	long ActRTCOf2;
	long ActRTCON3;
	long ActRTCOf3;
	long ActRTCON4;
	long ActRTCOf4;
	long ActScrdl;
	long ActPoScrdl;
	long ActDrOccurTim;
	long ActDrOccurNum;
	long ActOlScan,ActHPScan,ActLPScan;

};

struct _rtc
{
	signed char tm_hour;
	signed char tm_min;
	signed char tm_sec;
	signed char tm_mday;
	signed char tm_mon;
	signed char tm_year;
};
 

  


extern nSTATE_SENDSMS STATE_SENDSMS;
extern STATE_MOTOR nSTATE_MOTOR;

extern STATE_MOTOR_PROBLEM nSTATE_MOTOR_PROBLEM;
extern STATE_MOTOR_SMS nSTATE_MOTOR_SMS;
extern STATE_MOTOR_ON_SMS nSTATE_MOTOR_ON_SMS;
extern STATE_STATUS_SMS nSTATE_STATUS_SMS;
extern STATE_STATUS_ONDELAY_SD nSTATE_STATUS_ONDELAY_SD;
extern RTC_CURRENT_STATUS nRTC_CURRENT_STATUS ;
extern nDISPLAYMsg DISPLAYMsg ;
extern CYCTimer nCYCTimer;


 
extern struct _rtc datetime;
extern struct MoTr nMoTr; 

 
extern struct CurrentCond nCurretnCond;

 
extern struct TimerSettings nTimerSettings;
extern struct MSettings nMSettings;

#line 8 "..\\RunMotor.c"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\NuMicro.h"
 






 



#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
 








 






































 







 
 
 



 



 
typedef enum IRQn
{
     
    NonMaskableInt_IRQn           = -14,       
    MemoryManagement_IRQn         = -12,       
    BusFault_IRQn                 = -11,       
    UsageFault_IRQn               = -10,       
    SVCall_IRQn                   = -5,        
    DebugMonitor_IRQn             = -4,        
    PendSV_IRQn                   = -2,        
    SysTick_IRQn                  = -1,        

     

    BOD_IRQn                      = 0,         
    IRC_IRQn                      = 1,         
    PWRWU_IRQn                    = 2,         
    RAMPE_IRQn                    = 3,         
    CKFAIL_IRQn                   = 4,         
    RTC_IRQn                      = 6,         
    TAMPER_IRQn                   = 7,         
    WDT_IRQn                      = 8,         
    WWDT_IRQn                     = 9,         
    EINT0_IRQn                    = 10,        
    EINT1_IRQn                    = 11,        
    EINT2_IRQn                    = 12,        
    EINT3_IRQn                    = 13,        
    EINT4_IRQn                    = 14,        
    EINT5_IRQn                    = 15,        
    GPA_IRQn                      = 16,        
    GPB_IRQn                      = 17,        
    GPC_IRQn                      = 18,        
    GPD_IRQn                      = 19,        
    GPE_IRQn                      = 20,        
    GPF_IRQn                      = 21,        
    QSPI0_IRQn                    = 22,        
    SPI0_IRQn                     = 23,        
    BRAKE0_IRQn                   = 24,        
    EPWM0P0_IRQn                  = 25,        
    EPWM0P1_IRQn                  = 26,        
    EPWM0P2_IRQn                  = 27,        
    BRAKE1_IRQn                   = 28,        
    EPWM1P0_IRQn                  = 29,        
    EPWM1P1_IRQn                  = 30,        
    EPWM1P2_IRQn                  = 31,        
    TMR0_IRQn                     = 32,        
    TMR1_IRQn                     = 33,        
    TMR2_IRQn                     = 34,        
    TMR3_IRQn                     = 35,        
    UART0_IRQn                    = 36,        
    UART1_IRQn                    = 37,        
    I2C0_IRQn                     = 38,        
    I2C1_IRQn                     = 39,        
    PDMA_IRQn                     = 40,        
    DAC_IRQn                      = 41,        
    EADC00_IRQn                   = 42,        
    EADC01_IRQn                   = 43,        
    ACMP01_IRQn                   = 44,        
    EADC02_IRQn                   = 46,        
    EADC03_IRQn                   = 47,        
    UART2_IRQn                    = 48,        
    UART3_IRQn                    = 49,        
    QSPI1_IRQn                    = 50,        
    SPI1_IRQn                     = 51,        
    SPI2_IRQn                     = 52,        
    USBD_IRQn                     = 53,        
    USBH_IRQn                     = 54,        
    USBOTG_IRQn                   = 55,        
    CAN0_IRQn                     = 56,        
    CAN1_IRQn                     = 57,        
    SC0_IRQn                      = 58,        
    SC1_IRQn                      = 59,        
    SC2_IRQn                      = 60,        
    SPI3_IRQn                     = 62,        
    EMAC_TX_IRQn                  = 66,        
    EMAC_RX_IRQn                  = 67,        
    SDH0_IRQn                     = 64,        
    USBD20_IRQn                   = 65,        
    I2S0_IRQn                     = 68,        
    OPA_IRQn                      = 70,        
    CRPT_IRQn                     = 71,        
    GPG_IRQn                      = 72,        
    EINT6_IRQn                    = 73,        
    UART4_IRQn                    = 74,        
    UART5_IRQn                    = 75,        
    USCI0_IRQn                    = 76,        
    USCI1_IRQn                    = 77,        
    BPWM0_IRQn                    = 78,        
    BPWM1_IRQn                    = 79,        
    SPIM_IRQn                     = 80,        
    CCAP_IRQn                     = 81,        
    I2C2_IRQn                     = 82,        
    QEI0_IRQn                     = 84,        
    QEI1_IRQn                     = 85,        
    ECAP0_IRQn                    = 86,        
    ECAP1_IRQn                    = 87,        
    GPH_IRQn                      = 88,        
    EINT7_IRQn                    = 89,        
    SDH1_IRQn                     = 90,        
    HSUSBH_IRQn                   = 92,        
    USBOTG20_IRQn                 = 93,        
    TRNG_IRQn                     = 101,       
    UART6_IRQn                    = 102,       
    UART7_IRQn                    = 103,       
    EADC10_IRQn                   = 104,       
    EADC11_IRQn                   = 105,       
    EADC12_IRQn                   = 106,       
    EADC13_IRQn                   = 107,       
    CAN2_IRQn                     = 108,       
}
IRQn_Type;






 

 
#line 198 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

   


#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
 




 

























 











#line 45 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

















 




 



 

 













#line 120 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"



 
#line 135 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

#line 209 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"
 




 

























 












 



 

 
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"
 




 

























 










 



 

 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}










 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}





 


 



 




 






 







 






 








 










 










 











 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}







 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 455 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"







 










 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 




   


 



 



#line 720 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"











 


#line 54 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

 
#line 84 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

   

#line 211 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"
 




 

























 












 



 

 
#line 54 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 
#line 84 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 

#line 212 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmSimd.h"
 




 

























 
















 



 

 
#line 58 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmSimd.h"

 
#line 88 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmSimd.h"

 






#line 213 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
















 
#line 256 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

 






 
#line 272 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

 




 













 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 





















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 






























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 









 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    
  volatile uint32_t ACTLR;                   
} SCnSCB_Type;

 



 















 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 



 



 



 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   








 



 
typedef struct
{
  volatile const  uint32_t TYPE;                    
  volatile uint32_t CTRL;                    
  volatile uint32_t RNR;                     
  volatile uint32_t RBAR;                    
  volatile uint32_t RASR;                    
  volatile uint32_t RBAR_A1;                 
  volatile uint32_t RASR_A1;                 
  volatile uint32_t RBAR_A2;                 
  volatile uint32_t RASR_A2;                 
  volatile uint32_t RBAR_A3;                 
  volatile uint32_t RASR_A3;                 
} MPU_Type;

 









 









 



 









 






























 









 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;                   
  volatile uint32_t FPCAR;                   
  volatile uint32_t FPDSCR;                  
  volatile const  uint32_t MVFR0;                   
  volatile const  uint32_t MVFR1;                   
} FPU_Type;

 



























 



 












 
























 












 








 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1541 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

#line 1550 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"











 










 


 



 





 









 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)                      );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}






 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}






 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}








 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) < 0)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4UL)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8U - 4UL)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) < 0)
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4UL)));
  }
  else
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               >> (8U - 4UL)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4UL)) ? (uint32_t)(4UL) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4UL)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4UL));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4UL)) ? (uint32_t)(4UL) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4UL)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4UL));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}





 
static __inline void NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  NVIC_SetPriority (SysTick_IRQn, (1UL << 4UL) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                     










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5U)
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5U;        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == 0x5AA55AA5U)
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 203 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\system_M480.h"
 






 








#line 18 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\system_M480.h"




 




















extern uint32_t SystemCoreClock;      
extern uint32_t CyclesPerUs;          
extern uint32_t PllClock;             










 
extern void SystemInit (void);









 
extern void SystemCoreClockUpdate (void);







 
#line 204 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 205 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"




#pragma anon_unions


 
 
 

#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\sys_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile const  uint32_t PDID;                   
    volatile uint32_t RSTSTS;                 
    volatile uint32_t IPRST0;                 
    volatile uint32_t IPRST1;                 
    volatile uint32_t IPRST2;                 
     
    volatile const  uint32_t RESERVE0[1];
     
    volatile uint32_t BODCTL;                 
    volatile uint32_t IVSCTL;                 
     
    volatile const  uint32_t RESERVE1[1];
     
    volatile uint32_t PORCTL;                 
    volatile uint32_t VREFCTL;                
    volatile uint32_t USBPHY;                 
    volatile uint32_t GPA_MFPL;               
    volatile uint32_t GPA_MFPH;               
    volatile uint32_t GPB_MFPL;               
    volatile uint32_t GPB_MFPH;               
    volatile uint32_t GPC_MFPL;               
    volatile uint32_t GPC_MFPH;               
    volatile uint32_t GPD_MFPL;               
    volatile uint32_t GPD_MFPH;               
    volatile uint32_t GPE_MFPL;               
    volatile uint32_t GPE_MFPH;               
    volatile uint32_t GPF_MFPL;               
    volatile uint32_t GPF_MFPH;               
    volatile uint32_t GPG_MFPL;               
    volatile uint32_t GPG_MFPH;               
    volatile uint32_t GPH_MFPL;               
    volatile uint32_t GPH_MFPH;               
     
    volatile const  uint32_t RESERVE2[4];
     
    volatile uint32_t GPA_MFOS;               
    volatile uint32_t GPB_MFOS;               
    volatile uint32_t GPC_MFOS;               
    volatile uint32_t GPD_MFOS;               
    volatile uint32_t GPE_MFOS;               
    volatile uint32_t GPF_MFOS;               
    volatile uint32_t GPG_MFOS;               
    volatile uint32_t GPH_MFOS;               
     
    volatile const  uint32_t RESERVE3[8];
     
    volatile uint32_t SRAM_INTCTL;            
    volatile uint32_t SRAM_STATUS;            
    volatile const  uint32_t SRAM_ERRADDR;           
     
    volatile const  uint32_t RESERVE4[1];
     
    volatile uint32_t SRAM_BISTCTL;           
    volatile const  uint32_t SRAM_BISTSTS;           
     
    volatile const  uint32_t RESERVE5[3];
     
    volatile uint32_t HIRCTCTL;               
    volatile uint32_t HIRCTIEN;               
    volatile uint32_t HIRCTISTS;              
    volatile uint32_t IRCTCTL;                
    volatile uint32_t IRCTIEN;                
    volatile uint32_t IRCTISTS;               
     
    volatile const  uint32_t RESERVE6[1];
     
    volatile uint32_t REGLCTL;                
     
    volatile const  uint32_t RESERVE7[58];
     
    volatile uint32_t PORDISAN;               
     
    volatile const  uint32_t RESERVE8;
     
    volatile const  uint32_t CSERVER;                
    volatile uint32_t PLCTL;                  
    volatile const  uint32_t PLSTS;                  
     
    volatile const  uint32_t RESERVE9[128];
     
    volatile uint32_t AHBMCTL;                

} SYS_T;




 












































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































   
   




 

typedef struct
{


    











































































































































































































































































 
    volatile uint32_t NMIEN;                  
    volatile const  uint32_t NMISTS;                 

} NMI_T;




 



























































































   
   
   


#pragma no_anon_unions


#line 217 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\clk_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t PWRCTL;                 
    volatile uint32_t AHBCLK;                 
    volatile uint32_t APBCLK0;                
    volatile uint32_t APBCLK1;                
    volatile uint32_t CLKSEL0;                
    volatile uint32_t CLKSEL1;                
    volatile uint32_t CLKSEL2;                
    volatile uint32_t CLKSEL3;                
    volatile uint32_t CLKDIV0;                
    volatile uint32_t CLKDIV1;                
    volatile uint32_t CLKDIV2;                
    volatile uint32_t CLKDIV3;                
    volatile uint32_t CLKDIV4;                
    volatile uint32_t PCLKDIV;                
     
    volatile const  uint32_t RESERVE1[2];
     
    volatile uint32_t PLLCTL;                 
     
    volatile const  uint32_t RESERVE2[3];
     
    volatile const  uint32_t STATUS;                 
     
    volatile const  uint32_t RESERVE3[3];
     
    volatile uint32_t CLKOCTL;                
     
    volatile const  uint32_t RESERVE4[3];
     
    volatile uint32_t CLKDCTL;                
    volatile uint32_t CLKDSTS;                
    volatile uint32_t CDUPB;                  
    volatile uint32_t CDLOWB;                 
     
    volatile const  uint32_t RESERVE5[4];
     
    volatile uint32_t PMUCTL;                 
    volatile uint32_t PMUSTS;                 
    volatile uint32_t LDOCTL;                 
    volatile uint32_t SWKDBCTL;               
    volatile uint32_t PASWKCTL;               
    volatile uint32_t PBSWKCTL;               
    volatile uint32_t PCSWKCTL;               
    volatile uint32_t PDSWKCTL;               
    volatile uint32_t IOPDCTL;                

} CLK_T;




 









































































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 218 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\fmc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{
    





































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t ISPCTL;                 
    volatile uint32_t ISPADDR;                
    volatile uint32_t ISPDAT;                 
    volatile uint32_t ISPCMD;                 
    volatile uint32_t ISPTRG;                 
    volatile const  uint32_t DFBA;                   
    
    volatile const  uint32_t RESERVE0[10];
    
    volatile uint32_t ISPSTS;                 
    
    volatile const  uint32_t RESERVE1[2];
    
    volatile uint32_t CYCCTL;                 
    volatile  uint32_t KPKEY0;                 
    volatile  uint32_t KPKEY1;                 
    volatile  uint32_t KPKEY2;                 
    volatile uint32_t KPKEYTRG;               
    volatile uint32_t KPKEYSTS;               
    volatile const  uint32_t KPKEYCNT;               
    volatile const  uint32_t KPCNT;                  
    
    volatile const  uint32_t RESERVE2[5];
    
    volatile uint32_t MPDAT0;                 
    volatile uint32_t MPDAT1;                 
    volatile uint32_t MPDAT2;                 
    volatile uint32_t MPDAT3;                 
    
    volatile const  uint32_t RESERVE3[12];
    
    volatile const  uint32_t MPSTS;                  
    volatile const  uint32_t MPADDR;                 
    
    volatile const  uint32_t RESERVE4[2];
    
    volatile const  uint32_t XOMR0STS;               
    volatile const  uint32_t XOMR1STS;               
    volatile const  uint32_t XOMR2STS;               
    volatile const  uint32_t XOMR3STS;               
    volatile const  uint32_t XOMSTS;                 

} FMC_T;




 

































































































































































































   
   
   


#pragma no_anon_unions


#line 219 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\gpio_reg.h"
 






 




#pragma anon_unions





 




 


typedef struct
{

    


































































































































































































































































































































































































































































 

    volatile uint32_t MODE;           
    volatile uint32_t DINOFF;         
    volatile uint32_t DOUT;           
    volatile uint32_t DATMSK;         
    volatile const  uint32_t PIN;            
    volatile uint32_t DBEN;           
    volatile uint32_t INTTYPE;        
    volatile uint32_t INTEN;          
    volatile uint32_t INTSRC;         
    volatile uint32_t SMTEN;          
    volatile uint32_t SLEWCTL;        
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t PUSEL;          

} GPIO_T;

typedef struct
{

    

































































 

    volatile uint32_t DBCTL;          

} GPIO_DBCTL_T;




 


























































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 220 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\pdma_reg.h"
 






 




#pragma anon_unions





 




 


typedef struct
{

    





































































































































































































 
    volatile uint32_t CTL;              
    volatile uint32_t SA;               
    volatile uint32_t DA;               
    volatile uint32_t NEXT;             
} DSCT_T;


typedef struct
{
    










































 
    volatile uint32_t STCR;            
    volatile uint32_t ASOCR;           
} STRIDE_T;

typedef struct
{
    










































 
    volatile uint32_t AICTL;          
    volatile uint32_t RCNT;           
} REPEAT_T;

typedef struct
{


    





































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    DSCT_T DSCT[16];
    volatile const  uint32_t CURSCAT[16];               
    
    volatile const  uint32_t RESERVE1[176];
    
    volatile uint32_t CHCTL;                  
    volatile  uint32_t PAUSE;                  
    volatile  uint32_t SWREQ;                  
    volatile const  uint32_t TRGSTS;                 
    volatile uint32_t PRISET;                 
    volatile  uint32_t PRICLR;                 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t ABTSTS;                 
    volatile uint32_t TDSTS;                  
    volatile uint32_t ALIGN;                  
    volatile const  uint32_t TACTSTS;                
    volatile uint32_t TOUTPSC;                
    volatile uint32_t TOUTEN;                 
    volatile uint32_t TOUTIEN;                
    volatile uint32_t SCATBA;                 
    volatile uint32_t TOC0_1;                 
    
    volatile const  uint32_t RESERVE2[7];
    
    volatile uint32_t CHRST;                  
    
    volatile const  uint32_t RESERVE3[7];
    
    volatile uint32_t REQSEL0_3;              
    volatile uint32_t REQSEL4_7;              
    volatile uint32_t REQSEL8_11;             
    volatile uint32_t REQSEL12_15;            
    
    volatile const  uint32_t RESERVE4[28];
    
    STRIDE_T     STRIDE[6];
    
    volatile uint32_t RESERVE5[52];
    
    REPEAT_T    REPEAT[2];
} PDMA_T;




 


















































































































































































































































































   
   
   


#pragma no_anon_unions


#line 221 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\timer_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t CMP;                    
    volatile uint32_t INTSTS;                 
    volatile uint32_t CNT;                    
    volatile const  uint32_t CAP;                    
    volatile uint32_t EXTCTL;                 
    volatile uint32_t EINTSTS;                
    volatile uint32_t TRGCTL;                 
    volatile uint32_t ALTCTL;                 
     
    volatile const  uint32_t RESERVE0[7];
     
    volatile uint32_t PWMCTL;                 
    volatile uint32_t PWMCLKSRC;              
    volatile uint32_t PWMCLKPSC;              
    volatile uint32_t PWMCNTCLR;              
    volatile uint32_t PWMPERIOD;              
    volatile uint32_t PWMCMPDAT;              
    volatile uint32_t PWMDTCTL;               
    volatile const  uint32_t PWMCNT;                 
    volatile uint32_t PWMMSKEN;               
    volatile uint32_t PWMMSK;                 
    volatile uint32_t PWMBNF;                 
    volatile uint32_t PWMFAILBRK;             
    volatile uint32_t PWMBRKCTL;              
    volatile uint32_t PWMPOLCTL;              
    volatile uint32_t PWMPOEN;                
    volatile  uint32_t PWMSWBRK;               
    volatile uint32_t PWMINTEN0;              
    volatile uint32_t PWMINTEN1;              
    volatile uint32_t PWMINTSTS0;             
    volatile uint32_t PWMINTSTS1;             
    volatile uint32_t PWMEADCTS;              
    volatile uint32_t PWMSCTL;                
    volatile  uint32_t PWMSTRG;                
    volatile uint32_t PWMSTATUS;              
    volatile const  uint32_t PWMPBUF;                
    volatile const  uint32_t PWMCMPBUF;              

} TIMER_T;




 








































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 222 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\wdt_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

















































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t ALTCTL;                 
    volatile  uint32_t RSTCNT;                 

} WDT_T;




 








































   
   
   


#pragma no_anon_unions


#line 223 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\wwdt_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    


































































































































































 
    volatile  uint32_t RLDCNT;                 
    volatile uint32_t CTL;                    
    volatile uint32_t STATUS;                 
    volatile const  uint32_t CNT;                    

} WWDT_T;




 




























   
   
   


#pragma no_anon_unions


#line 224 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\rtc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t INIT;                   
    volatile uint32_t RWEN;                   
    volatile uint32_t FREQADJ;                
    volatile uint32_t TIME;                   
    volatile uint32_t CAL;                    
    volatile uint32_t CLKFMT;                 
    volatile uint32_t WEEKDAY;                
    volatile uint32_t TALM;                   
    volatile uint32_t CALM;                   
    volatile const  uint32_t LEAPYEAR;               
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t TICK;                   
    volatile uint32_t TAMSK;                  
    volatile uint32_t CAMSK;                  
    volatile uint32_t SPRCTL;                 
    volatile uint32_t SPR[20];                
    
    volatile const  uint32_t RESERVE0[28];
    
    volatile uint32_t LXTCTL;                 
    volatile uint32_t GPIOCTL0;               
    volatile uint32_t GPIOCTL1;               
    
    volatile const  uint32_t RESERVE1[1];
    
    volatile uint32_t DSTCTL;                 
    
    volatile const  uint32_t RESERVE2[3];
    
    volatile uint32_t TAMPCTL;                
    
    volatile const  uint32_t RESERVE3[1];
    
    volatile uint32_t TAMPSEED;               
    
    volatile const  uint32_t RESERVE4[1];
    
    volatile const  uint32_t TAMPTIME;               
    volatile const  uint32_t TAMPCAL;                

} RTC_T;




 





































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 225 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\epwm_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{
    





































 
    volatile uint32_t RCAPDAT;  
    volatile uint32_t FCAPDAT;  
} ECAPDAT_T;

typedef struct
{


    
































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t CTL1;                   
    volatile uint32_t SYNC;                   
    volatile uint32_t SWSYNC;                 
    volatile uint32_t CLKSRC;                 
    volatile uint32_t CLKPSC[3];              
    volatile uint32_t CNTEN;                  
    volatile uint32_t CNTCLR;                 
    volatile uint32_t LOAD;                   
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t PERIOD[6];              
    
    volatile const  uint32_t RESERVE1[2];
    
    volatile uint32_t CMPDAT[6];              
    
    volatile const  uint32_t RESERVE2[2];
    
    volatile uint32_t DTCTL[3];               
    
    volatile const  uint32_t RESERVE3[1];
    
    volatile uint32_t PHS[3];                 
    
    volatile const  uint32_t RESERVE4[1];
    
    volatile const  uint32_t CNT[6];                 
    
    volatile const  uint32_t RESERVE5[2];
    
    volatile uint32_t WGCTL0;                 
    volatile uint32_t WGCTL1;                 
    volatile uint32_t MSKEN;                  
    volatile uint32_t MSK;                    
    volatile uint32_t BNF;                    
    volatile uint32_t FAILBRK;                
    volatile uint32_t BRKCTL[3];              
    volatile uint32_t POLCTL;                 
    volatile uint32_t POEN;                   
    volatile  uint32_t SWBRK;                  
    volatile uint32_t INTEN0;                 
    volatile uint32_t INTEN1;                 
    volatile uint32_t INTSTS0;                
    volatile uint32_t INTSTS1;                
    
    volatile const  uint32_t RESERVE6[1];
    
    volatile uint32_t DACTRGEN;               
    volatile uint32_t EADCTS0;                
    volatile uint32_t EADCTS1;                
    volatile uint32_t FTCMPDAT[3];            
    
    volatile const  uint32_t RESERVE7[1];
    
    volatile uint32_t SSCTL;                  
    volatile  uint32_t SSTRG;                  
    volatile uint32_t LEBCTL;                 
    volatile uint32_t LEBCNT;                 
    volatile uint32_t STATUS;                 
    
    volatile const  uint32_t RESERVE8[3];
    
    volatile uint32_t IFA[6];                 
    
    volatile const  uint32_t RESERVE9[2];
    
    volatile uint32_t AINTSTS;                
    volatile uint32_t AINTEN;                 
    volatile uint32_t APDMACTL;               
    
    volatile const  uint32_t RESERVE10[1];
    
    volatile uint32_t FDEN;                   
    volatile uint32_t FDCTL[6];               
    volatile uint32_t FDIEN;                  
    volatile uint32_t FDSTS;                  
    volatile uint32_t EADCPSCCTL;             
    volatile uint32_t EADCPSC0;               
    volatile uint32_t EADCPSC1;               
    volatile uint32_t EADCPSCNT0;             
    volatile uint32_t EADCPSCNT1;             
    
    volatile const  uint32_t RESERVE11[26];
    
    volatile uint32_t CAPINEN;                
    volatile uint32_t CAPCTL;                 
    volatile const  uint32_t CAPSTS;                 
    ECAPDAT_T CAPDAT[6];                   
    volatile uint32_t PDMACTL;                
    volatile const  uint32_t PDMACAP[3];             
    
    volatile const  uint32_t RESERVE12[1];
    
    volatile uint32_t CAPIEN;                 
    volatile uint32_t CAPIF;                  
    
    volatile const  uint32_t RESERVE13[43];
    
    volatile const  uint32_t PBUF[6];                
    volatile const  uint32_t CMPBUF[6];              
    volatile const  uint32_t CPSCBUF[3];             
    volatile const  uint32_t FTCBUF[3];              
    volatile uint32_t FTCI;                   

} EPWM_T;




 



























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 226 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\bpwm_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{
    





































 
    volatile uint32_t RCAPDAT;  
    volatile uint32_t FCAPDAT;  
} BCAPDAT_T;

typedef struct
{


    































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t CTL1;                   
    
    volatile const  uint32_t RESERVE0[2];
    
    volatile uint32_t CLKSRC;                 
    volatile uint32_t CLKPSC;                 
    
    volatile const  uint32_t RESERVE1[2];
    
    volatile uint32_t CNTEN;                  
    volatile uint32_t CNTCLR;                 
    
    volatile const  uint32_t RESERVE2[2];
    
    volatile uint32_t PERIOD;                 
    
    volatile const  uint32_t RESERVE3[7];
    
    volatile uint32_t CMPDAT[6];              
    
    volatile const  uint32_t RESERVE4[10];
    
    volatile const  uint32_t CNT;                    
    
    volatile const  uint32_t RESERVE5[7];
    
    volatile uint32_t WGCTL0;                 
    volatile uint32_t WGCTL1;                 
    volatile uint32_t MSKEN;                  
    volatile uint32_t MSK;                    
    
    volatile const  uint32_t RESERVE6[5];
    
    volatile uint32_t POLCTL;                 
    volatile uint32_t POEN;                   
    
    volatile const  uint32_t RESERVE7[1];
    
    volatile uint32_t INTEN;                  
    
    volatile const  uint32_t RESERVE8[1];
    
    volatile uint32_t INTSTS;                 
    
    volatile const  uint32_t RESERVE9[3];
    
    volatile uint32_t EADCTS0;                
    volatile uint32_t EADCTS1;                
    
    volatile const  uint32_t RESERVE10[4];
    
    volatile uint32_t SSCTL;                  
    volatile  uint32_t SSTRG;                  
    
    volatile const  uint32_t RESERVE11[2];
    
    volatile uint32_t STATUS;                 
    
    volatile const  uint32_t RESERVE12[55];
    
    volatile uint32_t CAPINEN;                
    volatile uint32_t CAPCTL;                 
    volatile const  uint32_t CAPSTS;                 
    BCAPDAT_T CAPDAT[6];                   
    
    volatile const  uint32_t RESERVE13[5];
    
    volatile uint32_t CAPIEN;                 
    volatile uint32_t CAPIF;                  
    
    volatile const  uint32_t RESERVE14[43];
    
    volatile const  uint32_t PBUF;                   
    
    volatile const  uint32_t RESERVE15[5];
    
    volatile const  uint32_t CMPBUF[6];              

} BPWM_T;




 






























































































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 227 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\qei_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    


















































































































































































































































































































































































 
    volatile uint32_t CNT;                    
    volatile uint32_t CNTHOLD;                
    volatile uint32_t CNTLATCH;               
    volatile uint32_t CNTCMP;                 
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t CNTMAX;                 
    volatile uint32_t CTL;                    
    
    volatile const  uint32_t RESERVE1[4];
    
    volatile uint32_t STATUS;                 

} QEI_T;




 

































































































   
   
   


#pragma no_anon_unions


#line 228 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\ecap_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    





































































































































































































































































































































































































































































































 
    volatile uint32_t CNT;                    
    volatile uint32_t HLD0;                   
    volatile uint32_t HLD1;                   
    volatile uint32_t HLD2;                   
    volatile uint32_t CNTCMP;                 
    volatile uint32_t CTL0;                   
    volatile uint32_t CTL1;                   
    volatile uint32_t STATUS;                 

} ECAP_T;




 































































































































   
   
   


#pragma no_anon_unions


#line 229 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\uart_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t DAT;                    
    volatile uint32_t INTEN;                  
    volatile uint32_t FIFO;                   
    volatile uint32_t LINE;                   
    volatile uint32_t MODEM;                  
    volatile uint32_t MODEMSTS;               
    volatile uint32_t FIFOSTS;                
    volatile uint32_t INTSTS;                 
    volatile uint32_t TOUT;                   
    volatile uint32_t BAUD;                   
    volatile uint32_t IRDA;                   
    volatile uint32_t ALTCTL;                 
    volatile uint32_t FUNCSEL;                
    volatile uint32_t LINCTL;                 
    volatile uint32_t LINSTS;                 
    volatile uint32_t BRCOMP;                 
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t DWKCOMP;                

} UART_T;




 

























































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 230 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\emac_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CAMCTL;                 
    volatile uint32_t CAMEN;                  
    volatile uint32_t CAM0M;                  
    volatile uint32_t CAM0L;                  
    volatile uint32_t CAM1M;                  
    volatile uint32_t CAM1L;                  
    volatile uint32_t CAM2M;                  
    volatile uint32_t CAM2L;                  
    volatile uint32_t CAM3M;                  
    volatile uint32_t CAM3L;                  
    volatile uint32_t CAM4M;                  
    volatile uint32_t CAM4L;                  
    volatile uint32_t CAM5M;                  
    volatile uint32_t CAM5L;                  
    volatile uint32_t CAM6M;                  
    volatile uint32_t CAM6L;                  
    volatile uint32_t CAM7M;                  
    volatile uint32_t CAM7L;                  
    volatile uint32_t CAM8M;                  
    volatile uint32_t CAM8L;                  
    volatile uint32_t CAM9M;                  
    volatile uint32_t CAM9L;                  
    volatile uint32_t CAM10M;                 
    volatile uint32_t CAM10L;                 
    volatile uint32_t CAM11M;                 
    volatile uint32_t CAM11L;                 
    volatile uint32_t CAM12M;                 
    volatile uint32_t CAM12L;                 
    volatile uint32_t CAM13M;                 
    volatile uint32_t CAM13L;                 
    volatile uint32_t CAM14M;                 
    volatile uint32_t CAM14L;                 
    volatile uint32_t CAM15MSB;               
    volatile uint32_t CAM15LSB;               
    volatile uint32_t TXDSA;                  
    volatile uint32_t RXDSA;                  
    volatile uint32_t CTL;                    
    volatile uint32_t MIIMDAT;                
    volatile uint32_t MIIMCTL;                
    volatile uint32_t FIFOCTL;                
    volatile  uint32_t TXST;                   
    volatile  uint32_t RXST;                   
    volatile uint32_t MRFL;                   
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t GENSTS;                 
    volatile uint32_t MPCNT;                  
    volatile const  uint32_t RPCNT;                  
     
    volatile const  uint32_t RESERVE0[2];
     
    volatile uint32_t FRSTS;                  
    volatile const  uint32_t CTXDSA;                 
    volatile const  uint32_t CTXBSA;                 
    volatile const  uint32_t CRXDSA;                 
    volatile const  uint32_t CRXBSA;                 
     
    volatile const  uint32_t RESERVE1[9];
     
    volatile uint32_t TSCTL;                  
     
    volatile const  uint32_t RESERVE2[3];
     
    volatile const  uint32_t TSSEC;                  
    volatile const  uint32_t TSSUBSEC;               
    volatile uint32_t TSINC;                  
    volatile uint32_t TSADDEND;               
    volatile uint32_t UPDSEC;                 
    volatile uint32_t UPDSUBSEC;              
    volatile uint32_t ALMSEC;                 
    volatile uint32_t ALMSUBSEC;              

} EMAC_T;




 














































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 231 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\sc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    












































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t DAT;                    
    volatile uint32_t CTL;                    
    volatile uint32_t ALTCTL;                 
    volatile uint32_t EGT;                    
    volatile uint32_t RXTOUT;                 
    volatile uint32_t ETUCTL;                 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t STATUS;                 
    volatile uint32_t PINCTL;                 
    volatile uint32_t TMRCTL0;                
    volatile uint32_t TMRCTL1;                
    volatile uint32_t TMRCTL2;                
    volatile uint32_t UARTCTL;                
     
    volatile const  uint32_t RESERVE0[5];
     
    volatile uint32_t ACTCTL;                 

} SC_T;




 













































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 232 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\i2s_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    




























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t CLKDIV;                 
    volatile uint32_t IEN;                    
    volatile uint32_t STATUS0;                
    volatile  uint32_t TXFIFO;                 
    volatile const  uint32_t RXFIFO;                 
    
    volatile const  uint32_t RESERVE0[2];
    
    volatile uint32_t CTL1;                   
    volatile uint32_t STATUS1;                

} I2S_T;




 




























































































































































































































   
   
   


#pragma no_anon_unions


#line 233 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\spi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t CLKDIV;                 
    volatile uint32_t SSCTL;                  
    volatile uint32_t PDMACTL;                
    volatile uint32_t FIFOCTL;                
    volatile uint32_t STATUS;                 
    
    volatile const  uint32_t RESERVE0[2];
    
    volatile  uint32_t TX;                     
    
    volatile const  uint32_t RESERVE1[3];
    
    volatile const  uint32_t RX;                     
    
    volatile const  uint32_t RESERVE2[11];
    
    volatile uint32_t I2SCTL;                 
    volatile uint32_t I2SCLK;                 
    volatile uint32_t I2SSTS;                 

} SPI_T;




 





















































































































































































































































































   
   
   


#pragma no_anon_unions


#line 234 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\qspi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

















































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t CLKDIV;                 
    volatile uint32_t SSCTL;                  
    volatile uint32_t PDMACTL;                
    volatile uint32_t FIFOCTL;                
    volatile uint32_t STATUS;                 
    
    volatile const  uint32_t RESERVE0[2];
    
    volatile  uint32_t TX;                     
    
    volatile const  uint32_t RESERVE1[3];
    
    volatile const  uint32_t RX;                     

} QSPI_T;




 








































































































































































































   
   
   


#pragma no_anon_unions


#line 235 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\spim_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






























































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t CTL1;                   
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t RXCLKDLY;               
    volatile const  uint32_t RX[4];                  
    volatile uint32_t TX[4];                  
    volatile uint32_t SRAMADDR;               
    volatile uint32_t DMACNT;                 
    volatile uint32_t FADDR;                  
    volatile  uint32_t PC3;                   
    volatile  uint32_t KEY2;                   
    volatile uint32_t DMMCTL;                 
    volatile uint32_t CTL2;                   

} SPIM_T;




 






















































































































   
   
   


#pragma no_anon_unions


#line 236 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\i2c_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t ADDR0;                  
    volatile uint32_t DAT;                    
    volatile const  uint32_t STATUS0;                
    volatile uint32_t CLKDIV;                 
    volatile uint32_t TOCTL;                  
    volatile uint32_t ADDR1;                  
    volatile uint32_t ADDR2;                  
    volatile uint32_t ADDR3;                  
    volatile uint32_t ADDRMSK0;               
    volatile uint32_t ADDRMSK1;               
    volatile uint32_t ADDRMSK2;               
    volatile uint32_t ADDRMSK3;               
    
    volatile const  uint32_t RESERVE0[2];
    
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t CTL1;                   
    volatile uint32_t STATUS1;                
    volatile uint32_t TMCTL;                  
    volatile uint32_t BUSCTL;                 
    volatile uint32_t BUSTCTL;                
    volatile uint32_t BUSSTS;                 
    volatile uint32_t PKTSIZE;                
    volatile const  uint32_t PKTCRC;                 
    volatile uint32_t BUSTOUT;                
    volatile uint32_t CLKTOUT;                

} I2C_T;




 

























































































































































































































   
   
   


#pragma no_anon_unions


#line 237 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\uuart_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    










































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t INTEN;                  
    volatile uint32_t BRGEN;                  
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t DATIN0;                 
    
    volatile const  uint32_t RESERVE1[3];
    
    volatile uint32_t CTLIN0;                 
    
    volatile const  uint32_t RESERVE2[1];
    
    volatile uint32_t CLKIN;                  
    volatile uint32_t LINECTL;                
    volatile uint32_t TXDAT;                  
    volatile uint32_t RXDAT;                  
    volatile uint32_t BUFCTL;                 
    volatile uint32_t BUFSTS;                 
    volatile uint32_t PDMACTL;                
    
    volatile const  uint32_t RESERVE3[4];
    
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t PROTCTL;                
    volatile uint32_t PROTIEN;                
    volatile uint32_t PROTSTS;                

} UUART_T;




 



















































































































































































































   
   
   


#pragma no_anon_unions


#line 238 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\uspi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    
















































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t INTEN;                  
    volatile uint32_t BRGEN;                  
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t DATIN0;                 
    
    volatile const  uint32_t RESERVE1[3];
    
    volatile uint32_t CTLIN0;                 
    
    volatile const  uint32_t RESERVE2[1];
    
    volatile uint32_t CLKIN;                  
    volatile uint32_t LINECTL;                
    volatile  uint32_t TXDAT;                  
    volatile const  uint32_t RXDAT;                  
    volatile uint32_t BUFCTL;                 
    volatile uint32_t BUFSTS;                 
    volatile uint32_t PDMACTL;                
    
    volatile const  uint32_t RESERVE3[4];
    
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t PROTCTL;                
    volatile uint32_t PROTIEN;                
    volatile uint32_t PROTSTS;                

} USPI_T;




 













































































































































































































   
   
   


#pragma no_anon_unions


#line 239 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\ui2c_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    




















































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t BRGEN;                  
    
    volatile const  uint32_t RESERVE1[8];
    
    volatile uint32_t LINECTL;                
    volatile  uint32_t TXDAT;                  
    volatile const  uint32_t RXDAT;                  
    
    volatile const  uint32_t RESERVE2[3];
    
    volatile uint32_t DEVADDR0;               
    volatile uint32_t DEVADDR1;               
    volatile uint32_t ADDRMSK0;               
    volatile uint32_t ADDRMSK1;               
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t PROTCTL;                
    volatile uint32_t PROTIEN;                
    volatile uint32_t PROTSTS;                
    
    volatile const  uint32_t RESERVE3[8];
    
    volatile uint32_t ADMAT;                  
    volatile uint32_t TMCTL;                  

} UI2C_T;




 






































































































































































   
   
   


#pragma no_anon_unions


#line 240 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\can_reg.h"
 






 




#pragma anon_unions





 




 


typedef struct
{

    





















































































































































































































































































































































































































































































































 
    volatile uint32_t CREQ;          
    volatile uint32_t CMASK;         
    volatile uint32_t MASK1;         
    volatile uint32_t MASK2;         
    volatile uint32_t ARB1;          
    volatile uint32_t ARB2;          
    volatile uint32_t MCON;          
    volatile uint32_t DAT_A1;        
    volatile uint32_t DAT_A2;        
    volatile uint32_t DAT_B1;        
    volatile uint32_t DAT_B2;        
    
    volatile const uint32_t RESERVE0[13];
    
} CAN_IF_T;


typedef struct
{


    













































































































































































































































































































































































































































































































































 
    volatile uint32_t CON;                    
    volatile uint32_t STATUS;                 
    volatile const  uint32_t ERR;                    
    volatile uint32_t BTIME;                  
    volatile const  uint32_t IIDR;                   
    volatile uint32_t TEST;                   
    volatile uint32_t BRPE;                   
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile CAN_IF_T IF[2];
    
    volatile const  uint32_t RESERVE2[8];
    
    volatile const  uint32_t TXREQ1;                 
    volatile const  uint32_t TXREQ2;                 
    
    volatile const  uint32_t RESERVE3[6];
    
    volatile const  uint32_t NDAT1;                  
    volatile const  uint32_t NDAT2;                  
    
    volatile const  uint32_t RESERVE4[6];
    
    volatile const  uint32_t IPND1;                  
    volatile const  uint32_t IPND2;                  
    
    volatile const  uint32_t RESERVE5[6];
    
    volatile const  uint32_t MVLD1;                  
    volatile const  uint32_t MVLD2;                  
    volatile uint32_t WU_EN;                  
    volatile uint32_t WU_STATUS;              

} CAN_T;




 































































































































































































































   
   
   


#pragma no_anon_unions


#line 241 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\sdh_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    


















































































































































































































































































































































































































































































































































































































































































































































 

    volatile uint32_t FB[32];                 
    
    volatile const  uint32_t RESERVE0[224];
    
    volatile uint32_t DMACTL;                 
    
    volatile const  uint32_t RESERVE1[1];
    
    volatile uint32_t DMASA;                  
    volatile const  uint32_t DMABCNT;                
    volatile uint32_t DMAINTEN;               
    volatile uint32_t DMAINTSTS;              
    
    volatile const  uint32_t RESERVE2[250];
    
    volatile uint32_t GCTL;                   
    volatile uint32_t GINTEN;                 
    volatile const  uint32_t GINTSTS;                
    
    volatile const  uint32_t RESERVE3[5];
    
    volatile uint32_t CTL;                    
    volatile uint32_t CMDARG;                 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile const  uint32_t RESP0;                  
    volatile const  uint32_t RESP1;                  
    volatile uint32_t BLEN;                   
    volatile uint32_t TOUT;                   

} SDH_T;





 


























































































































































   
   
   


#pragma no_anon_unions




#line 242 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\ebi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    















































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t TCTL0;                  
    
    volatile const  uint32_t RESERVE0[2];
    
    volatile uint32_t CTL1;                   
    volatile uint32_t TCTL1;                  
    
    volatile const  uint32_t RESERVE1[2];
    
    volatile uint32_t CTL2;                   
    volatile uint32_t TCTL2;                  

} EBI_T;




 









































































































































































   
   
   


#pragma no_anon_unions


#line 243 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\usbd_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    




















































































































































 
    volatile uint32_t BUFSEG;                
    volatile uint32_t MXPLD;                 
    volatile uint32_t CFG;                   
    volatile uint32_t CFGP;                  

} USBD_EP_T;

typedef struct
{


    

























































































































































































































































































































































































































































































































































































































































































































 

    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t FADDR;                  
    volatile const  uint32_t EPSTS;                  
    volatile uint32_t ATTR;                   
    volatile const  uint32_t VBUSDET;                
    volatile uint32_t STBUFSEG;               
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile const  uint32_t EPSTS0;                 
    volatile const  uint32_t EPSTS1;                 
    
    volatile const  uint32_t RESERVE1[24];
    
    volatile const  uint32_t LPMATTR;                
    volatile const  uint32_t FN;                     
    volatile uint32_t SE0;                    
    
    volatile const  uint32_t RESERVE2[283];
    
    USBD_EP_T     EP[12];                 

} USBD_T;





 










































































































































































































   
   
   


#pragma no_anon_unions


#line 244 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\hsusbd_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    





























































































































































































































































































































































































































































































































































































 

    union
    {
        volatile uint32_t EPDAT;
        volatile uint8_t  EPDAT_BYTE;

    };                                   

    volatile uint32_t EPINTSTS;              
    volatile uint32_t EPINTEN;               
    volatile const  uint32_t EPDATCNT;              
    volatile uint32_t EPRSPCTL;              
    volatile uint32_t EPMPS;                 
    volatile uint32_t EPTXCNT;               
    volatile uint32_t EPCFG;                 
    volatile uint32_t EPBUFST;               
    volatile uint32_t EPBUFEND;              

} HSUSBD_EP_T;

typedef struct
{

    



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 

    volatile const  uint32_t GINTSTS;                
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t GINTEN;                 
    
    volatile const  uint32_t RESERVE1[1];
    
    volatile uint32_t BUSINTSTS;              
    volatile uint32_t BUSINTEN;               
    volatile uint32_t OPER;                   
    volatile const  uint32_t FRAMECNT;               
    volatile uint32_t FADDR;                  
    volatile uint32_t TEST;                   

    union
    {
        volatile uint32_t CEPDAT;
        volatile uint8_t  CEPDAT_BYTE;

    };                                    

    volatile uint32_t CEPCTL;                 
    volatile uint32_t CEPINTEN;               
    volatile uint32_t CEPINTSTS;              
    volatile uint32_t CEPTXCNT;               
    volatile const  uint32_t CEPRXCNT;               
    volatile const  uint32_t CEPDATCNT;              
    volatile const  uint32_t SETUP1_0;               
    volatile const  uint32_t SETUP3_2;               
    volatile const  uint32_t SETUP5_4;               
    volatile const  uint32_t SETUP7_6;               
    volatile uint32_t CEPBUFST;               
    volatile uint32_t CEPBUFEND;              
    volatile uint32_t DMACTL;                 
    volatile uint32_t DMACNT;                 

    HSUSBD_EP_T EP[12];

    
    volatile const  uint32_t RESERVE2[303];
    
    volatile uint32_t DMAADDR;                
    volatile uint32_t PHYCTL;                 

} HSUSBD_T;




 






































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 245 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\usbh_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile const  uint32_t HcRevision;             
    volatile uint32_t HcControl;              
    volatile uint32_t HcCommandStatus;        
    volatile uint32_t HcInterruptStatus;      
    volatile uint32_t HcInterruptEnable;      
    volatile uint32_t HcInterruptDisable;     
    volatile uint32_t HcHCCA;                 
    volatile uint32_t HcPeriodCurrentED;      
    volatile uint32_t HcControlHeadED;        
    volatile uint32_t HcControlCurrentED;     
    volatile uint32_t HcBulkHeadED;           
    volatile uint32_t HcBulkCurrentED;        
    volatile uint32_t HcDoneHead;             
    volatile uint32_t HcFmInterval;           
    volatile const  uint32_t HcFmRemaining;          
    volatile const  uint32_t HcFmNumber;             
    volatile uint32_t HcPeriodicStart;        
    volatile uint32_t HcLSThreshold;          
    volatile uint32_t HcRhDescriptorA;        
    volatile uint32_t HcRhDescriptorB;        
    volatile uint32_t HcRhStatus;             
    volatile uint32_t HcRhPortStatus[2];      
    
    volatile const  uint32_t RESERVE0[105];
    
    volatile uint32_t HcPhyControl;           
    volatile uint32_t HcMiscControl;          

} USBH_T;




 




























































































































































































































   
   
   


#pragma no_anon_unions


#line 246 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\hsusbh_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






























































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile const  uint32_t EHCVNR;                 
    volatile const  uint32_t EHCSPR;                 
    volatile const  uint32_t EHCCPR;                 
    
    volatile const  uint32_t RESERVE0[5];
    
    volatile uint32_t UCMDR;                  
    volatile uint32_t USTSR;                  
    volatile uint32_t UIENR;                  
    volatile uint32_t UFINDR;                 
    
    volatile const  uint32_t RESERVE1[1];
    
    volatile uint32_t UPFLBAR;                
    volatile uint32_t UCALAR;                 
    volatile uint32_t UASSTR;                 
    
    volatile const  uint32_t RESERVE2[8];
    
    volatile uint32_t UCFGR;                  
    volatile uint32_t UPSCR[2];               
    
    volatile const  uint32_t RESERVE3[22];
    
    volatile uint32_t USBPCR0;                
    volatile uint32_t USBPCR1;                

} HSUSBH_T;




 






































































































































































   
   
   


#pragma no_anon_unions


#line 247 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\otg_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    











































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t PHYCTL;                 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile const  uint32_t STATUS;                 

} OTG_T;





 


































































































































   
   
   


#pragma no_anon_unions


#line 248 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\hsotg_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    











































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t PHYCTL;                 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile const  uint32_t STATUS;                 

} HSOTG_T;




 


































































































































   
   
   


#pragma no_anon_unions


#line 249 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\crc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    


























































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t DAT;                    
    volatile uint32_t SEED;                   
    volatile const  uint32_t CHECKSUM;               

} CRC_T;




 


































   
   
   


#pragma no_anon_unions


#line 250 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\crypto_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    





























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t PRNG_CTL;               
    volatile  uint32_t PRNG_SEED;              
    volatile const  uint32_t PRNG_KEY[8];            
    
    volatile const  uint32_t RESERVE0[8];
    
    volatile const  uint32_t AES_FDBCK[4];           
    volatile const  uint32_t TDES_FDBCKH;            
    volatile const  uint32_t TDES_FDBCKL;            
    
    volatile const  uint32_t RESERVE1[38];
    
    volatile uint32_t AES_CTL;                
    volatile const  uint32_t AES_STS;                
    volatile uint32_t AES_DATIN;              
    volatile const  uint32_t AES_DATOUT;             
    volatile uint32_t AES0_KEY[8];            
    volatile uint32_t AES0_IV[4];             
    volatile uint32_t AES0_SADDR;             
    volatile uint32_t AES0_DADDR;             
    volatile uint32_t AES0_CNT;               
    volatile uint32_t AES1_KEY[8];            
    volatile uint32_t AES1_IV[4];             
    volatile uint32_t AES1_SADDR;             
    volatile uint32_t AES1_DADDR;             
    volatile uint32_t AES1_CNT;               
    volatile uint32_t AES2_KEY[8];            
    volatile uint32_t AES2_IV[4];             
    volatile uint32_t AES2_SADDR;             
    volatile uint32_t AES2_DADDR;             
    volatile uint32_t AES2_CNT;               
    volatile uint32_t AES3_KEY[8];            
    volatile uint32_t AES3_IV[4];             
    volatile uint32_t AES3_SADDR;             
    volatile uint32_t AES3_DADDR;             
    volatile uint32_t AES3_CNT;               
    volatile uint32_t TDES_CTL;               
    volatile const  uint32_t TDES_STS;               
    volatile uint32_t TDES0_KEY1H;            
    volatile uint32_t TDES0_KEY1L;            
    volatile uint32_t TDES0_KEY2H;            
    volatile uint32_t TDES0_KEY2L;            
    volatile uint32_t TDES0_KEY3H;            
    volatile uint32_t TDES0_KEY3L;            
    volatile uint32_t TDES0_IVH;              
    volatile uint32_t TDES0_IVL;              
    volatile uint32_t TDES0_SA;               
    volatile uint32_t TDES0_DA;               
    volatile uint32_t TDES0_CNT;              
    volatile uint32_t TDES_DATIN;             
    volatile const  uint32_t TDES_DATOUT;            
    
    volatile const  uint32_t RESERVE2[3];
    
    volatile uint32_t TDES1_KEY1H;            
    volatile uint32_t TDES1_KEY1L;            
    volatile uint32_t TDES1_KEY2H;            
    volatile uint32_t TDES1_KEY2L;            
    volatile uint32_t TDES1_KEY3H;            
    volatile uint32_t TDES1_KEY3L;            
    volatile uint32_t TDES1_IVH;              
    volatile uint32_t TDES1_IVL;              
    volatile uint32_t TDES1_SA;               
    volatile uint32_t TDES1_DA;               
    volatile uint32_t TDES1_CNT;              
    
    volatile const  uint32_t RESERVE3[5];
    
    volatile uint32_t TDES2_KEY1H;            
    volatile uint32_t TDES2_KEY1L;            
    volatile uint32_t TDES2_KEY2H;            
    volatile uint32_t TDES2_KEY2L;            
    volatile uint32_t TDES2_KEY3H;            
    volatile uint32_t TDES2_KEY3L;            
    volatile uint32_t TDES2_IVH;              
    volatile uint32_t TDES2_IVL;              
    volatile uint32_t TDES2_SA;               
    volatile uint32_t TDES2_DA;               
    volatile uint32_t TDES2_CNT;              
    
    volatile const  uint32_t RESERVE4[5];
    
    volatile uint32_t TDES3_KEY1H;            
    volatile uint32_t TDES3_KEY1L;            
    volatile uint32_t TDES3_KEY2H;            
    volatile uint32_t TDES3_KEY2L;            
    volatile uint32_t TDES3_KEY3H;            
    volatile uint32_t TDES3_KEY3L;            
    volatile uint32_t TDES3_IVH;              
    volatile uint32_t TDES3_IVL;              
    volatile uint32_t TDES3_SA;               
    volatile uint32_t TDES3_DA;               
    volatile uint32_t TDES3_CNT;              
    
    volatile const  uint32_t RESERVE5[3];
    
    volatile uint32_t HMAC_CTL;               
    volatile const  uint32_t HMAC_STS;               
    volatile const  uint32_t HMAC_DGST[16];          
    volatile uint32_t HMAC_KEYCNT;            
    volatile uint32_t HMAC_SADDR;             
    volatile uint32_t HMAC_DMACNT;            
    volatile uint32_t HMAC_DATIN;             
    
    volatile const  uint32_t RESERVE6[298];
    
    volatile uint32_t ECC_CTL;                
    volatile const  uint32_t ECC_STS;                
    volatile uint32_t ECC_X1[18];             
    volatile uint32_t ECC_Y1[18];             
    volatile uint32_t ECC_X2[18];             
    volatile uint32_t ECC_Y2[18];             
    volatile uint32_t ECC_A[18];              
    volatile uint32_t ECC_B[18];              
    volatile uint32_t ECC_N[18];              
    volatile  uint32_t ECC_K[18];              
    volatile uint32_t ECC_SADDR;              
    volatile uint32_t ECC_DADDR;              
    volatile uint32_t ECC_STARTREG;           
    volatile uint32_t ECC_WORDCNT;            

} CRPT_T;




 

























































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 251 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\trng_reg.h"
 






 







 

 



 

typedef struct
{


    















































































































































 
    volatile uint32_t CTL;                    
    volatile const  uint32_t DATA;                   
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile uint32_t ACT;                    

} TRNG_T;




 




























   
   
   


#line 252 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\eadc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile const  uint32_t DAT[19];                
    volatile const  uint32_t CURDAT;                 
    volatile uint32_t CTL;                    
    volatile  uint32_t SWTRG;                  
    volatile uint32_t PENDSTS;                
    volatile uint32_t OVSTS;                  
    
    volatile const  uint32_t RESERVE0[8];
    
    volatile uint32_t SCTL[19];               
    
    volatile const  uint32_t RESERVE1[1];
    
    volatile uint32_t INTSRC[4];              
    volatile uint32_t CMP[4];                 
    volatile const  uint32_t STATUS0;                
    volatile const  uint32_t STATUS1;                
    volatile uint32_t STATUS2;                
    volatile const  uint32_t STATUS3;                
    volatile const  uint32_t DDAT[4];                
    volatile uint32_t PWRM;                   
    volatile uint32_t CALCTL;                 
    volatile uint32_t CALDWRD;                
    
    volatile const  uint32_t RESERVE2[5];
    
    volatile uint32_t PDMACTL;                
} EADC_T;




 









































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 253 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\dac_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

















































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t SWTRG;                  
    volatile uint32_t DAT;                    
    volatile const  uint32_t DATOUT;                 
    volatile uint32_t STATUS;                 
    volatile uint32_t TCTL;                   

} DAC_T;




 























































   
   
   


#pragma no_anon_unions


#line 254 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\acmp_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    












































































































































































































































































 
    volatile uint32_t CTL[2];                 
    volatile uint32_t STATUS;                 
    volatile uint32_t VREF;                   

} ACMP_T;




 









































































   
   
   


#pragma no_anon_unions


#line 255 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\opa_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    



















































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t STATUS;                 
    volatile uint32_t CALCTL;                 
    volatile const  uint32_t CALST;                  

} OPA_T;




 




































































































   
   
   


#pragma no_anon_unions




#line 256 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\ccap_reg.h"
 






 




#pragma anon_unions





 




 


typedef struct {


    



















































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL;
    volatile uint32_t PAR;
    volatile uint32_t INT;
    volatile uint32_t POSTERIZE;
    volatile uint32_t MD;
    volatile uint32_t MDADDR;
    volatile uint32_t MDYADDR;
    volatile uint32_t SEPIA;
    volatile uint32_t CWSP;
    volatile uint32_t CWS;
    volatile uint32_t PKTSL;
    volatile uint32_t PLNSL;
    volatile uint32_t FRCTL;
    volatile uint32_t STRIDE;
    
    uint32_t RESERVE0[1];
    
    volatile uint32_t FIFOTH;
    volatile uint32_t CMPADDR;
    volatile uint32_t LUMA_Y1_THD;
    volatile uint32_t PKTSM;
    
    uint32_t RESERVE2[5];
    
    volatile uint32_t PKTBA0;
} CCAP_T;




 




























































































































































   
   
   


#pragma no_anon_unions


#line 257 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"





 
 






 
#line 297 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

 
#line 322 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"


 
#line 350 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

#line 358 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

   





 

#line 397 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

#line 405 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

#line 459 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

   




 

typedef volatile uint8_t  vu8;        
typedef volatile uint16_t vu16;       
typedef volatile uint32_t vu32;       
typedef volatile uint64_t vu64;       





 







 







 








 







 








 







 







 






 








 







 








 







 







 






 



   

 
 
 



 











 
#line 647 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

 










   


 
 
 
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 






 












 



 



 


 
 
 
#line 46 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

#line 76 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

#line 96 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
 
 
#line 110 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"


 
 
 
#line 121 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"


 
 
 
#line 133 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
 
 




 
 
 






 
 
#line 259 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 359 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 486 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 608 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 716 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 783 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 839 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 891 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 977 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1054 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1113 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1147 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1197 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1252 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1292 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 
#line 1327 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

   




 








 









 









 









 









 










 









 









 









 

















 









 









 









 









 









 









 









 









 









 









 









 
















 



 
 
 
 
static __inline void SYS_UnlockReg(void);
static __inline void SYS_LockReg(void);







 
static __inline void SYS_UnlockReg(void)
{
    do
    {
        ((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->REGLCTL = 0x59UL;
        ((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->REGLCTL = 0x16UL;
        ((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->REGLCTL = 0x88UL;
    }
    while(((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->REGLCTL == 0UL);
}







 
static __inline void SYS_LockReg(void)
{
    ((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->REGLCTL = 0UL;
}


void SYS_ClearResetSrc(uint32_t u32Src);
uint32_t SYS_GetBODStatus(void);
uint32_t SYS_GetResetSrc(void);
uint32_t SYS_IsRegLocked(void);
uint32_t SYS_ReadPDID(void);
void SYS_ResetChip(void);
void SYS_ResetCPU(void);
void SYS_ResetModule(uint32_t u32ModuleIndex);
void SYS_EnableBOD(int32_t i32Mode, uint32_t u32BODLevel);
void SYS_DisableBOD(void);
void SYS_SetPowerLevel(uint32_t u32PowerLevel);
void SYS_SetVRef(uint32_t u32VRefCTL);

   

   

   








 
#line 666 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"
 






 











 



 



 


#line 42 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 






#line 58 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"







#line 72 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"



















 
 
 




#line 104 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 111 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 118 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 125 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"




















 
 
 






































 
 
 


























































 
 
 
#line 256 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 




 
 
 



 
 
 





 
 
 
#line 287 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 
#line 301 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 312 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 






















 
 
 

 

#line 354 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 363 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 429 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 
#line 439 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 
#line 455 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 
#line 475 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 






























 
 
 












#line 536 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"



   

extern int32_t g_CLK_i32ErrCode;



 























 




























 


 
 
 
 
static __inline void CLK_SysTickDelay(uint32_t us);
static __inline void CLK_SysTickLongDelay(uint32_t us);









 
static __inline void CLK_SysTickDelay(uint32_t us)
{
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = us * CyclesPerUs;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = 0x0UL;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) | (1UL );

     
    while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16U)) == 0UL)
    {
    }

     
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0UL;
}








 
static __inline void CLK_SysTickLongDelay(uint32_t us)
{
    uint32_t delay;

     
    delay = 349525UL;

    do
    {
        if(us > delay)
        {
            us -= delay;
        }
        else
        {
            delay = us;
            us = 0UL;
        }

        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = delay * CyclesPerUs;
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x0UL);
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) | (1UL );

         
        while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16U)) == 0UL);

         
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0UL;

    }
    while(us > 0UL);

}


void CLK_DisableCKO(void);
void CLK_EnableCKO(uint32_t u32ClkSrc, uint32_t u32ClkDiv, uint32_t u32ClkDivBy1En);
void CLK_PowerDown(void);
void CLK_Idle(void);
uint32_t CLK_GetHXTFreq(void);
uint32_t CLK_GetLXTFreq(void);
uint32_t CLK_GetHCLKFreq(void);
uint32_t CLK_GetPCLK0Freq(void);
uint32_t CLK_GetPCLK1Freq(void);
uint32_t CLK_GetCPUFreq(void);
uint32_t CLK_SetCoreClock(uint32_t u32Hclk);
void CLK_SetHCLK(uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetModuleClock(uint32_t u32ModuleIdx, uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetSysTickClockSrc(uint32_t u32ClkSrc);
void CLK_EnableXtalRC(uint32_t u32ClkMask);
void CLK_DisableXtalRC(uint32_t u32ClkMask);
void CLK_EnableModuleClock(uint32_t u32ModuleIdx);
void CLK_DisableModuleClock(uint32_t u32ModuleIdx);
uint32_t CLK_EnablePLL(uint32_t u32PllClkSrc, uint32_t u32PllFreq);
void CLK_DisablePLL(void);
uint32_t CLK_WaitClockReady(uint32_t u32ClkMask);
void CLK_EnableSysTick(uint32_t u32ClkSrc, uint32_t u32Count);
void CLK_DisableSysTick(void);
void CLK_SetPowerDownMode(uint32_t u32PDMode);
void CLK_EnableDPDWKPin(uint32_t u32TriggerType);
uint32_t CLK_GetPMUWKSrc(void);
void CLK_EnableSPDWKPin(uint32_t u32Port, uint32_t u32Pin, uint32_t u32TriggerType, uint32_t u32DebounceEn);
uint32_t CLK_GetPLLClockFreq(void);
uint32_t CLK_GetModuleClockSource(uint32_t u32ModuleIdx);
uint32_t CLK_GetModuleClockDivider(uint32_t u32ModuleIdx);

   

   

   







 
#line 667 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"

#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\acmp.h"
 






 












 




 




 



 
 
 
#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\acmp.h"

 
 
 




   




 

 
 
 









 









 














 








 









 













 










 









 









 









 









 









 









 









 









 









 














 









 









 


















 












 











 













 












 









 
















 









 





 
void ACMP_Open(ACMP_T *acmp, uint32_t u32ChNum, uint32_t u32NegSrc, uint32_t u32HysSel);
void ACMP_Close(ACMP_T *acmp, uint32_t u32ChNum);



   

   

   








 
#line 669 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\dac.h"
 






 











 



 




 

 
 
 



#line 49 "..\\..\\..\\..\\Library\\StdDriver\\inc\\dac.h"





   




 







 








 








 








 








 









 









 








 








 








 








 











 









 










 










 









 









 








 








 







 


void DAC_Open(DAC_T *dac, uint32_t u32Ch, uint32_t u32TrgSrc);
void DAC_Close(DAC_T *dac, uint32_t u32Ch);
uint32_t DAC_SetDelayTime(DAC_T *dac, uint32_t u32Delay);

   

   

   







 
#line 670 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\emac.h"
 






 








#line 18 "..\\..\\..\\..\\Library\\StdDriver\\inc\\emac.h"



 



 



 
















   

extern int32_t g_EMAC_i32ErrCode;



 







 








 







 








 







 







 







 







 







 







 









 







 






 






 




































 




































 




































 





































 


void EMAC_Open(uint8_t *pu8MacAddr);
int32_t EMAC_Close(void);
void EMAC_SetMacAddr(uint8_t *pu8MacAddr);
void EMAC_EnableCamEntry(uint32_t u32Entry, uint8_t pu8MacAddr[]);
void EMAC_DisableCamEntry(uint32_t u32Entry);

uint32_t EMAC_RecvPkt(uint8_t *pu8Data, uint32_t *pu32Size);
uint32_t EMAC_RecvPktTS(uint8_t *pu8Data, uint32_t *pu32Size, uint32_t *pu32Sec, uint32_t *pu32Nsec);
void EMAC_RecvPktDone(void);

uint32_t EMAC_SendPkt(uint8_t *pu8Data, uint32_t u32Size);
uint32_t EMAC_SendPktDone(void);
uint32_t EMAC_SendPktDoneTS(uint32_t *pu32Sec, uint32_t *pu32Nsec);

void EMAC_EnableTS(uint32_t u32Sec, uint32_t u32Nsec);
void EMAC_DisableTS(void);
void EMAC_GetTime(uint32_t *pu32Sec, uint32_t *pu32Nsec);
void EMAC_SetTime(uint32_t u32Sec, uint32_t u32Nsec);
void EMAC_UpdateTime(uint32_t u32Neg, uint32_t u32Sec, uint32_t u32Nsec);
void EMAC_EnableAlarm(uint32_t u32Sec, uint32_t u32Nsec);
void EMAC_DisableAlarm(void);

uint32_t EMAC_CheckLinkStatus(void);

int32_t EMAC_PhyInit(void);
int32_t EMAC_FillCamEntry(uint8_t pu8MacAddr[]);
uint8_t *EMAC_ClaimFreeTXBuf(void);
uint32_t EMAC_GetAvailRXBufSize(void);
uint32_t EMAC_SendPktWoCopy(uint32_t u32Size);
void EMAC_RecvPktDoneWoRxTrigger(void);

   

   

   





#line 671 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\uart.h"
 






 












 



 



 

 
 
 

#line 41 "..\\..\\..\\..\\Library\\StdDriver\\inc\\uart.h"

 
 
 











 
 
 
















 
 
 




 
 
 




 
 
 






 
 
 
#line 107 "..\\..\\..\\..\\Library\\StdDriver\\inc\\uart.h"


 
 
 




   




 












 













 













 












 













 













 














 












 













 













 













 













 













 






















 






















 




































 












 













 


 
static __inline void UART_CLEAR_RTS(UART_T* uart);
static __inline void UART_SET_RTS(UART_T* uart);










 
static __inline void UART_CLEAR_RTS(UART_T* uart)
{
    uart->MODEM |= (0x1ul << (9));
    uart->MODEM &= ~(0x1ul << (1));
}










 
static __inline void UART_SET_RTS(UART_T* uart)
{
    uart->MODEM |= (0x1ul << (9)) | (0x1ul << (1));
}












 












 



void UART_ClearIntFlag(UART_T* uart, uint32_t u32InterruptFlag);
void UART_Close(UART_T* uart);
void UART_DisableFlowCtrl(UART_T* uart);
void UART_DisableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_EnableFlowCtrl(UART_T* uart);
void UART_EnableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_Open(UART_T* uart, uint32_t u32baudrate);
uint32_t UART_Read(UART_T* uart, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
void UART_SetLineConfig(UART_T* uart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t  u32stop_bits);
void UART_SetTimeoutCnt(UART_T* uart, uint32_t u32TOC);
void UART_SelectIrDAMode(UART_T* uart, uint32_t u32Buadrate, uint32_t u32Direction);
void UART_SelectRS485Mode(UART_T* uart, uint32_t u32Mode, uint32_t u32Addr);
void UART_SelectLINMode(UART_T* uart, uint32_t u32Mode, uint32_t u32BreakLength);
uint32_t UART_Write(UART_T* uart, uint8_t pu8TxBuf[], uint32_t u32WriteBytes);




   

   

   







 
#line 672 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"
 






 











 



 



 













 
#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"

 
#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"

   




 






 







 









 









 









 







 








 








 












 












 







 







 








 
#line 198 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"








 









 







 







 
















 







 










 












 












 










 










 












 












 









 








 








 








 








 








 


uint32_t USPI_Open(USPI_T *uspi, uint32_t u32MasterSlave, uint32_t u32SPIMode,  uint32_t u32DataWidth, uint32_t u32BusClock);
void USPI_Close(USPI_T *uspi);
void USPI_ClearRxBuf(USPI_T *uspi);
void USPI_ClearTxBuf(USPI_T *uspi);
void USPI_DisableAutoSS(USPI_T *uspi);
void USPI_EnableAutoSS(USPI_T *uspi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t USPI_SetBusClock(USPI_T *uspi, uint32_t u32BusClock);
uint32_t USPI_GetBusClock(USPI_T *uspi);
void USPI_EnableInt(USPI_T *uspi, uint32_t u32Mask);
void USPI_DisableInt(USPI_T *uspi, uint32_t u32Mask);
uint32_t USPI_GetIntFlag(USPI_T *uspi, uint32_t u32Mask);
void USPI_ClearIntFlag(USPI_T *uspi, uint32_t u32Mask);
uint32_t USPI_GetStatus(USPI_T *uspi, uint32_t u32Mask);
void USPI_EnableWakeup(USPI_T *uspi);
void USPI_DisableWakeup(USPI_T *uspi);


   

   

   







 
#line 673 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"
 






 











 



 



 





 
 
 






 
 
 







 
 
 



 
 
 




 
 
 





 
 
 






#line 99 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"















 
#line 234 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"


   




 














 















 














 















 















 















 















 
















 
































 











 












 











 


















 















 



void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);
void GPIO_SetSlewCtl(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_SetPullCtl(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);


   

   

   








 
#line 674 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ccap.h"
 






 










 



 



 

 
 
 
#line 41 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ccap.h"

 
 
 
























#line 75 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ccap.h"

 
 
 





 
 
 






   

extern int32_t g_CCAP_i32ErrCode;



 








 















 









 


void CCAP_Open(uint32_t u32InFormat, uint32_t u32OutFormet);
void CCAP_SetCroppingWindow(uint32_t u32VStart,uint32_t u32HStart, uint32_t u32Height, uint32_t u32Width);
void CCAP_SetPacketBuf(uint32_t  u32Address );
void CCAP_Close(void);
void CCAP_EnableInt(uint32_t u32IntMask);
void CCAP_DisableInt(uint32_t u32IntMask);
void CCAP_Start(void);
void CCAP_Stop(uint32_t u32FrameComplete);
void CCAP_SetPacketScaling(uint32_t u32VNumerator, uint32_t u32VDenominator, uint32_t u32HNumerator, uint32_t u32HDenominator);
void CCAP_SetPacketStride(uint32_t u32Stride );
void CCAP_EnableMono(uint32_t u32Interface);
void CCAP_DisableMono(void);
void CCAP_EnableLumaYOne(uint32_t u32th);
void CCAP_DisableLumaYOne(void);

   



   

   







 
#line 675 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ecap.h"
 






 











 



 



 





 
 
 
#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ecap.h"







 
 
 




#line 65 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ecap.h"






   



 














 








 















 












 












 















 












 












 








 








 








 








 








 








 















 
#line 261 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ecap.h"







 








 








 








 
















 













 

















 













 








 














 














 









 








 












 









 


void ECAP_Open(ECAP_T* ecap, uint32_t u32FuncMask);
void ECAP_Close(ECAP_T* ecap);
void ECAP_EnableINT(ECAP_T* ecap, uint32_t u32Mask);
void ECAP_DisableINT(ECAP_T* ecap, uint32_t u32Mask);
   

   

   







 
#line 676 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qei.h"
 






 











 



 



 

 
 
 





 
 
 
#line 47 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qei.h"




   




 







 








 








 








 








 








 












 












 












 












 













 













 








 















 








 









 








 








 









 















 














 









 









 














 














 









 













 



void QEI_Close(QEI_T* qei);
void QEI_DisableInt(QEI_T* qei, uint32_t u32IntSel);
void QEI_EnableInt(QEI_T* qei, uint32_t u32IntSel);
void QEI_Open(QEI_T* qei, uint32_t u32Mode, uint32_t u32Value);
void QEI_Start(QEI_T* qei);
void QEI_Stop(QEI_T* qei);


   

   

   







 
#line 677 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer.h"
 






 











 



 



 
 
 
 
#line 38 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer.h"






#line 50 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer.h"

#line 57 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer.h"




   




 














 













 












 














 














 


 
static __inline void TIMER_Start(TIMER_T *timer);
static __inline void TIMER_Stop(TIMER_T *timer);
static __inline void TIMER_EnableWakeup(TIMER_T *timer);
static __inline void TIMER_DisableWakeup(TIMER_T *timer);
static __inline void TIMER_StartCapture(TIMER_T *timer);
static __inline void TIMER_StopCapture(TIMER_T *timer);
static __inline void TIMER_EnableCaptureDebounce(TIMER_T *timer);
static __inline void TIMER_DisableCaptureDebounce(TIMER_T *timer);
static __inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer);
static __inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer);
static __inline void TIMER_EnableInt(TIMER_T *timer);
static __inline void TIMER_DisableInt(TIMER_T *timer);
static __inline void TIMER_EnableCaptureInt(TIMER_T *timer);
static __inline void TIMER_DisableCaptureInt(TIMER_T *timer);
static __inline uint32_t TIMER_GetIntFlag(TIMER_T *timer);
static __inline void TIMER_ClearIntFlag(TIMER_T *timer);
static __inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer);
static __inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer);
static __inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer);
static __inline void TIMER_ClearWakeupFlag(TIMER_T *timer);
static __inline uint32_t TIMER_GetCaptureData(TIMER_T *timer);
static __inline uint32_t TIMER_GetCounter(TIMER_T *timer);









 
static __inline void TIMER_Start(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (30));
}









 
static __inline void TIMER_Stop(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (30));
}











 
static __inline void TIMER_EnableWakeup(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (23));
}









 
static __inline void TIMER_DisableWakeup(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (23));
}









 
static __inline void TIMER_StartCapture(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (3));
}









 
static __inline void TIMER_StopCapture(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (3));
}









 
static __inline void TIMER_EnableCaptureDebounce(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (6));
}









 
static __inline void TIMER_DisableCaptureDebounce(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (6));
}









 
static __inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (7));
}









 
static __inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (7));
}









 
static __inline void TIMER_EnableInt(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (29));
}









 
static __inline void TIMER_DisableInt(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (29));
}









 
static __inline void TIMER_EnableCaptureInt(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (5));
}









 
static __inline void TIMER_DisableCaptureInt(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (5));
}










 
static __inline uint32_t TIMER_GetIntFlag(TIMER_T *timer)
{
    return ((timer->INTSTS & (0x1ul << (0))) ? 1UL : 0UL);
}









 
static __inline void TIMER_ClearIntFlag(TIMER_T *timer)
{
    timer->INTSTS = (0x1ul << (0));
}










 
static __inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer)
{
    return timer->EINTSTS;
}









 
static __inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer)
{
    timer->EINTSTS = (0x1ul << (0));
}










 
static __inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer)
{
    return (timer->INTSTS & (0x1ul << (1)) ? 1UL : 0UL);
}









 
static __inline void TIMER_ClearWakeupFlag(TIMER_T *timer)
{
    timer->INTSTS = (0x1ul << (1));
}









 
static __inline uint32_t TIMER_GetCaptureData(TIMER_T *timer)
{
    return timer->CAP;
}









 
static __inline uint32_t TIMER_GetCounter(TIMER_T *timer)
{
    return timer->CNT;
}

uint32_t TIMER_Open(TIMER_T *timer, uint32_t u32Mode, uint32_t u32Freq);
void TIMER_Close(TIMER_T *timer);
int32_t TIMER_Delay(TIMER_T *timer, uint32_t u32Usec);
void TIMER_EnableCapture(TIMER_T *timer, uint32_t u32CapMode, uint32_t u32Edge);
void TIMER_DisableCapture(TIMER_T *timer);
void TIMER_EnableEventCounter(TIMER_T *timer, uint32_t u32Edge);
void TIMER_DisableEventCounter(TIMER_T *timer);
uint32_t TIMER_GetModuleClock(TIMER_T *timer);
void TIMER_EnableFreqCounter(TIMER_T *timer,
                             uint32_t u32DropCount,
                             uint32_t u32Timeout,
                             uint32_t u32EnableInt);
void TIMER_DisableFreqCounter(TIMER_T *timer);
void TIMER_SetTriggerSource(TIMER_T *timer, uint32_t u32Src);
void TIMER_SetTriggerTarget(TIMER_T *timer, uint32_t u32Mask);
int32_t TIMER_ResetCounter(TIMER_T *timer);

   

   

   





#line 678 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer_pwm.h"
 






 












 


 



 
 
 
 



 
 
 




 
 
 



 
 
 





 
 
 






 
 
 
#line 75 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer_pwm.h"


#line 84 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer_pwm.h"




 
 
 




 
 
 
#line 106 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer_pwm.h"

 
 
 





 
 
 






 
 
 






   




 











 












 











 











 















 











 











 














 











 













 











 













 











 











 















 
















 
















 


















 




















 













 











 











 












 











 











 











 












 











 











 











 












 











 











 











 












 











 












 











 












 











 












 











 
















 



void TPWM_SetCounterClockSource(TIMER_T *timer, uint32_t u32CntClkSrc);
uint32_t TPWM_ConfigOutputFreqAndDuty(TIMER_T *timer, uint32_t u32Frequency, uint32_t u32DutyCycle);
void TPWM_EnableDeadTime(TIMER_T *timer, uint32_t u32DTCount);
void TPWM_EnableDeadTimeWithPrescale(TIMER_T *timer, uint32_t u32DTCount);
void TPWM_DisableDeadTime(TIMER_T *timer);
void TPWM_EnableCounter(TIMER_T *timer);
void TPWM_DisableCounter(TIMER_T *timer);
void TPWM_EnableTriggerADC(TIMER_T *timer, uint32_t u32Condition);
void TPWM_DisableTriggerADC(TIMER_T *timer);
void TPWM_EnableFaultBrake(TIMER_T *timer, uint32_t u32CH0Level, uint32_t u32CH1Level, uint32_t u32BrakeSource);
void TPWM_EnableFaultBrakeInt(TIMER_T *timer, uint32_t u32IntSource);
void TPWM_DisableFaultBrakeInt(TIMER_T *timer, uint32_t u32IntSource);
uint32_t TPWM_GetFaultBrakeIntFlag(TIMER_T *timer, uint32_t u32IntSource);
void TPWM_ClearFaultBrakeIntFlag(TIMER_T *timer, uint32_t u32IntSource);
void TPWM_SetLoadMode(TIMER_T *timer, uint32_t u32LoadMode);
void TPWM_EnableBrakePinDebounce(TIMER_T *timer, uint32_t u32BrakePinSrc, uint32_t u32DebounceCnt, uint32_t u32ClkSrcSel);
void TPWM_DisableBrakePinDebounce(TIMER_T *timer);
void TPWM_EnableBrakePinInverse(TIMER_T *timer);
void TPWM_DisableBrakePinInverse(TIMER_T *timer);
void TPWM_SetBrakePinSource(TIMER_T *timer, uint32_t u32BrakePinNum);

   

   

   







#line 679 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pdma.h"
 






 











 



 



 


 
 
 




 
 
 




 
 
 





 
 
 



#line 67 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pdma.h"

 
 
 



 
 
 
#line 146 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pdma.h"
 
 
 





   



 










 











 













 











 













 











 












 












 













 













 













 













 













 













 













 


 
 
 
void PDMA_Open(PDMA_T * pdma,uint32_t u32Mask);
void PDMA_Close(PDMA_T * pdma);
void PDMA_SetTransferCnt(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32Width, uint32_t u32TransCount);
void PDMA_SetTransferAddr(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32SrcAddr, uint32_t u32SrcCtrl, uint32_t u32DstAddr, uint32_t u32DstCtrl);
void PDMA_SetTransferMode(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32Peripheral, uint32_t u32ScatterEn, uint32_t u32DescAddr);
void PDMA_SetBurstType(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32BurstType, uint32_t u32BurstSize);
void PDMA_EnableTimeout(PDMA_T * pdma,uint32_t u32Mask);
void PDMA_DisableTimeout(PDMA_T * pdma,uint32_t u32Mask);
void PDMA_SetTimeOut(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32OnOff, uint32_t u32TimeOutCnt);
void PDMA_Trigger(PDMA_T * pdma,uint32_t u32Ch);
void PDMA_EnableInt(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32Mask);
void PDMA_DisableInt(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32Mask);
void PDMA_SetStride(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32DestLen, uint32_t u32SrcLen, uint32_t u32TransCount);
void PDMA_SetRepeat(PDMA_T * pdma,uint32_t u32Ch, uint32_t u32DestInterval, uint32_t u32SrcInterval, uint32_t u32RepeatCount);


   

   

   







 
#line 680 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\crypto.h"
 






 










 



 




 













#line 50 "..\\..\\..\\..\\Library\\StdDriver\\inc\\crypto.h"






#line 66 "..\\..\\..\\..\\Library\\StdDriver\\inc\\crypto.h"

#line 75 "..\\..\\..\\..\\Library\\StdDriver\\inc\\crypto.h"

















typedef enum
{
     
    CURVE_P_192,                         
    CURVE_P_224,                         
    CURVE_P_256,                         
    CURVE_P_384,                         
    CURVE_P_521,                         
    CURVE_K_163,                         
    CURVE_K_233,                         
    CURVE_K_283,                         
    CURVE_K_409,                         
    CURVE_K_571,                         
    CURVE_B_163,                         
    CURVE_B_233,                         
    CURVE_B_283,                         
    CURVE_B_409,                         
    CURVE_B_571,                         
    CURVE_KO_192,                        
    CURVE_KO_224,                        
    CURVE_KO_256,                        
    CURVE_BP_256,                        
    CURVE_BP_384,                        
    CURVE_BP_512,                        
    CURVE_UNDEF,                         
}
E_ECC_CURVE;                             


   




 

 
 
 






 







 







 







 







 







 







 







 







 







 








 







 







 







 







 







 








 







 







 







 







 







 







 







 



   




 


 
 
 

void PRNG_Open(CRPT_T *crpt, uint32_t u32KeySize, uint32_t u32SeedReload, uint32_t u32Seed);
void PRNG_Start(CRPT_T *crpt);
void PRNG_Read(CRPT_T *crpt, uint32_t u32RandKey[]);
void AES_Open(CRPT_T *crpt, uint32_t u32Channel, uint32_t u32EncDec, uint32_t u32OpMode, uint32_t u32KeySize, uint32_t u32SwapType);
void AES_Start(CRPT_T *crpt, uint32_t u32Channel, uint32_t u32DMAMode);
void AES_SetKey(CRPT_T *crpt, uint32_t u32Channel, uint32_t au32Keys[], uint32_t u32KeySize);
void AES_SetInitVect(CRPT_T *crpt, uint32_t u32Channel, uint32_t au32IV[]);
void AES_SetDMATransfer(CRPT_T *crpt, uint32_t u32Channel, uint32_t u32SrcAddr, uint32_t u32DstAddr, uint32_t u32TransCnt);
void TDES_Open(CRPT_T *crpt, uint32_t u32Channel, uint32_t u32EncDec, int32_t Is3DES, int32_t Is3Key, uint32_t u32OpMode, uint32_t u32SwapType);
void TDES_Start(CRPT_T *crpt, int32_t u32Channel, uint32_t u32DMAMode);
void TDES_SetKey(CRPT_T *crpt, uint32_t u32Channel, uint32_t au32Keys[3][2]);
void TDES_SetInitVect(CRPT_T *crpt, uint32_t u32Channel, uint32_t u32IVH, uint32_t u32IVL);
void TDES_SetDMATransfer(CRPT_T *crpt, uint32_t u32Channel, uint32_t u32SrcAddr, uint32_t u32DstAddr, uint32_t u32TransCnt);
void SHA_Open(CRPT_T *crpt, uint32_t u32OpMode, uint32_t u32SwapType, uint32_t hmac_key_len);
void SHA_Start(CRPT_T *crpt, uint32_t u32DMAMode);
void SHA_SetDMATransfer(CRPT_T *crpt, uint32_t u32SrcAddr, uint32_t u32TransCnt);
void SHA_Read(CRPT_T *crpt, uint32_t u32Digest[]);
void ECC_Complete(CRPT_T *crpt);
int  ECC_IsPrivateKeyValid(CRPT_T *crpt, E_ECC_CURVE ecc_curve,  char private_k[]);
int32_t  ECC_GeneratePublicKey(CRPT_T *crpt, E_ECC_CURVE ecc_curve, char *private_k, char public_k1[], char public_k2[]);
int32_t  ECC_Mutiply(CRPT_T *crpt, E_ECC_CURVE ecc_curve, char x1[], char y1[], char *k, char x2[], char y2[]);
int32_t  ECC_GenerateSecretZ(CRPT_T *crpt, E_ECC_CURVE ecc_curve, char *private_k, char public_k1[], char public_k2[], char secret_z[]);
int32_t  ECC_GenerateSignature(CRPT_T *crpt, E_ECC_CURVE ecc_curve, char *message, char *d, char *k, char *R, char *S);
int32_t  ECC_VerifySignature(CRPT_T *crpt, E_ECC_CURVE ecc_curve, char *message, char *public_k1, char *public_k2, char *R, char *S);


   

   

   







 

#line 681 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\trng.h"
 






 










 



 




 

 
 
 


















 



   




 


 
 
 

int32_t TRNG_Open(void);
int32_t TRNG_GenWord(uint32_t *u32RndNum);
int32_t TRNG_GenBignum(uint8_t u8BigNum[], int32_t i32Len);
int32_t TRNG_GenBignumHex(char cBigNumHex[], int32_t i32Len);


   

   

   







 

#line 682 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"
 






 










 



 




 


 
 
 
#line 52 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"











 
 
 





 
 
 



 
 
 
#line 96 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"











   




 


 
 
 

#line 133 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"

   

 
 
 
extern int32_t  g_FMC_i32ErrCode;




 

 
 
 

static __inline uint32_t FMC_ReadCID(void);
static __inline uint32_t FMC_ReadPID(void);
static __inline uint32_t FMC_ReadUID(uint8_t u8Index);
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index);
static __inline int32_t  FMC_SetVectorPageAddr(uint32_t u32PageAddr);
static __inline uint32_t FMC_GetVECMAP(void);








 
static __inline uint32_t FMC_GetVECMAP(void)
{
    return (((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPSTS & (0x7ffful << (9)));
}









 
static __inline uint32_t FMC_ReadCID(void)
{
    uint32_t  tout = ((SystemCoreClock/10)*2);

    g_FMC_i32ErrCode = 0;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPCMD = 0x0BUL;            
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPADDR = 0x0u;                          
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG = (0x1ul << (0));           



    while (tout-- > 0)
    {
        if (!(((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG & (0x1ul << (0))))   
        {
            if (((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPDAT != 0xDA)
                g_FMC_i32ErrCode = -1;
            return ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPDAT;
        }
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}









 
static __inline uint32_t FMC_ReadPID(void)
{
    uint32_t  tout = ((SystemCoreClock/10)*2);

    g_FMC_i32ErrCode = 0;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPCMD = 0x0CUL;           
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPADDR = 0x04u;                        
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG = (0x1ul << (0));          



    while (tout-- > 0)
    {
        if (!(((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG & (0x1ul << (0))))   
            return ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}









 
static __inline uint32_t FMC_ReadUID(uint8_t u8Index)
{
    uint32_t  tout = ((SystemCoreClock/10)*2);

    g_FMC_i32ErrCode = 0;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPCMD = 0x04UL;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPADDR = ((uint32_t)u8Index << 2u);
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPDAT = 0u;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG = 0x1u;



    while (tout-- > 0)
    {
        if (!(((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG & (0x1ul << (0))))   
            return ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}









 
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index)
{
    uint32_t  tout = ((SystemCoreClock/10)*2);

    g_FMC_i32ErrCode = 0;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPCMD = 0x04UL;             
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPADDR = (0x04u * u32Index) + 0x10u;     
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG = (0x1ul << (0));            



    while (tout-- > 0)
    {
        if (!(((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG & (0x1ul << (0))))   
            return ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}













 
static __inline int32_t FMC_SetVectorPageAddr(uint32_t u32PageAddr)
{
    uint32_t  tout = ((SystemCoreClock/10)*2);

    g_FMC_i32ErrCode = 0;
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPCMD = 0x2EUL;   
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPADDR = u32PageAddr;        
    ((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG = 0x1u;                



    while (tout-- > 0)
    {
        if (!((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPTRG)              
            return 0;
    }
    g_FMC_i32ErrCode = -1;
    return -1;
}


 
 
 

extern void     FMC_Close(void);
extern int32_t  FMC_ConfigXOM(uint32_t xom_num, uint32_t xom_base, uint8_t xom_page);
extern int32_t  FMC_Erase(uint32_t u32PageAddr);
extern int32_t  FMC_Erase_SPROM(void);
extern int32_t  FMC_Erase_Block(uint32_t u32BlockAddr);
extern int32_t  FMC_Erase_Bank(uint32_t u32BankAddr);
extern int32_t  FMC_EraseXOM(uint32_t xom_num);
extern int32_t  FMC_GetXOMState(uint32_t xom_num);
extern int32_t  FMC_GetBootSource(void);
extern void     FMC_Open(void);
extern uint32_t FMC_Read(uint32_t u32Addr);
extern int32_t  FMC_Read_64(uint32_t u32addr, uint32_t * u32data0, uint32_t * u32data1);
extern uint32_t FMC_ReadDataFlashBaseAddr(void);
extern void     FMC_SetBootSource(int32_t i32BootSrc);
extern int32_t  FMC_Write(uint32_t u32Addr, uint32_t u32Data);
extern int32_t  FMC_Write8Bytes(uint32_t u32addr, uint32_t u32data0, uint32_t u32data1);
extern int32_t  FMC_WriteMultiple(uint32_t u32Addr, uint32_t pu32Buf[], uint32_t u32Len);
extern int32_t  FMC_Write_OTP(uint32_t otp_num, uint32_t low_word, uint32_t high_word);
extern int32_t  FMC_Read_OTP(uint32_t otp_num, uint32_t *low_word, uint32_t *high_word);
extern int32_t  FMC_Lock_OTP(uint32_t otp_num);
extern int32_t  FMC_Is_OTP_Locked(uint32_t otp_num);
extern int32_t  FMC_ReadConfig(uint32_t u32Config[], uint32_t u32Count);
extern int32_t  FMC_WriteConfig(uint32_t u32Config[], uint32_t u32Count);
extern uint32_t FMC_GetChkSum(uint32_t u32addr, uint32_t u32count);
extern uint32_t FMC_CheckAllOne(uint32_t u32addr, uint32_t u32count);
extern int32_t  FMC_SetSPKey(uint32_t key[3], uint32_t kpmax, uint32_t kemax, const int32_t lock_CONFIG, const int32_t lock_SPROM);
extern int32_t  FMC_CompareSPKey(uint32_t key[3]);


   

   

   







 
#line 683 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spim.h"
 






 



 
 
 









 



 




 






 
 
 
#line 51 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spim.h"







#line 66 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spim.h"

 

typedef enum
{
    MFGID_UNKNOW    = 0x00U,
    MFGID_SPANSION  = 0x01U,
    MFGID_EON       = 0x1CU,
    MFGID_ISSI      = 0x7FU,
    MFGID_MXIC      = 0xC2U,
    MFGID_WINBOND   = 0xEFU
}
E_MFGID;

 
#line 101 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spim.h"

 




 












 



 

 








 

   




 


 
 
 




 





 





 





 





 








 





 





 





 








 








 






 








 






 








 








 








 








 








 








 








 






 








 





 








 





 





 





 








 





 





 





 





 





 





 





 








 






 








 








 






 








 






 








 






 








 






 






 






 








 






 








 






 





 





 





 





 








 





 








 




 
 
 


int  SPIM_InitFlash(int clrWP);
uint32_t SPIM_GetSClkFreq(void);
void SPIM_ReadJedecId(uint8_t idBuf[], uint32_t u32NRx, uint32_t u32NBit);
int  SPIM_Enable_4Bytes_Mode(int isEn, uint32_t u32NBit);
int  SPIM_Is4ByteModeEnable(uint32_t u32NBit);

void SPIM_ChipErase(uint32_t u32NBit, int isSync);
void SPIM_EraseBlock(uint32_t u32Addr, int is4ByteAddr, uint8_t u8ErsCmd, uint32_t u32NBit, int isSync);

void SPIM_IO_Write(uint32_t u32Addr, int is4ByteAddr, uint32_t u32NTx, uint8_t pu8TxBuf[], uint8_t wrCmd, uint32_t u32NBitCmd, uint32_t u32NBitAddr, uint32_t u32NBitDat);
void SPIM_IO_Read(uint32_t u32Addr, int is4ByteAddr, uint32_t u32NRx, uint8_t pu8RxBuf[], uint8_t rdCmd, uint32_t u32NBitCmd, uint32_t u32NBitAddr, uint32_t u32NBitDat, int u32NDummy);

void SPIM_DMA_Write(uint32_t u32Addr, int is4ByteAddr, uint32_t u32NTx, uint8_t pu8TxBuf[], uint32_t wrCmd);
void SPIM_DMA_Read(uint32_t u32Addr, int is4ByteAddr, uint32_t u32NRx, uint8_t pu8RxBuf[], uint32_t u32RdCmd, int isSync);

void SPIM_EnterDirectMapMode(int is4ByteAddr, uint32_t u32RdCmd, uint32_t u32IdleIntvl);
void SPIM_ExitDirectMapMode(void);

void SPIM_SetQuadEnable(int isEn, uint32_t u32NBit);

void SPIM_WinbondUnlock(uint32_t u32NBit);

   

   

   







 
#line 684 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2c.h"
 






 











 



 



 



 
 
 
#line 44 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2c.h"

 
 
 



 
 
 





   

extern int32_t g_I2C_i32ErrCode;



 










 











 











 











 












 











 












 












 











 












 











 












 












 












 












 












 











 












 











 











 











 











 











 











 








 








 








 








 








 








 








 


 
 
 

 
static __inline void I2C_STOP(I2C_T *i2c);









 
static __inline void I2C_STOP(I2C_T *i2c)
{
    uint32_t u32TimeOutCount = SystemCoreClock; 
    (i2c)->CTL0 |= ((0x1ul << (3)) | (0x1ul << (4)));
    while(i2c->CTL0 & (0x1ul << (4)))
    {
        u32TimeOutCount--;
        if(u32TimeOutCount == 0) break;
    }
}

void I2C_ClearTimeoutFlag(I2C_T *i2c);
void I2C_Close(I2C_T *i2c);
void I2C_Trigger(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_DisableInt(I2C_T *i2c);
void I2C_EnableInt(I2C_T *i2c);
uint32_t I2C_GetBusClockFreq(I2C_T *i2c);
uint32_t I2C_GetIntFlag(I2C_T *i2c);
uint32_t I2C_GetStatus(I2C_T *i2c);
uint32_t I2C_Open(I2C_T *i2c, uint32_t u32BusClock);
uint8_t I2C_GetData(I2C_T *i2c);
void I2C_SetSlaveAddr(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddr, uint8_t u8GCMode);
void I2C_SetSlaveAddrMask(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddrMask);
uint32_t I2C_SetBusClockFreq(I2C_T *i2c, uint32_t u32BusClock);
void I2C_EnableTimeout(I2C_T *i2c, uint8_t u8LongTimeout);
void I2C_DisableTimeout(I2C_T *i2c);
void I2C_EnableWakeup(I2C_T *i2c);
void I2C_DisableWakeup(I2C_T *i2c);
void I2C_SetData(I2C_T *i2c, uint8_t u8Data);
void I2C_SMBusClearInterruptFlag(I2C_T *i2c, uint8_t u8SMBusIntFlag);
uint8_t I2C_WriteByte(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t data);
uint32_t I2C_WriteMultiBytes(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_WriteByteOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data);
uint32_t I2C_WriteMultiBytesOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_WriteByteTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data);
uint32_t I2C_WriteMultiBytesTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_ReadByte(I2C_T *i2c, uint8_t u8SlaveAddr);
uint32_t I2C_ReadMultiBytes(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t rdata[], uint32_t u32rLen);
uint8_t I2C_ReadByteOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr);
uint32_t I2C_ReadMultiBytesOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t rdata[], uint32_t u32rLen);
uint8_t I2C_ReadByteTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr);
uint32_t I2C_ReadMultiBytesTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t rdata[], uint32_t u32rLen);
uint32_t I2C_SMBusGetStatus(I2C_T *i2c);
void I2C_SMBusSetPacketByteCount(I2C_T *i2c, uint32_t u32PktSize);
void I2C_SMBusOpen(I2C_T *i2c, uint8_t u8HostDevice);
void I2C_SMBusClose(I2C_T *i2c);
void I2C_SMBusPECTxEnable(I2C_T *i2c, uint8_t u8PECTxEn);
uint8_t I2C_SMBusGetPECValue(I2C_T *i2c);
void I2C_SMBusIdleTimeout(I2C_T *i2c, uint32_t us, uint32_t u32Hclk);
void I2C_SMBusTimeout(I2C_T *i2c, uint32_t ms, uint32_t u32Pclk);
void I2C_SMBusClockLoTimeout(I2C_T *i2c, uint32_t ms, uint32_t u32Pclk);

   

   

   







 
#line 685 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2s.h"
 






 










 



 



 





 



 
#line 44 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2s.h"

 



 





 





 



 



 
#line 86 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2s.h"

#line 103 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2s.h"

 



 



   



 
 
 
 






 
static __inline void I2S_ENABLE_TX_ZCD(I2S_T *i2s, uint32_t u32ChMask)
{
    if((u32ChMask > 0U) && (u32ChMask < 9U))
    {
        i2s->CTL1 |= ((uint32_t)1U << (u32ChMask-1U));
    }
}







 
static __inline void I2S_DISABLE_TX_ZCD(I2S_T *i2s, uint32_t u32ChMask)
{
    if((u32ChMask > 0U) && (u32ChMask < 9U))
    {
        i2s->CTL1 &= ~((uint32_t)1U << (u32ChMask-1U));
    }
}






 







 







 







 







 







 







 







 







 







 







 







 










 
static __inline void I2S_SET_MONO_RX_CHANNEL(I2S_T *i2s, uint32_t u32Ch)
{
    u32Ch == (0x1ul << (23)) ?
    (i2s->CTL0 |= (0x1ul << (23))) :
    (i2s->CTL0 &= ~(0x1ul << (23)));
}







 







 








 








 








 








 







 







 


void I2S_Close(I2S_T *i2s);
void I2S_EnableInt(I2S_T *i2s, uint32_t u32Mask);
void I2S_DisableInt(I2S_T *i2s, uint32_t u32Mask);
uint32_t I2S_EnableMCLK(I2S_T *i2s, uint32_t u32BusClock);
void I2S_DisableMCLK(I2S_T *i2s);
void I2S_SetFIFO(I2S_T *i2s, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
void I2S_ConfigureTDM(I2S_T *i2s, uint32_t u32ChannelWidth, uint32_t u32ChannelNum, uint32_t u32SyncWidth);
uint32_t I2S_Open(I2S_T *i2s, uint32_t u32MasterSlave, uint32_t u32SampleRate, uint32_t u32WordWidth, uint32_t u32MonoData, uint32_t u32DataFormat);

   


   

   






 

#line 686 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"
 






 











 



 



 
#line 36 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"

 
 
 




 
 
 



 
 
 





 
 
 





 
 
 
#line 85 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"






 
 
 
#line 103 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"

#line 113 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"




 
 
 
#line 130 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"

 
 
 







 
 
 



 
 
 





 
 
 




 
 
 
#line 171 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"

 
 
 
#line 183 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"

 
 
 






 
 
 






   




 







 








 








 








 















 










 
#line 278 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"








 










 









 









 












 
















 











 











 









 











 












 









 













 
#line 439 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"









 










 










 






























 
#line 514 "..\\..\\..\\..\\Library\\StdDriver\\inc\\epwm.h"












 











 




 
 
 
uint32_t EPWM_ConfigCaptureChannel(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32UnitTimeNsec, uint32_t u32CaptureEdge);
uint32_t EPWM_ConfigOutputChannel(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Frequency, uint32_t u32DutyCycle);
void EPWM_Start(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_Stop(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_ForceStop(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_EnableADCTrigger(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void EPWM_DisableADCTrigger(EPWM_T *epwm, uint32_t u32ChannelNum);
int32_t EPWM_EnableADCTriggerPrescale(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Prescale, uint32_t u32PrescaleCnt);
void EPWM_DisableADCTriggerPrescale(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearADCTriggerFlag(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t EPWM_GetADCTriggerFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableDACTrigger(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void EPWM_DisableDACTrigger(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearDACTriggerFlag(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t EPWM_GetDACTriggerFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultBrake(EPWM_T *epwm, uint32_t u32ChannelMask, uint32_t u32LevelMask, uint32_t u32BrakeSource);
void EPWM_EnableCapture(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_DisableCapture(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_EnableOutput(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_DisableOutput(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_EnablePDMA(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32RisingFirst, uint32_t u32Mode);
void EPWM_DisablePDMA(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableDeadZone(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Duration);
void EPWM_DisableDeadZone(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableCaptureInt(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void EPWM_DisableCaptureInt(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void EPWM_ClearCaptureIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t EPWM_GetCaptureIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableDutyInt(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void EPWM_DisableDutyInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearDutyIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
uint32_t EPWM_GetDutyIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultBrakeInt(EPWM_T *epwm, uint32_t u32BrakeSource);
void EPWM_DisableFaultBrakeInt(EPWM_T *epwm, uint32_t u32BrakeSource);
void EPWM_ClearFaultBrakeIntFlag(EPWM_T *epwm, uint32_t u32BrakeSource);
uint32_t EPWM_GetFaultBrakeIntFlag(EPWM_T *epwm, uint32_t u32BrakeSource);
void EPWM_EnablePeriodInt(EPWM_T *epwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void EPWM_DisablePeriodInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearPeriodIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
uint32_t EPWM_GetPeriodIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableZeroInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_DisableZeroInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearZeroIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
uint32_t EPWM_GetZeroIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableAcc(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32IntFlagCnt, uint32_t u32IntAccSrc);
void EPWM_DisableAcc(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableAccInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_DisableAccInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearAccInt(EPWM_T *epwm, uint32_t u32ChannelNum);
uint32_t EPWM_GetAccInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableAccPDMA(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_DisableAccPDMA(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableAccStopMode(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_DisableAccStopMode(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearFTDutyIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
uint32_t EPWM_GetFTDutyIntFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableLoadMode(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void EPWM_DisableLoadMode(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void EPWM_ConfigSyncPhase(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32SyncSrc, uint32_t u32Direction, uint32_t u32StartPhase);
void EPWM_EnableSyncPhase(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_DisableSyncPhase(EPWM_T *epwm, uint32_t u32ChannelMask);
void EPWM_EnableSyncNoiseFilter(EPWM_T *epwm, uint32_t u32ClkCnt, uint32_t u32ClkDivSel);
void EPWM_DisableSyncNoiseFilter(EPWM_T *epwm);
void EPWM_EnableSyncPinInverse(EPWM_T *epwm);
void EPWM_DisableSyncPinInverse(EPWM_T *epwm);
void EPWM_SetClockSource(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32ClkSrcSel);
void EPWM_EnableBrakeNoiseFilter(EPWM_T *epwm, uint32_t u32BrakePinNum, uint32_t u32ClkCnt, uint32_t u32ClkDivSel);
void EPWM_DisableBrakeNoiseFilter(EPWM_T *epwm, uint32_t u32BrakePinNum);
void EPWM_EnableBrakePinInverse(EPWM_T *epwm, uint32_t u32BrakePinNum);
void EPWM_DisableBrakePinInverse(EPWM_T *epwm, uint32_t u32BrakePinNum);
void EPWM_SetBrakePinSource(EPWM_T *epwm, uint32_t u32BrakePinNum, uint32_t u32SelAnotherModule);
void EPWM_SetLeadingEdgeBlanking(EPWM_T *epwm, uint32_t u32TrigSrcSel, uint32_t u32TrigType, uint32_t u32BlankingCnt, uint32_t u32BlankingEnable);
uint32_t EPWM_GetWrapAroundFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearWrapAroundFlag(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultDetect(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32AfterPrescaler, uint32_t u32ClkSel);
void EPWM_DisableFaultDetect(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultDetectOutput(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_DisableFaultDetectOutput(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultDetectDeglitch(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32DeglitchSmpCycle);
void EPWM_DisableFaultDetectDeglitch(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultDetectMask(EPWM_T *epwm, uint32_t u32ChannelNum, uint32_t u32MaskCnt);
void EPWM_DisableFaultDetectMask(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_EnableFaultDetectInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_DisableFaultDetectInt(EPWM_T *epwm, uint32_t u32ChannelNum);
void EPWM_ClearFaultDetectInt(EPWM_T *epwm, uint32_t u32ChannelNum);
uint32_t EPWM_GetFaultDetectInt(EPWM_T *epwm, uint32_t u32ChannelNum);

   

   

   







 
#line 687 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"
 






 











 



 



 

 
 
 






 
 
 




#line 70 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"







 
 
 
#line 86 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"


 
 
 


   

extern int32_t g_EADC_i32ErrCode;



 
 
 
 







 










 








 











 










 










 









 









 









 











 










 











 











 











 











 











 









 









 









 









 









 











 









 











 










 









 









 









 









 









 
















 
#line 450 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"















 
#line 476 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"















 
#line 502 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"















 
#line 528 "..\\..\\..\\..\\Library\\StdDriver\\inc\\eadc.h"








 









 











 









 








 








 








 








 


 
 
 
void EADC_Open(EADC_T *eadc, uint32_t u32InputMode);
void EADC_Close(EADC_T *eadc);
void EADC_ConfigSampleModule(EADC_T *eadc, uint32_t u32ModuleNum, uint32_t u32TriggerSrc, uint32_t u32Channel);
void EADC_SetTriggerDelayTime(EADC_T *eadc, uint32_t u32ModuleNum, uint32_t u32TriggerDelayTime, uint32_t u32DelayClockDivider);
void EADC_SetExtendSampleTime(EADC_T *eadc, uint32_t u32ModuleNum, uint32_t u32ExtendSampleTime);

   

   

   







 
#line 688 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"
 






 











 



 



 
#line 36 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"

 
 
 




 
 
 



 
 
 





 
 
 





 
 
 
#line 76 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"

 
 
 



 
 
 



 
 
 



 
 
 






   




 














 










 









 









 








 








 












 













 










 








 











 








 












 









 






























 
#line 308 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"


 
 
 
uint32_t BPWM_ConfigCaptureChannel(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32UnitTimeNsec, uint32_t u32CaptureEdge);
uint32_t BPWM_ConfigOutputChannel(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Frequency, uint32_t u32DutyCycle);
void BPWM_Start(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_Stop(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_ForceStop(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableADCTrigger(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void BPWM_DisableADCTrigger(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearADCTriggerFlag(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t BPWM_GetADCTriggerFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableCapture(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_DisableCapture(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableOutput(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_DisableOutput(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableCaptureInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void BPWM_DisableCaptureInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void BPWM_ClearCaptureIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t BPWM_GetCaptureIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableDutyInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void BPWM_DisableDutyInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearDutyIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetDutyIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnablePeriodInt(BPWM_T *bpwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void BPWM_DisablePeriodInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearPeriodIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetPeriodIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableZeroInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_DisableZeroInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearZeroIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetZeroIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableLoadMode(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void BPWM_DisableLoadMode(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void BPWM_SetClockSource(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32ClkSrcSel);
uint32_t BPWM_GetWrapAroundFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearWrapAroundFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);


   

   

   







 
#line 689 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wdt.h"
 






 











 



 



 
 
 
 
#line 40 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wdt.h"

 
 
 





 
 
 


   




 










 











 











 












 












 












 














 


 
static __inline void WDT_Close(void);
static __inline void WDT_EnableInt(void);
static __inline void WDT_DisableInt(void);









 
static __inline void WDT_Close(void)
{
    ((WDT_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x00000UL))->CTL = 0UL;
    return;
}









 
static __inline void WDT_EnableInt(void)
{
    ((WDT_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x00000UL))->CTL |= (0x1ul << (6));
    return;
}









 
static __inline void WDT_DisableInt(void)
{
     
    ((WDT_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x00000UL))->CTL &= ~((0x1ul << (6)) | (0x1ul << (2)) | (0x1ul << (3)) | (0x1ul << (5)));
    return;
}

void WDT_Open(uint32_t u32TimeoutInterval, uint32_t u32ResetDelay, uint32_t u32EnableReset, uint32_t u32EnableWakeup);

   

   

   







 
#line 690 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wwdt.h"
 






 











 



 



 
 
 
 
#line 48 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wwdt.h"

 
 
 


   




 










 











 












 












 











 














 


void WWDT_Open(uint32_t u32PreScale, uint32_t u32CmpValue, uint32_t u32EnableInt);

   

   

   







 
#line 691 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\opa.h"
 






 











 



 



 




   



 

 
 
 
static __inline int32_t OPA_Calibration(OPA_T *opa, uint32_t u32OpaNum, uint32_t u32ClockSel, uint32_t u32LevelSel);









 









 









 









 









 









 









 










 









 
















 
static __inline int32_t OPA_Calibration(OPA_T *opa,
                                        uint32_t u32OpaNum,
                                        uint32_t u32ClockSel,
                                        uint32_t u32RefVol)
{
    uint32_t u32CALResult;
    int32_t i32Ret = 0L;

    (opa)->CALCTL = (((opa)->CALCTL) & ~((0x3ul << (4)) << (u32OpaNum << 1)));
    (opa)->CALCTL = (((opa)->CALCTL) & ~((0x1ul << (16)) << (u32OpaNum))) | (((u32RefVol) << (16)) << (u32OpaNum));
    (opa)->CALCTL |= ((0x1ul << (0)) << (u32OpaNum));
    while((opa)->CALCTL & ((0x1ul << (0)) << (u32OpaNum))) {}

    u32CALResult = ((opa)->CALST >> ((u32OpaNum)*4U)) & ((0x1ul << (1))|(0x1ul << (2)));
    if (u32CALResult == 0U)
    {
        i32Ret = 0L;
    }
    else if (u32CALResult == (0x1ul << (1)))
    {
        i32Ret = -2L;
    }
    else if (u32CALResult == (0x1ul << (2)))
    {
        i32Ret = -1L;
    }
    else if (u32CALResult == ((0x1ul << (1))|(0x1ul << (2))))
    {
        i32Ret = -3L;
    }

    return i32Ret;
}






 






   

   

   







 
#line 692 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\crc.h"
 






 











 



 



 
 
 
 





 
 
 





 
 
 




   




 













 











 











 


void CRC_Open(uint32_t u32Mode, uint32_t u32Attribute, uint32_t u32Seed, uint32_t u32DataLen);
uint32_t CRC_GetChecksum(void);

   

   

   







 
#line 693 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ebi.h"
 






 











 



 



 
 
 
 





 
 
 




 
 
 



 
 
 



 
 
 
#line 67 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ebi.h"

#line 75 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ebi.h"





   




 










 












 











 












 











 












 











 












 











 












 











 












 











 












 











 












 











 












 











 











 


void EBI_Open(uint32_t u32Bank, uint32_t u32DataWidth, uint32_t u32TimingClass, uint32_t u32BusMode, uint32_t u32CSActiveLevel);
void EBI_Close(uint32_t u32Bank);
void EBI_SetBusTiming(uint32_t u32Bank, uint32_t u32TimingConfig, uint32_t u32MclkDiv);

   

   

   







 
#line 694 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_i2c.h"
 






 











 



 



 

 
 
 
enum UI2C_MASTER_EVENT
{
    MASTER_SEND_ADDRESS = 10,     
    MASTER_SEND_H_WR_ADDRESS,     
    MASTER_SEND_H_RD_ADDRESS,     
    MASTER_SEND_L_ADDRESS,        
    MASTER_SEND_DATA,             
    MASTER_SEND_REPEAT_START,     
    MASTER_READ_DATA,             
    MASTER_STOP,                  
    MASTER_SEND_START             
};

 
 
 
enum UI2C_SLAVE_EVENT
{
    SLAVE_ADDRESS_ACK = 100,       
    SLAVE_H_WR_ADDRESS_ACK,        
    SLAVE_L_WR_ADDRESS_ACK,        
    SLAVE_GET_DATA,                
    SLAVE_SEND_DATA,               
    SLAVE_H_RD_ADDRESS_ACK,        
    SLAVE_L_RD_ADDRESS_ACK         
};

 
 
 





 
 
 



 
 
 



 
 
 
#line 90 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_i2c.h"

   




 











 











 











 











 












 












 












 











 











 











 











 

















 

















 

















 



uint32_t UI2C_Open(UI2C_T *ui2c, uint32_t u32BusClock);
void UI2C_Close(UI2C_T *ui2c);
void UI2C_ClearTimeoutFlag(UI2C_T *ui2c);
void UI2C_Trigger(UI2C_T *ui2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Ptrg, uint8_t u8Ack);
void UI2C_DisableInt(UI2C_T *ui2c, uint32_t u32Mask);
void UI2C_EnableInt(UI2C_T *ui2c, uint32_t u32Mask);
uint32_t UI2C_GetBusClockFreq(UI2C_T *ui2c);
uint32_t UI2C_SetBusClockFreq(UI2C_T *ui2c, uint32_t u32BusClock);
uint32_t UI2C_GetIntFlag(UI2C_T *ui2c, uint32_t u32Mask);
void UI2C_ClearIntFlag(UI2C_T* ui2c, uint32_t u32Mask);
uint32_t UI2C_GetData(UI2C_T *ui2c);
void UI2C_SetData(UI2C_T *ui2c, uint8_t u8Data);
void UI2C_SetSlaveAddr(UI2C_T *ui2c, uint8_t u8SlaveNo, uint16_t u16SlaveAddr, uint8_t u8GCMode);
void UI2C_SetSlaveAddrMask(UI2C_T *ui2c, uint8_t u8SlaveNo, uint16_t u16SlaveAddrMask);
void UI2C_EnableTimeout(UI2C_T *ui2c, uint32_t u32TimeoutCnt);
void UI2C_DisableTimeout(UI2C_T *ui2c);
void UI2C_EnableWakeup(UI2C_T *ui2c, uint8_t u8WakeupMode);
void UI2C_DisableWakeup(UI2C_T *ui2c);
uint8_t UI2C_WriteByte(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t data);
uint32_t UI2C_WriteMultiBytes(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_WriteByteOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data);
uint32_t UI2C_WriteMultiBytesOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_WriteByteTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data);
uint32_t UI2C_WriteMultiBytesTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_ReadByte(UI2C_T *ui2c, uint8_t u8SlaveAddr);
uint32_t UI2C_ReadMultiBytes(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t *rdata, uint32_t u32rLen);
uint8_t UI2C_ReadByteOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr);
uint32_t UI2C_ReadMultiBytesOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t *rdata, uint32_t u32rLen);
uint8_t UI2C_ReadByteTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr);
uint32_t UI2C_ReadMultiBytesTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t *rdata, uint32_t u32rLen);

   

   

   







 
#line 695 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\scuart.h"
 






 











 



 



 














   

extern int32_t g_SCUART_i32ErrCode;



 

 






 









 









 








 









 









 









 


 






 









 










 










 









 


 











 












 














 











 










 











 


void SCUART_Close(SC_T* sc);
uint32_t SCUART_Open(SC_T* sc, uint32_t u32baudrate);
uint32_t SCUART_Read(SC_T* sc, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
uint32_t SCUART_SetLineConfig(SC_T* sc, uint32_t u32Baudrate, uint32_t u32DataWidth, uint32_t u32Parity, uint32_t  u32StopBits);
void SCUART_SetTimeoutCnt(SC_T* sc, uint32_t u32TOC);
uint32_t SCUART_Write(SC_T* sc,uint8_t pu8TxBuf[], uint32_t u32WriteBytes);

   

   

   





#line 696 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"
 






 











 



 



 
#line 35 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"

#line 46 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"


   




 


















 



















 








 
#line 110 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"








 
#line 127 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"







 
#line 143 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"







 
#line 159 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sc.h"






 








 









 


 
static __inline void SC_SetTxRetry(SC_T *sc, uint32_t u32Count);
static __inline void  SC_SetRxRetry(SC_T *sc, uint32_t u32Count);






 
static __inline void SC_SetTxRetry(SC_T *sc, uint32_t u32Count)
{
    while((sc)->CTL & (0x1ul << (30)))
    {
        ;
    }
     
    (sc)->CTL &= ~((0x7ul << (20)) | (0x1ul << (23)));

    if((u32Count) != 0UL)
    {
        while((sc)->CTL & (0x1ul << (30)))
        {
            ;
        }
        (sc)->CTL |= (((u32Count) - 1UL) << (20)) | (0x1ul << (23));
    }
}






 
static __inline void  SC_SetRxRetry(SC_T *sc, uint32_t u32Count)
{
    while((sc)->CTL & (0x1ul << (30)))
    {
        ;
    }
     
    (sc)->CTL &= ~((0x7ul << (16)) | (0x1ul << (19)));

    if((u32Count) != 0UL)
    {
        while((sc)->CTL & (0x1ul << (30)))
        {
            ;
        }
        (sc)->CTL |= (((u32Count) - 1UL) << (16)) | (0x1ul << (19));
    }

}


uint32_t SC_IsCardInserted(SC_T *sc);
void SC_ClearFIFO(SC_T *sc);
void SC_Close(SC_T *sc);
void SC_Open(SC_T *sc, uint32_t u32CardDet, uint32_t u32PWR);
void SC_ResetReader(SC_T *sc);
void SC_SetBlockGuardTime(SC_T *sc, uint32_t u32BGT);
void SC_SetCharGuardTime(SC_T *sc, uint32_t u32CGT);
void SC_StopAllTimer(SC_T *sc);
void SC_StartTimer(SC_T *sc, uint32_t u32TimerNum, uint32_t u32Mode, uint32_t u32ETUCount);
void SC_StopTimer(SC_T *sc, uint32_t u32TimerNum);
uint32_t SC_GetInterfaceClock(SC_T *sc);


   

   

   







 
#line 697 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"
 






 











 



 



 













 
#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"

 
#line 63 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"


 





 



 





 



 



 



 
#line 101 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"

   




 







 








 








 








 








 








 








 








 









 









 









 








 









 








 








 








 








 










 








 








 









 









 








 








 


 
static __inline void SPII2S_ENABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask);
static __inline void SPII2S_DISABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask);
static __inline void SPII2S_SET_MONO_RX_CHANNEL(SPI_T *i2s, uint32_t u32Ch);









 
static __inline void SPII2S_ENABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == (0U))
    {
        i2s->I2SCTL |= (0x1ul << (16));
    }
    else
    {
        i2s->I2SCTL |= (0x1ul << (17));
    }
}









 
static __inline void SPII2S_DISABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == (0U))
    {
        i2s->I2SCTL &= ~(0x1ul << (16));
    }
    else
    {
        i2s->I2SCTL &= ~(0x1ul << (17));
    }
}







 








 








 








 








 








 








 








 








 








 








 








 











 
static __inline void SPII2S_SET_MONO_RX_CHANNEL(SPI_T *i2s, uint32_t u32Ch)
{
    u32Ch == (0x1ul << (23)) ?
    (i2s->I2SCTL |= (0x1ul << (23))) :
    (i2s->I2SCTL &= ~(0x1ul << (23)));
}








 








 









 










 








 








 




 
uint32_t SPI_Open(SPI_T *spi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void SPI_Close(SPI_T *spi);
void SPI_ClearRxFIFO(SPI_T *spi);
void SPI_ClearTxFIFO(SPI_T *spi);
void SPI_DisableAutoSS(SPI_T *spi);
void SPI_EnableAutoSS(SPI_T *spi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t SPI_SetBusClock(SPI_T *spi, uint32_t u32BusClock);
void SPI_SetFIFO(SPI_T *spi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
uint32_t SPI_GetBusClock(SPI_T *spi);
void SPI_EnableInt(SPI_T *spi, uint32_t u32Mask);
void SPI_DisableInt(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetIntFlag(SPI_T *spi, uint32_t u32Mask);
void SPI_ClearIntFlag(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetStatus(SPI_T *spi, uint32_t u32Mask);

uint32_t SPII2S_Open(SPI_T *i2s, uint32_t u32MasterSlave, uint32_t u32SampleRate, uint32_t u32WordWidth, uint32_t u32Channels, uint32_t u32DataFormat);
void SPII2S_Close(SPI_T *i2s);
void SPII2S_EnableInt(SPI_T *i2s, uint32_t u32Mask);
void SPII2S_DisableInt(SPI_T *i2s, uint32_t u32Mask);
uint32_t SPII2S_EnableMCLK(SPI_T *i2s, uint32_t u32BusClock);
void SPII2S_DisableMCLK(SPI_T *i2s);
void SPII2S_SetFIFO(SPI_T *i2s, uint32_t u32TxThreshold, uint32_t u32RxThreshold);


   

   

   







 
#line 698 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qspi.h"
 






 











 



 



 













 
#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qspi.h"

 
#line 63 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qspi.h"

   




 







 








 








 








 








 








 








 








 









 









 









 








 









 








 








 








 








 










 








 








 









 









 








 








 







 







 







 







 







 







 





 
uint32_t QSPI_Open(QSPI_T *qspi, uint32_t u32MasterSlave, uint32_t u32QSPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void QSPI_Close(QSPI_T *qspi);
void QSPI_ClearRxFIFO(QSPI_T *qspi);
void QSPI_ClearTxFIFO(QSPI_T *qspi);
void QSPI_DisableAutoSS(QSPI_T *qspi);
void QSPI_EnableAutoSS(QSPI_T *qspi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t QSPI_SetBusClock(QSPI_T *qspi, uint32_t u32BusClock);
void QSPI_SetFIFO(QSPI_T *qspi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
uint32_t QSPI_GetBusClock(QSPI_T *qspi);
void QSPI_EnableInt(QSPI_T *qspi, uint32_t u32Mask);
void QSPI_DisableInt(QSPI_T *qspi, uint32_t u32Mask);
uint32_t QSPI_GetIntFlag(QSPI_T *qspi, uint32_t u32Mask);
void QSPI_ClearIntFlag(QSPI_T *qspi, uint32_t u32Mask);
uint32_t QSPI_GetStatus(QSPI_T *qspi, uint32_t u32Mask);


   

   

   







 
#line 699 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\can.h"
 






 











 



 



 
 
 
 



 
 
 



 
 
 



 
 
 



   




 


 
typedef struct
{
    uint32_t  IdType;        
    uint32_t  FrameType;     
    uint32_t  Id;            
    uint8_t   DLC;           
    uint8_t   Data[8];       
} STR_CANMSG_T;



 
typedef struct
{
    uint8_t   u8Xtd;       
    uint8_t   u8Dir;       
    uint32_t  u32Id;       
    uint8_t   u8IdType;    
} STR_CANMASK_T;

   

 

 



 









 










 












 












 











 











 













 



 
 
 
uint32_t CAN_SetBaudRate(CAN_T *tCAN, uint32_t u32BaudRate);
uint32_t CAN_Open(CAN_T *tCAN, uint32_t u32BaudRate, uint32_t u32Mode);
void CAN_Close(CAN_T *tCAN);
void CAN_CLR_INT_PENDING_BIT(CAN_T *tCAN, uint8_t u32MsgNum);
void CAN_EnableInt(CAN_T *tCAN, uint32_t u32Mask);
void CAN_DisableInt(CAN_T *tCAN, uint32_t u32Mask);
int32_t CAN_Transmit(CAN_T *tCAN, uint32_t u32MsgNum, STR_CANMSG_T* pCanMsg);
int32_t CAN_Receive(CAN_T *tCAN, uint32_t u32MsgNum, STR_CANMSG_T* pCanMsg);
int32_t CAN_SetMultiRxMsg(CAN_T *tCAN, uint32_t u32MsgNum, uint32_t u32MsgCount, uint32_t u32IDType, uint32_t u32ID);
int32_t CAN_SetRxMsg(CAN_T *tCAN, uint32_t u32MsgNum, uint32_t u32IDType, uint32_t u32ID);
int32_t CAN_SetRxMsgAndMsk(CAN_T *tCAN, uint32_t u32MsgNum, uint32_t u32IDType, uint32_t u32ID, uint32_t u32IDMask);
int32_t CAN_SetTxMsg(CAN_T *tCAN, uint32_t u32MsgNum, STR_CANMSG_T* pCanMsg);
int32_t CAN_TriggerTxMsg(CAN_T  *tCAN, uint32_t u32MsgNum);
int32_t CAN_BasicSendMsg(CAN_T *tCAN, STR_CANMSG_T* pCanMsg);
int32_t CAN_BasicReceiveMsg(CAN_T *tCAN, STR_CANMSG_T* pCanMsg);
void CAN_EnterInitMode(CAN_T *tCAN, uint8_t u8Mask);
void CAN_EnterTestMode(CAN_T *tCAN, uint8_t u8TestMask);
void CAN_LeaveTestMode(CAN_T *tCAN);
uint32_t CAN_GetCANBitRate(CAN_T *tCAN);
uint32_t CAN_IsNewDataReceived(CAN_T *tCAN, uint8_t u8MsgObj);
void CAN_LeaveInitMode(CAN_T *tCAN);
int32_t CAN_SetRxMsgObjAndMsk(CAN_T *tCAN, uint8_t u8MsgObj, uint8_t u8idType, uint32_t u32id, uint32_t u32idmask, uint8_t u8singleOrFifoLast);
int32_t CAN_SetRxMsgObj(CAN_T *tCAN, uint8_t u8MsgObj, uint8_t u8idType, uint32_t u32id, uint8_t u8singleOrFifoLast);
void CAN_WaitMsg(CAN_T *tCAN);
int32_t CAN_ReadMsgObj(CAN_T *tCAN, uint8_t u8MsgObj, uint8_t u8Release, STR_CANMSG_T* pCanMsg);

   

   

   







 
#line 700 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"
 






 











 



 



 
 
 
 



 
 
 





 
 
 
#line 54 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"

 
 
 
#line 65 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"

 
 
 





#line 81 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"












#line 101 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"





   




 


 
typedef struct
{
    uint32_t u32Year;            
    uint32_t u32Month;           
    uint32_t u32Day;             
    uint32_t u32DayOfWeek;       
    uint32_t u32Hour;            
    uint32_t u32Minute;          
    uint32_t u32Second;          
    uint32_t u32TimeScale;       
    uint32_t u32AmPm;            
} S_RTC_TIME_DATA_T;

   




 











 











 











 

















 












 












 












 
















 













 














 


 
static __inline void RTC_WaitAccessEnable(void);









 
static __inline void RTC_WaitAccessEnable(void)
{
    uint32_t u32TimeOutCount = SystemCoreClock; 
    uint32_t i = 0;

    while((((RTC_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x01000UL))->RWEN & (0x1ul << (24))) == (0x1ul << (24)))
    {
        i++;
        if(i > u32TimeOutCount) break;
    }

    if(!(((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->CSERVER & 0x1))
    {
         
        ((RTC_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x01000UL))->RWEN = 0x0000A965UL;
    }

     
    while((((RTC_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x01000UL))->RWEN & (0x1ul << (16))) == (uint32_t)0x0)
    {
        i++;
        if(i > u32TimeOutCount) break;
    }
}

int32_t RTC_Open(S_RTC_TIME_DATA_T *sPt);
void RTC_Close(void);
void RTC_32KCalibration(int32_t i32FrequencyX10000);
void RTC_GetDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_GetAlarmDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetAlarmDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day, uint32_t u32DayOfWeek);
void RTC_SetTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day);
void RTC_SetAlarmTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDateMask(uint8_t u8IsTenYMsk, uint8_t u8IsYMsk, uint8_t u8IsTenMMsk, uint8_t u8IsMMsk, uint8_t u8IsTenDMsk, uint8_t u8IsDMsk);
void RTC_SetAlarmTimeMask(uint8_t u8IsTenHMsk, uint8_t u8IsHMsk, uint8_t u8IsTenMMsk, uint8_t u8IsMMsk, uint8_t u8IsTenSMsk, uint8_t u8IsSMsk);
uint32_t RTC_GetDayOfWeek(void);
void RTC_SetTickPeriod(uint32_t u32TickSelection);
void RTC_EnableInt(uint32_t u32IntFlagMask);
void RTC_DisableInt(uint32_t u32IntFlagMask);
void RTC_EnableSpareAccess(void);
void RTC_DisableSpareRegister(void);
void RTC_StaticTamperEnable(uint32_t u32TamperSelect, uint32_t u32DetecLevel, uint32_t u32DebounceEn);
void RTC_StaticTamperDisable(uint32_t u32TamperSelect);
void RTC_DynamicTamperEnable(uint32_t u32PairSel, uint32_t u32DebounceEn, uint32_t u32Pair1Source, uint32_t u32Pair2Source);
void RTC_DynamicTamperDisable(uint32_t u32PairSel);
void RTC_DynamicTamperConfig(uint32_t u32ChangeRate, uint32_t u32SeedReload, uint32_t u32RefPattern, uint32_t u32Seed);

   

   

   







 
#line 701 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_uart.h"
 






 












 



 



 

 
 
 





 
 
 







 
 
 
#line 59 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_uart.h"


   




 












 












 













 













 














 














 












 













 













 













 













 















 















 














 














 

















 

















 












 






















 












 














 













 












 











 











 











 











 















 














 





void UUART_ClearIntFlag(UUART_T* uuart, uint32_t u32Mask);
uint32_t UUART_GetIntFlag(UUART_T* uuart, uint32_t u32Mask);
void UUART_Close(UUART_T* uuart);
void UUART_DisableInt(UUART_T*  uuart, uint32_t u32Mask);
void UUART_EnableInt(UUART_T*  uuart, uint32_t u32Mask);
uint32_t UUART_Open(UUART_T* uuart, uint32_t u32baudrate);
uint32_t UUART_Read(UUART_T* uuart, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
uint32_t UUART_SetLine_Config(UUART_T* uuart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t u32stop_bits);
uint32_t UUART_Write(UUART_T* uuart, uint8_t pu8TxBuf[], uint32_t u32WriteBytes);
void UUART_EnableWakeup(UUART_T* uuart, uint32_t u32WakeupMode);
void UUART_DisableWakeup(UUART_T* uuart);
void UUART_EnableFlowCtrl(UUART_T* uuart);
void UUART_DisableFlowCtrl(UUART_T* uuart);


   

   

   







 
#line 702 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sdh.h"
 






 
#line 10 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sdh.h"












 



 




 






 



 






 
#line 60 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sdh.h"










   



 
typedef struct SDH_info_t
{
    unsigned char   IsCardInsert;    
    unsigned char   R3Flag;
    unsigned char   R7Flag;
    unsigned char volatile DataReadyFlag;
    unsigned int    CardType;        
    unsigned int    RCA;             
    unsigned int    totalSectorN;    
    unsigned int    diskSize;        
    int             sectorSize;      
    unsigned char   *dmabuf;
} SDH_INFO_T;                        

   

 
extern SDH_INFO_T SD0, SD1;
 



 












 












 

















 














 











 









 



void SDH_Open(SDH_T *sdh, uint32_t u32CardDetSrc);
uint32_t SDH_Probe(SDH_T *sdh);
uint32_t SDH_Read(SDH_T *sdh, uint8_t *pu8BufAddr, uint32_t u32StartSec, uint32_t u32SecCount);
uint32_t SDH_Write(SDH_T *sdh, uint8_t *pu8BufAddr, uint32_t u32StartSec, uint32_t u32SecCount);

uint32_t SDH_CardDetection(SDH_T *sdh);
int32_t SDH_Open_Disk(SDH_T *sdh, uint32_t u32CardDetSrc);
void SDH_Close_Disk(SDH_T *sdh);


   

   

   






 
#line 703 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"
 






 











 



 



 
typedef struct s_usbd_info
{
    uint8_t *gu8DevDesc;             
    uint8_t *gu8ConfigDesc;          
    uint8_t **gu8StringDesc;         
    uint8_t **gu8HidReportDesc;      
    uint8_t *gu8BosDesc;             
    uint32_t *gu32HidReportSize;     
    uint32_t *gu32ConfigHidDescIdx;  

} S_USBD_INFO_T;   

extern const S_USBD_INFO_T gsInfo;

   






 



#line 66 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 
 




 
#line 85 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 
#line 98 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 



 



 
#line 118 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 







 


 

 
 
 














#line 166 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"
















   




 










 













 












 











 











 











 











 











 











 











 














 











 














 











 















 












 











 












 












 













 











 













 













 











 











 











 












 















 
static __inline void USBD_MemCopy(uint8_t dest[], uint8_t src[], uint32_t size)
{
    uint32_t volatile i=0ul;

    while(size--)
    {
        dest[i] = src[i];
        i++;
    }
}










 
static __inline void USBD_SetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 12ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x80000UL))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x80000UL))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg | (0x1ul << (1)));
            break;
        }
    }
}









 
static __inline void USBD_ClearStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 12ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x80000UL))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x80000UL))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg & ~(0x1ul << (1)));
            break;
        }
    }
}











 
static __inline uint32_t USBD_GetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 12ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x80000UL))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x80000UL))->EP[0].CFGP;  
            break;
        }
    }

    return ((*((volatile uint32_t *)(u32CfgAddr))) & (0x1ul << (1)));
}


extern volatile uint8_t g_usbd_RemoteWakeupEn;


typedef void (*VENDOR_REQ)(void);            
typedef void (*CLASS_REQ)(void);             
typedef void (*SET_INTERFACE_REQ)(uint32_t u32AltInterface);     
typedef void (*SET_CONFIG_CB)(void);        


 
void USBD_Open(const S_USBD_INFO_T *param, CLASS_REQ pfnClassReq, SET_INTERFACE_REQ pfnSetInterface);
void USBD_Start(void);
void USBD_GetSetupPacket(uint8_t *buf);
void USBD_ProcessSetupPacket(void);
void USBD_StandardRequest(void);
void USBD_PrepareCtrlIn(uint8_t pu8Buf[], uint32_t u32Size);
void USBD_CtrlIn(void);
void USBD_PrepareCtrlOut(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlOut(void);
void USBD_SwReset(void);
void USBD_SetVendorRequest(VENDOR_REQ pfnVendorReq);
void USBD_SetConfigCallback(SET_CONFIG_CB pfnSetConfigCallback);
void USBD_LockEpStall(uint32_t u32EpBitmap);

   

   

   







 
#line 704 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hsusbd.h"
 






 











 



 



 
 






#line 49 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hsusbd.h"

 
 





 
#line 68 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hsusbd.h"

 
#line 77 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hsusbd.h"


   



 


typedef struct HSUSBD_CMD_STRUCT
{
    uint8_t  bmRequestType;
    uint8_t  bRequest;
    uint16_t wValue;
    uint16_t wIndex;
    uint16_t wLength;

} S_HSUSBD_CMD_T;  




typedef struct s_hsusbd_info
{
    uint8_t *gu8DevDesc;             
    uint8_t *gu8ConfigDesc;          
    uint8_t **gu8StringDesc;         
    uint8_t *gu8QualDesc;            
    uint8_t *gu8FullConfigDesc;      
    uint8_t *gu8HSOtherConfigDesc;   
    uint8_t *gu8FSOtherConfigDesc;   
    uint8_t **gu8HidReportDesc;      
    uint32_t *gu32HidReportSize;     
    uint32_t *gu32ConfigHidDescIdx;  

} S_HSUSBD_INFO_T;  


   

 
extern uint32_t g_u32HsEpStallLock;
extern uint8_t volatile g_hsusbd_Configured;
extern uint8_t g_hsusbd_ShortPacket;
extern uint8_t g_hsusbd_CtrlZero;
extern uint8_t g_hsusbd_UsbAddr;
extern uint32_t volatile g_hsusbd_DmaDone;
extern uint32_t g_hsusbd_CtrlInSize;
extern S_HSUSBD_INFO_T gsHSInfo;
extern S_HSUSBD_CMD_T gUsbCmd;
 



 

#line 159 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hsusbd.h"







 
static __inline void HSUSBD_MemCopy(uint8_t u8Dst[], uint8_t u8Src[], uint32_t u32Size)
{
    uint32_t i = 0ul;

    while (u32Size--)
    {
        u8Dst[i] = u8Src[i];
        i++;
    }
}





 
static __inline void HSUSBD_ResetDMA(void)
{
    ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->DMACNT = 0ul;
    ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->DMACTL = 0x80ul;
    ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->DMACTL = 0x00ul;
}






 
static __inline void HSUSBD_SetEpBufAddr(uint32_t u32Ep, uint32_t u32Base, uint32_t u32Len)
{
    if (u32Ep == 0xfful)
    {
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->CEPBUFST = u32Base;
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->CEPBUFEND   = u32Base + u32Len - 1ul;
    }
    else
    {
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPBUFST = u32Base;
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPBUFEND = u32Base + u32Len - 1ul;
    }
}








 
static __inline void HSUSBD_ConfigEp(uint32_t u32Ep, uint32_t u32EpNum, uint32_t u32EpType, uint32_t u32EpDir)
{
    if (u32EpType == ((uint32_t)0x00000002ul))
    {
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL = (((uint32_t)0x00000001ul)|((uint32_t)0x00000000ul));
    }
    else if (u32EpType == ((uint32_t)0x00000004ul))
    {
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL = (((uint32_t)0x00000001ul)|((uint32_t)0x00000002ul));
    }
    else if (u32EpType == ((uint32_t)0x00000006ul))
    {
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL = (((uint32_t)0x00000001ul)|((uint32_t)0x00000004ul));
    }

    ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPCFG = (u32EpType|u32EpDir|((uint32_t)0x00000001ul)|(u32EpNum << 4));
}






 
static __inline void HSUSBD_SetEpStall(uint32_t u32Ep)
{
    if (u32Ep == 0xfful)
    {
        (((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->CEPCTL = (((uint32_t)0x00000002ul)));
    }
    else
    {
        ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL = (((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL & 0xf7ul) | ((uint32_t)0x00000010ul);
    }
}








 
static __inline void HSUSBD_SetStall(uint32_t u32EpNum)
{
    uint32_t i;

    if (u32EpNum == 0ul)
    {
        (((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->CEPCTL = (((uint32_t)0x00000002ul)));
    }
    else
    {
        for (i=0ul; i<12ul; i++)
        {
            if (((((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPCFG & 0xf0ul) >> 4) == u32EpNum)
            {
                ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPRSPCTL = (((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPRSPCTL & 0xf7ul) | ((uint32_t)0x00000010ul);
            }
        }
    }
}






 
static __inline void  HSUSBD_ClearEpStall(uint32_t u32Ep)
{
    ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL = ((uint32_t)0x00000008ul);
}








 
static __inline void HSUSBD_ClearStall(uint32_t u32EpNum)
{
    uint32_t i;

    for (i=0ul; i<12ul; i++)
    {
        if (((((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPCFG & 0xf0ul) >> 4) == u32EpNum)
        {
            ((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPRSPCTL = ((uint32_t)0x00000008ul);
        }
    }
}







 
static __inline uint32_t HSUSBD_GetEpStall(uint32_t u32Ep)
{
    return (((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[u32Ep].EPRSPCTL & ((uint32_t)0x00000010ul));
}









 
static __inline uint32_t HSUSBD_GetStall(uint32_t u32EpNum)
{
    uint32_t i;
    uint32_t val = 0ul;

    for (i=0ul; i<12ul; i++)
    {
        if (((((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPCFG & 0xf0ul) >> 4) == u32EpNum)
        {
            val = (((HSUSBD_T *)(((uint32_t)0x40000000) + 0x19000UL))->EP[i].EPRSPCTL & ((uint32_t)0x00000010ul));
            break;
        }
    }
    return val;
}


 
typedef void (*HSUSBD_VENDOR_REQ)(void);  
typedef void (*HSUSBD_CLASS_REQ)(void);  
typedef void (*HSUSBD_SET_INTERFACE_REQ)(uint32_t u32AltInterface);  

void HSUSBD_Open(S_HSUSBD_INFO_T *param, HSUSBD_CLASS_REQ pfnClassReq, HSUSBD_SET_INTERFACE_REQ pfnSetInterface);
void HSUSBD_Start(void);
void HSUSBD_ProcessSetupPacket(void);
void HSUSBD_StandardRequest(void);
void HSUSBD_UpdateDeviceState(void);
void HSUSBD_PrepareCtrlIn(uint8_t pu8Buf[], uint32_t u32Size);
void HSUSBD_CtrlIn(void);
void HSUSBD_CtrlOut(uint8_t pu8Buf[], uint32_t u32Size);
void HSUSBD_SwReset(void);
void HSUSBD_SetVendorRequest(HSUSBD_VENDOR_REQ pfnVendorReq);



   

   

   







 
#line 705 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\otg.h"
 






 











 



 




 



 
 
 






   




 

 
 
 








 








 









 








 








 








 








 








 










 










 





















 





















 





















 





















 














 




   

   

   









 
#line 706 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hsotg.h"
 






 











 



 




 



 
 
 






   




 

 
 
 








 








 









 








 








 








 








 








 










 










 





















 





















 





















 





















 














 




   

   

   









 
#line 707 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\M480.h"








#line 13 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M480\\Include\\NuMicro.h"
 



#line 9 "..\\RunMotor.c"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\lcd.h"






void lcd_write(unsigned char c);
void lcd_init(void);
void lcd_putch(char s);
void lcd_goto(unsigned char y_pos,unsigned char x_pos);
void lcd_puts(unsigned char *str);
void lcd_clear(void);
void lcd_goto(unsigned char y_pos,unsigned char x_pos);
void delaym(unsigned int val);

#line 10 "..\\RunMotor.c"
 
#line 115 "..\\RunMotor.c"

 
#line 124 "..\\RunMotor.c"

 







 
 
 
  



 

nSTATE_SENDSMS STATE_SENDSMS=STATE_NO_SMS;
STATE_MOTOR nSTATE_MOTOR=STATE_MOTOR_OFF;

STATE_MOTOR_PROBLEM nSTATE_MOTOR_PROBLEM=STATE_MOTOR_OK;
STATE_MOTOR_SMS nSTATE_MOTOR_SMS=STATE_NO_MOTOR_SMS;
STATE_MOTOR_ON_SMS nSTATE_MOTOR_ON_SMS=STATE_MOTOR_ON_DEFAULT;
STATE_STATUS_SMS nSTATE_STATUS_SMS=STATUS_MOTOROF_SMS;
STATE_STATUS_ONDELAY_SD nSTATE_STATUS_ONDELAY_SD = STATUS_MOTOR_AT_OFF;
RTC_CURRENT_STATUS nRTC_CURRENT_STATUS = NO_RTC_TIMER;
nDISPLAYMsg DISPLAYMsg = NO_COND;
CYCTimer nCYCTimer = NO_TCOND;


unsigned char PreviousTrip = 0;

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

 
const char ACK[7]="$<U>ì\r";

float     TripVoltage = 0.0,TripCurrent = 0.0,VSPPImbalanceVoltage = 0;


long 			NoElePowerOfTimer = 0,LastDayRunTimer = 0,RunTimerhr,RunTimermin,RunTimersec,RunTimer = 0,MRunTimer = 0,Runflow = 0,MRunflow = 0,
					LastDayRunflow = 0,NoElePowerOfTimerratio = 0; 

 
long 			RemainingTime,RemainingCyclicOnTime,RemainingCyclicOfTime,RemainingGRTCTime,RemainingRTC1Time,RemainingRTC2Time,RemainingRTC3Time,
					RemainingRTC4Time,RemainingDrTime;

 
struct 		MoTr nMoTr;
struct _rtc datetime;

volatile unsigned char cpbrsearchend,cpbrsearchend1,cpbrsearchend2;
static unsigned char SendLowVoltageHighVoltage = 0;
static unsigned char SendSPPLowVoltageHighVoltage = 0;
unsigned int PingHighSmsSendOntimer = 0;
unsigned int PingHighRecheckPinCounter = 0;

 
uint8_t 	Enter=0,enter1=0,enter2=0,MakeRealyOn=0,StartByMobile=0;

int d=0;



struct __SMSstrnumber
{
	char Smsstr[220];
	char Smsnumber[15];
	
}SmsStrNumber[25];
struct __SMSTCPstrnumber
{
	char SmsTCPstr[10];
	
	
}SmsTCPStrNumber[25];

 
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
int8_t DNDSMSFLAG[5];    
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


 
 

int isDtValidLength(const char* timerSetting) {
	   
	
    if (strlen(timerSetting) != 17)
        return 0; 

    
    return 1;
}

int isValidDRTFormat(const char* timerSetting) {
	   int i=0;
    
    if (strlen(timerSetting) != 15)
        return 0;

    
    for (i = 9; i <= 15; i++) {
        if (!((* __rt_ctype_table())[timerSetting[i]] == 32))
            return 0;
    }

    
    return 1;
}
 
int isValidCyclicTimerFormat(const char* timerSetting) {
	   int i=0;
    
    if (strlen(timerSetting) != 4)
        return 0;

    
    for (i = 0; i < 4; i++) {
        if (!((* __rt_ctype_table())[timerSetting[i]] == 32))
            return 0;
    }

    
    return 1;
}
 
void buffer_memsets(void) {
		memset(BigSMS,0,sizeof(BigSMS));
		memset(BigSMS1,0,sizeof(BigSMS));
		memset(BigSMS2,0,sizeof(BigSMS2));
		memset(TpStr,0,sizeof(TpStr));
		memset(Buffer1,0,sizeof(Buffer1));
		memset(buffer,0,sizeof(buffer));		
		memset(StoredPhoneNumber,0,sizeof(StoredPhoneNumber));		
		memset(StoredPhoneSmscode,0,sizeof(StoredPhoneSmscode));		
		memset(StoredPhoneSmscode,0,sizeof(StoredPhoneSmscode));		
		memset(WhoMadeenterRelayOn,0,sizeof(WhoMadeenterRelayOn));		
		memset(DNDSMSFLAG,0,sizeof(DNDSMSFLAG));		
		memset(StrTokStr2,0,sizeof(StrTokStr2));		
		memset(StrTokStr,0,sizeof(StrTokStr));		
		memset((void *)IMEI,0,sizeof(IMEI));		
		memset((void *)lcd_row,0,sizeof(lcd_row));		
		memset(Tracebuffer,0,sizeof(Tracebuffer));		
		memset(SmsNumber,0,sizeof(SmsNumber));		
		memset(StaticSmsString,0,sizeof(StaticSmsString));		
		memset(PhoneNumber,0,sizeof(PhoneNumber));		
		memset(SendSMSString,0,sizeof(SendSMSString));		
		memset(SMS_BUF,0,sizeof(SMS_BUF));		
		memset((void *)HowManySound,0,sizeof(HowManySound));	
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
						PlayNumber=39;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_HIGHVOLTAGE)
			{
						PlaySound =1;
						PlayNumber=38;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_SPP)
			{
						PlaySound =1;
						PlayNumber=49;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_CURRENTSPP)
			{
						PlaySound =1;
						PlayNumber=33;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_STARTER)
			{
						PlaySound =1;
						PlayNumber=46;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_DRYRUN)
			{
						PlaySound =1;
						PlayNumber=36;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						if(nTimerSettings.DrReOnOf == 1)
						{
							PlaySound =1;
							PlayNumber=37;
							HowManySound[HowManySoundToPlay] = PlayNumber;
							HowManySoundToPlay++;
						}
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_OVERLOAD)
			{
						PlaySound =1;
						PlayNumber=43;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_LOWPRESS)
			{
						PlaySound =1;
						PlayNumber=48;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_HIGHPRESS)
			{
						PlaySound =1;
						PlayNumber=48;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_UPPERTANK)
			{
						PlaySound =1;
						PlayNumber=48;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_LOWERTANK)
			{
						PlaySound =1;
						PlayNumber=47;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_MAXTIME)
			{
						PlaySound =1;
						PlayNumber=40;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			else if(nSTATE_MOTOR == STATE_MOTOR_TRIP_OFFDELAY)
			{
						PlaySound =1;
						PlayNumber=35;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						return 1;
			}
			return 0;

}
void CheckDigits(float Value,unsigned char Which,unsigned char *string,int *Len) {
    char TpStr[20];
    int Tp;
    
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
		PlayNumber=30;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;

		CheckDigits(nCurretnCond.BRVoltage,0,TpStr,&len);
		
		for(Tp=0;Tp<=len;Tp++)
		{
			Debug("\r\n*****TpStr[%d] = %d  len = %d*****\n\r",Tp,TpStr[Tp],len);
			
			switch(TpStr[Tp])
			{
				case 0:
					PlayNumber=32;	
					break;
				case 1:
					PlayNumber=20;	
					break;
				case 2:
					PlayNumber=29;	
					break;
				case 3:
					PlayNumber=28;	
					break;
				case 4:
					PlayNumber=13;	
					break;
				case 5:
					PlayNumber=12;	
					break;
				case 6:
					PlayNumber=27;	
					break;
				case 7:
					PlayNumber=26;	
					break;
				case 8:
					PlayNumber=11;	
					break;
				case 9:
					PlayNumber=19;	
					break;	
				case 10:
					PlayNumber=21;	
					break;
				default:
					PlayNumber=19;	
					break;							
			}						
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
		
		PlayNumber=31;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;
		
		PlayNumber=9;	
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
					PlayNumber=32;	
					break;
				case 1:
					PlayNumber=20;	
					break;
				case 2:
					PlayNumber=29;	
					break;
				case 3:
					PlayNumber=28;	
					break;
				case 4:
					PlayNumber=13;	
					break;
				case 5:
					PlayNumber=12;	
					break;
				case 6:
					PlayNumber=27;	
					break;
				case 7:
					PlayNumber=26;	
					break;
				case 8:
					PlayNumber=11;	
					break;
				case 9:
					PlayNumber=19;	
					break;	
				case 10:
					PlayNumber=21;	
					break;
				default:
					PlayNumber=19;	
					break;							
			}						
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
		PlayNumber=4;	
		HowManySound[HowManySoundToPlay] = PlayNumber;
		HowManySoundToPlay++;
	}
	
}
void PlayFeedbackSound(void) {

	unsigned char checkpower;
	
	
	

	switch(nSTATE_STATUS_SMS)
	{
		case STATUS_MOTOROF_SMS:
			{
				switch(nSTATE_STATUS_ONDELAY_SD)
				{
					case STATUS_MOTOR_AT_POWERONDELAY:
					{
						PlaySound =1;
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						PlaySound =1;
						PlayNumber=16;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						PlaySound =1;
						PlayNumber=24;
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_ON_PROPERLY:
					{
						PlaySound =1;
						PlayNumber=16;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;				
						break;
					}
					case STATUS_MOTOR_AT_OFF:
					{
						PlaySound =1;
						PlayNumber=24;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					default:
					{
						PlaySound =1;
						PlayNumber=24;	
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;					
						break;
					}
					
					
					
				}	


				PlaySound =1;
				PlayNumber=16;							
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
			}
			break;
		case STATUS_MOTOR_OFF_TARGET:
			{
				PlaySound =1;
				PlayNumber=15;					
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
					default:
					{
						PlaySound =1;
						PlayNumber=24;	
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
				PlayNumber=22;		
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
				PlayNumber=46;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_MOTOR_TRIP_HIGHPRESS:
		    {
				PlaySound =1;
				PlayNumber=48;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
        case STATUS_MOTOR_TRIP_LOWPRESS:
           {
				PlaySound =1;
				PlayNumber=48;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;		
		case STATUS_MOTOR_UPPERTANK_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=48;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_MOTOR_LOWERTANK_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=47;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
			}
			break;
		case STATUS_MOTOR_DRYRUN_TRIP_SMS:	
			{
				PlaySound =1;
				PlayNumber=36;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				if(nTimerSettings.DrReOnOf == 1)
				{
				PlaySound =1;
				PlayNumber=37;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				
				}
			}
			break;						
		case STATUS_MOTOR_TRIP_OVERLOAD:	
			{
				PlaySound =1;
				PlayNumber=43;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_TRIP_SPP:
			{
				PlaySound =1;
				PlayNumber=49;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_TRIP_REVERSEPHASE:
			{
				PlaySound =1;
				PlayNumber=6;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_TRIP_CURRENTSPP:
			{
				PlaySound =1;
				PlayNumber=33;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_TRIP_LOWVOLTAGE:
			{
				PlaySound =1;
				PlayNumber=39;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_TRIP_HIGHVOLTAGE:
			{
				PlaySound =1;
				PlayNumber=38;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
           case STATUS_MOTOR_GRTCOF_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=44;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
					
			}
			break;	
					
		case STATUS_MOTOR_RTCOF1_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=44;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
					
			}
			break;	
		case STATUS_MOTOR_RTCOF2_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=44;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_RTCOF3_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=44;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;	
		case STATUS_MOTOR_RTCOF4_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=44;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_CYCLIC_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=35;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_VCYCCOMPLE_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber = 54;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
			
		case STATUS_MOTOR_NOCOMMUNICATION_TRIP_SMS:
				{
						PlaySound =1;
						PlayNumber = 54;		
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;	
				}
			break;
		case STATUS_MOTOR_MAX_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=40;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
			}
			break;
		case STATUS_MOTOR_ON_SWITCH_TRIP_SMS:
			{
				PlaySound =1;
				PlayNumber=24;
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=16;	
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;		
				
				PlaySound =1;
				PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=34;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				PlaySound =1;
				PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=8;
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;
				
				PlaySound =1;
				PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=45;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=45;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=45;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=45;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;	
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=45;		
				HowManySound[HowManySoundToPlay] = PlayNumber;
				HowManySoundToPlay++;		
				
				if(CheckMotorStatus_Sound() == 0)
				{
					PlaySound =1;
					PlayNumber=25;	
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=25;		
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=25;		
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
						PlayNumber=10;
						HowManySound[HowManySoundToPlay] = PlayNumber;
						HowManySoundToPlay++;
						break;
					}
					case STATUS_MOTOR_AT_STARDELTA:
					{
						PlaySound =1;
						PlayNumber=10;		
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
				PlayNumber=25;		
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
			PlayNumber=2;		
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
		else
		{
			PlaySound =1;
			PlayNumber=1;		
			HowManySound[HowManySoundToPlay] = PlayNumber;
			HowManySoundToPlay++;
		}
	}
}
void DTMF_Proccessor(char* dtmfbuf) {
#line 1861 "..\\RunMotor.c"
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
		
		long value;
		long TpHr;
		long TpMin;
		long TpSec;
		value = MRunTimer;         
		TpHr = value/3600;
		value = value%3600;
		TpMin = value/60;
		value = value%60;
		TpSec = value;
		 
		RunTimerhr =TpHr;
		RunTimermin =TpMin;
		RunTimersec =TpSec;
}
void Debug(const char *format, ...) {
    va_list ap;       
    memset(Tracebuffer,0,sizeof(Tracebuffer));
    __va_start(ap, format);
    vsnprintf(Tracebuffer,1024, format, ap);
    __va_end(ap);
    debug(Tracebuffer,strlen(Tracebuffer));   
} 

void debug(char* data ,int len) {  
	size_t packet_size= len;
  size_t i;		 
	i=0;
	while(packet_size--)
	{
	   ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x31000UL)))->DAT = (data[i++]));
		 delaym(500);
	} 
	
		((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x31000UL)))->DAT = ('\n'));

}
void Uart_Send_with_crc(char* data) {
	 
	size_t data_size = strlen(data);
	size_t i;
	size_t packet_size;
	uint8_t crc = crc8(data, data_size);
	data[data_size] = crc;
	packet_size = data_size + 1; 
	
	
	  ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x30000UL)))->DAT = ('$'));
	
	
	for (i = 0; i < packet_size; i++)
    ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x30000UL)))->DAT = (data[i]));
	
	
	  ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x30000UL)))->DAT = ('\r'));

}
void Uart_Send_Dtmf_Data(char* data) {
	 
	size_t data_size = strlen(data);
	size_t i; 
	
	  ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x30000UL)))->DAT = ('#'));
	
	
	for (i = 0; i < data_size; i++)
    ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x30000UL)))->DAT = (data[i]));
	
	
	  ((((UART_T *) ((((uint32_t)0x40000000) + (uint32_t)0x00040000) + 0x30000UL)))->DAT = (';'));

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
			
			
			if(nMSettings.SumpOnOff == 1)
			PrvLoMotorStatus=0;
			PrvUpMotorStatus=0;
			
			
			
			
			
			
			
			PreviousTrip = 0;
			
			
			
			
	
	

			if(PowerCurrentCondition == 1)
			{
				if(nMSettings.gethidesmsonoff == 1)
					sprintf(StaticSmsString,"MOBILE OFF BY : +91%s0\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
				else
					sprintf(StaticSmsString,"MOBILE OFF BY %s\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
				
				
			}
			else if(checkpower == 2 )
			{
				if (nTimerSettings.AutoStIIOnOff == 0 || Mobile2Phs3Phase == 3)
				{

				 if(nMSettings.gethidesmsonoff == 1)
					 sprintf(StaticSmsString,"MOBILE OFF BY : +91%s0\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
				 else
					sprintf(StaticSmsString,"MOBILE OFF BY %s\n\rPOWER OFF\n\rMOTOR OFF\n",WhoMadeRelayOn);
					
				  
				}

			}
			
			WriteSettingsFile();
		}

}
void checkkeypress(void) {	    







	  
	  if((*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(2))) + ((3)<<2)))) == 0 && keydebounceflag == 0)
	 { 
		 keydebounceflag=1;
		
		 
      SubPage = 0;		 
			Page = 9;
      Displaydelay = 25;		 
	 }












	 
	  
	 if(keydebouncecnt++ >= 2)    
	 {
	   keydebounceflag=0;
		 keydebouncecnt=0;
	 }
	 
	   
}
void print_lcd(volatile uint8_t (*lcd_ptr)[16]) {
	lcd_goto(1,0);
	lcd_puts((uint8_t *)&lcd_ptr[0]);					
	lcd_goto(2,0);
  lcd_ptr++;	                           
	lcd_puts((uint8_t *)lcd_ptr);         
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
void prodset(void) {                                   

	            Debug("\nEntry to prodset\n");            
	            Appmodeon=1;							 
							nTimerSettings.PoScrDlHr=0;
							nTimerSettings.PoScrDlMin=0;
							nTimerSettings.PoScrDlSec=0;
							nMSettings.gethidesmsonoff=0;
							nMSettings.SMSOnOff = 0;
							nMSettings.staticSMSOnOff = 0;
							nMSettings.SfbOnOff = 0;
							
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
							nMSettings.SfbOnOff = 1;
							nMSettings.DryRunOnOff = 0;

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
							nMSettings.ModeSelect=1;  
							nMSettings.responseOnOf=1;							 

						  WriteSettingsFile();
						  WriteTimerSettings();
							ReadTimerSettings();
							ReadSettingsFile();
}

static int  set_data_flash_base(uint32_t u32DFBA) {
    uint32_t   au32Config[2];           

     
    if (FMC_ReadConfig(au32Config, 2) < 0)
    {
        Debug("\nRead User Config failed!\n");        
        return -1;                      
    }

     
    if ((!(au32Config[0] & 0x1)) && (au32Config[1] == u32DFBA))
        return 0;                       

    (((FMC_T *) (((uint32_t)0x40000000) + 0x0C000UL))->ISPCTL |= (0x1ul << (4)));            

    au32Config[0] &= ~0x1;              
    au32Config[1] = u32DFBA;            

     
    if (FMC_WriteConfig(au32Config, 2) < 0)
        return -1;                      

    

     
    ((SYS_T *) (((uint32_t)0x40000000) + 0x00000UL))->IPRST0 = (0x1ul << (0));
    return 0;                           
}
int ReadSettingsFile(void) {
		char ReadBuf[150]={0};
		
		char *Pch = 0;
		int readedlen = 0;	
	 
	
		 
		memset(ReadBuf,0,sizeof(ReadBuf));
		
		 
		memcpy(ReadBuf,(uint32_t *)0x0003E000,100);
		
		 
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
				while( Pch != 0 )
				{
					strcpy(StrTokStr[StrTokStrVer],Pch);
					StrTokStrVer++;
					Pch = strtok( 0, "," );
				}				
				


 
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

		uint32_t  Addr;
		char settings_buf[500]="";
    uint32_t flash_write_buf[150];
    char ReadBuf[500]={0};
		
	  uint16_t i,j,d=0;
		
	    
      SYS_UnlockReg();
	    FMC_Open();                         	
	   
		  		
      
			if (set_data_flash_base(0x0003E000) < 0)
			{
					Debug("Failed to set Data Flash base address!\n");           
					 
			}
		
		
	    
		if (FMC_Erase(0x0003E000) != 0)             
		{
				Debug("FMC_Erase SETTINGS_FILE_BASE_SADDR failed!\n");
				return -1;
		}
		else
		{
			 
			memset(settings_buf,0,sizeof(settings_buf));
			memset(flash_write_buf,0,sizeof(flash_write_buf));
			
			 		
			 
			sprintf(settings_buf,"MS,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%03d,%d,%d,%d,%02d,%02d,%02d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%01d,%01d,\n\r",
														nMSettings.SMSOnOff,nMSettings.SfbOnOff,nMSettings.ManualswitchOnOff,nMSettings.TankOnOff,nMSettings.SumpOnOff,
														nMSettings.DryRunOnOff,nMSettings.TargetOnOff ,nMSettings.VBFOnOff,nMSettings.RelayControlOnCall,nMSettings.SecOnOf,
														nTimerSettings.pfcOnOff,nTimerSettings.pfcvolt,Mobile2Phs3Phase,
														nMSettings.gethidesmsonoff,nMSettings.staticSMSOnOff,nTimerSettings.SfbHr,
														nTimerSettings.SfbMin,nTimerSettings.SfbSec,limitsmsonof,limitsmsset,nMSettings.serviceOnOff,
														nMSettings.pwrvfbOnOf,DNDSMSFLAG[0],DNDSMSFLAG[1],DNDSMSFLAG[2],DNDSMSFLAG[3],MakeRealyOn,PrvAutoMobileKey,Appmodeon,
														gprson,nMSettings.AutoMobileKeyOnOf,nMSettings.Ph2Ph3SelectOnOf,nMSettings.responseOnOf,nMSettings.ModeSelect);
			
			 
			
			Debug("\nsettings_buf:%s-len:%d\n",settings_buf,strlen(settings_buf));										
			 
			for (i = 0, j = 0; i < sizeof(settings_buf); i += 4, j++)
			{
					memcpy(&flash_write_buf[j], &settings_buf[i], 4);
					
			}
			 
			
			 
			for (Addr = 0x0003E000; Addr < 0x0003E800; Addr += 4)
			{
					if (FMC_Write(Addr,flash_write_buf[d]) != 0)           
					{
							Debug("FMC_Write address 0x%x failed!\n", Addr);
							return -1;
					} 
					d++;
			}   
			 
			memcpy(ReadBuf,(uint32_t *)0x0003E000,400);
			 
			Debug("\nSettings file data after flash write:%s\n",ReadBuf);		
	  }
		FMC_Close();                        
		
		  
    SYS_LockReg();

		return 0;
}
int ReadTimerSettings(void) {
	char ReadBuf[600]={0};
 
	char *Pch = 0;
	int readedlen = 0;	
	
	 
	memset(ReadBuf,0,sizeof(ReadBuf));
	 
	memcpy(ReadBuf,(uint32_t *)0x0003F000,600);
	 
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
		while( Pch != 0 )
		{		 
			strcpy(StrTokStr2[StrTokStrVer2],Pch);
			StrTokStrVer2++;
			Pch = strtok( 0, "," );		 
		 
		}		
		

 
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

		uint32_t  Addr;
		char settings_buf[600]="";
		uint32_t flash_write_buf[200];
		char ReadBuf[600]={0};	   	
		uint16_t i,j,d=0;
		
		 
		SYS_UnlockReg();
		 	
		FMC_Open();                        
		
	   

	    
		if (FMC_Erase(0x0003F000) != 0)             
		{
				Debug("FMC_Erase SETTINGS_FILE_BASE_SADDR failed!\n");
				return -1;
		}
		else 
		{
				 
				memset(settings_buf,0,sizeof(settings_buf));
				memset(flash_write_buf,0,sizeof(flash_write_buf));
				
				 		
				 
					memset(settings_buf,0,sizeof(settings_buf));
								
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
				
				 
				
				
				 
				for (i = 0, j = 0; i < sizeof(settings_buf); i += 4, j++)
				{
					memcpy(&flash_write_buf[j], &settings_buf[i], 4);
					 
				}		 
				
				 
				for (Addr = 0x0003F000; Addr < 0x0003F800; Addr += 4)
				{
						if (FMC_Write(Addr,flash_write_buf[d]) != 0)           
						{
								Debug("FMC_Write address 0x%x failed!\n", Addr);
								return -1;
						} 
						d++;
				}   
				
				 
				memcpy(ReadBuf,(uint32_t *)0x0003F000,600);
				 
				Debug("\nTimerSettings after flashwrite:%s=len:%d\n",ReadBuf,strlen(settings_buf));		
		}
		 
		FMC_Close();                      

		 
		SYS_LockReg();
		

		return 0;
}
void Check_Send_SMS(void) {

          Debug("\n\rTest:%d,%d,%d\n\r",SendSmsToAll,ModemIsReady,nMSettings.SMSOnOff);
				  if(SendSmsToAll == 1 && ModemIsReady == 1 && nMSettings.SMSOnOff == 1)
					{
					       
							unsigned char removeniagara=0;
							if(nMSettings.gethidesmsonoff == 1 )
								{
										
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
															

														}
													}
													break;
												case STATE_MOTOR_STARTER_TRIP_SMS:

													sprintf(Buffer1,"MOTOR OFF BECAUSE OF STARTER TRIP:%d  \n",(OverAllStarterTrip+1));

													if(WorkingOn3Phas == 1)
													{
														
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
												






 
													case STATE_MOTOR_UPPERTANK_TRIP_SMS:
													{
														if(Appmodeon==1) {
															sprintf(Buffer1," %02d022\n",(datetime.tm_sec+2));   
															StatusCode=22;
														}
														else
															sprintf(Buffer1,"MOTOR OFF BECAUSE OF UPPER TANK FULL");    
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
															
																sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE\n",Buffer1);
															}
														sprintf(Buffer1,"%sSET AMPS = %0.1f\n",Buffer1,nTimerSettings.DrAmpsII);
														}
														if(WhichPhaseHaveingProblem == 1)
														{
															
																sprintf(Buffer1,"%sRC = %0.1f\n",Buffer1,TripCurrent);
														}
														else if(WhichPhaseHaveingProblem == 2)
														{
															
																sprintf(Buffer1,"%sYC = %0.1f\n",Buffer1,TripCurrent);
														}
														else if(WhichPhaseHaveingProblem == 3)

														{
															
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
															
																sprintf(Buffer1,"%sMOTOR STARTED WITH 2 PHASE\n",Buffer1);
															}
															sprintf(Buffer1,"%sSET AMPS = %0.1f\n",Buffer1,nTimerSettings.OlAmpsII);
															}
															if(WhichPhaseHaveingProblem == 1)
															{
																	
																	sprintf(Buffer1,"%sRC = %0.1f\n",Buffer1,TripCurrent);
															}
															else if(WhichPhaseHaveingProblem == 2)
															{
																	
																	sprintf(Buffer1,"%sYC = %0.1f\n",Buffer1,TripCurrent);
															}
															else if(WhichPhaseHaveingProblem == 3)
															{
																	
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









 
												case STATE_VLIMITSMSSET_SMS:		
												{
													sprintf(Buffer1,"V49 SET SMS LIMIT = %03d\n",limitsmsset);
													if(limitsmsonof == 1)
														sprintf(Buffer1,"%sSMS LIMIT ON\n",Buffer1);
													else
														sprintf(Buffer1,"%sSMS LIMIT OFF\n",Buffer1);


												}
												break;

												case STATE_LIMITSMSSET_SMS:		
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
													sprintf(Buffer1,"DATE=%02d/%02d/%04d \n TIME=%02d:%02d:%02d \n STORED 4G AG4 BSD PCGv%s",datetime.tm_mday,datetime.tm_mon,datetime.tm_year,datetime.tm_hour, datetime.tm_min, datetime.tm_sec,"V1.0.0");
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
													
													sprintf(Buffer1,"CALCULATED FLOW SET FOR 2 PHASE = %03.01f",nTimerSettings.calflow2);
												}
												break;
												case STATE_CALFLOWIII_SMS:
												{
													
													sprintf(Buffer1,"CALCULATED FLOW SET FOR 3 PHASE = %03.01f",nTimerSettings.calflow3);
												}
												break;
												case STATE_DRAMPII_SMS:
												{
													
													sprintf(Buffer1,"DRY RUN AMPS FOR 2 PHASE = %03.01f",nTimerSettings.DrAmpsII);
												}
												break;
												case STATE_DRAMPIII_SMS:
												{
												    
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
												 
													sprintf(Buffer1,"SET LOW PRESSURE = %02.01f",nTimerSettings.lowpress);
												}
												break;
												case STATE_HIGHPRESS_SMS:
												{
												 
													sprintf(Buffer1,"SET HIGH PRESSURE = %02.01f",nTimerSettings.highpress);
												}
												break;
												case STATE_OLAMPSII_SMS:
												{
												 
													sprintf(Buffer1,"OVER LOAD AMPS FOR 2 PHASE = %03.01f",nTimerSettings.OlAmpsII);
												}
												break;
												case STATE_OLAMPSIII_SMS:
												{
												    
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
										
										
										
											 
											else if(PowerOnSms == 1)
											{
											
 
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
															sprintf(Buffer1,"AUTO OFF \n POWER ON WITH 2 PHASE");  
													}
											}
											sprintf(Buffer1,"%s\nR=%03.0f;",Buffer1,nCurretnCond.RVoltage);
											sprintf(Buffer1,"%sY=%03.0f;",Buffer1,nCurretnCond.YVoltage);   
											sprintf(Buffer1,"%sB=%03.0fV\n",Buffer1,nCurretnCond.BVoltage);  
											value = nMoTr.ActofpowerRunTimer;
											TpHr = value/3600;
											value = value%3600;
											TpMin = value/60;
											value = value%60;
											TpSec = value;
											if(Appmodeon==1)
											sprintf(Buffer1,"%sS=%d\nPOF TIM=%02d:%02d:%02d",Buffer1,CSQ,TpHr,TpMin,TpSec);
											
											else
											sprintf(Buffer1,"%sPOF TIM=%02d:%02d:%02d",Buffer1,TpHr,TpMin,TpSec);
										
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
														
											}
											else
											{
														if(Appmodeon==1)
														sprintf(Buffer1," %02d041\n",(datetime.tm_sec+2));
														else
														sprintf(Buffer1,"AUTO ON \nPOWER OFF\nMOTOR OFF\n");
														switchonofflag=1;
														
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

											sprintf(SmsStrNumber[NumberOfSmsNeedToSend].Smsnumber,"%s",SmsNumber[Tpsms]);    
											
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
										


 
										else
										{



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
							
							}
							NumberOfSMSSend = 20;
							SendSmsToAll = 0;
							ThisSMSisNotPowerFault = 0;
							NeedToSendSMSCall = 0;
							PowerOnSms = 0;
							
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
						    
							SMS30MinStatus = 0;
							CallOnOfVer = 0;
							RegxSmsSend = 0;
							PowerOffSMS = 0;
							STATE_SENDSMS = STATE_NO_SMS;
							nSTATE_MOTOR_SMS = STATE_NO_MOTOR_SMS;
							NumberOfSmsAllreadySend = NumberOfSmsNeedToSend = 0;    
							SendSMS = 0;                                            
						}
						

}
void Power_event_check(void) {
	

			if(started_firsttime == 0)
			{
				HowManySoundToPlay = 0;
				HowManySoundPlayed = 0;
				PlaySound = 0;
				
				HowManySoundToPlay = 0;
				HowManySoundPlayed = 0;
				PlaySound = 0;
				started_firsttime = 1;
				power_on_flag_count=1;
			}
			else
			{
				uint8_t pinlevel;
				
				
				
				
				
				 
				pinlevel =(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(1))) + ((15)<<2)))); 
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

}
void check_voicefeedback_status(void) {
#line 5210 "..\\RunMotor.c"
}
void Send_30min_Status_sms(void) {	
#line 5289 "..\\RunMotor.c"
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
				
				Debug("\n\r Entry to onehour_time =1 line %d ",5301);
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
	
		pinlevelab =(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((4)<<2))));
		
		if(pinlevelab == 0)
		{
			return 0;
		}
		else
		{
			return 1;
		}		
		
}

uint8_t crc8(const void *data, size_t size){
    uint8_t crc = 0x00;
    const uint8_t *ptr = (const uint8_t *)data;
    uint8_t j;size_t i;
	  
    for(i = 0; i < size; i++)
    {
			  
        crc ^= ptr[i];
        for ( j = 0; j < 8; j++)
        {
            if (crc & 0x80)
                crc = (crc << 1) ^ 0x07;
            else
                crc <<= 1;
        }
    }

    return crc;
}
int CheckPH2PH3Selection(void){
	 
		uint8_t pinlevelab;
		 
		pinlevelab = (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((5)<<2))));
		
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
		
		

		return 0;

}  
void FloatroString1Dig(char* String,float Number){
	int i,j;
	unsigned char c;
	
  	c = 0; 
	if(Number < 0)
	{
	  c = 1;
	  Number = -Number;
	}
	i = (int)Number; 
	Number = Number-(float)i;
	j = (int)((Number * 10.0f));
	if(c == 0)
		sprintf(String,"%02d.%01d",i,j);
	else
		sprintf(String,"-%02d.%01d",i,j);
	
		
		
}
uint8_t CheckSpp(void){
		int MaxVoltage,MinVoltage;
		
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
			
			
			HighVoltageRecheck = 0;
					return 0;
			}
		HighVoltageRecheck = 0;
		return 0;
}
uint8_t CheckHighVoltageHys(unsigned char Ph2Ph3){
			float PerCheck;
			

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
#line 6074 "..\\RunMotor.c"
		return 0;
}
uint8_t CheckUpperTank(void){
	 
	uint8_t pinlevelab;
	uint8_t pinlevelabc;	 
	 
	if(nMSettings.TankOnOff== 1)
	{		 
				
				
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
	
	uint8_t pinlevelab;
	uint8_t pinlevelabc;
	if(nMSettings.SumpOnOff == 1)
	{
		pinlevelab = (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(2))) + ((4)<<2))));
		pinlevelabc = (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(2))) + ((5)<<2))));
		PrvLocanMotorStatus=0;
		
		
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
			
		
		
			

			return PrvLoMotorStatus;
	}
  
































 
	RecheckCounterLT = 0;
	return 0;
}
uint8_t CheckCurrentSpp(void){

	
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
#line 6626 "..\\RunMotor.c"
	return 0;
}

void RunMotor(unsigned char OnOff,unsigned char PowerCondition){

	 
		 
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
		else if(PowerCondition == 1)	
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
					 
						 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
				
			 
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
											
											
											

										}
									}
									else
									{
											
											
											ReadSettingsFile();
								      ReadTimerSettings();	
											

											

											
											
											
											

											
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
						if(PreviousTrip == 1)
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
						if(PreviousTrip == 2)
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
						


































   

					}   
			 
					




 
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

						 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;

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
						 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
				
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
							SendSmsToAll = 1;
							spplowhighvoldelay =0;
							nSTATE_MOTOR_SMS = STATE_MOTOROF_3PHASE_ONLY_SMS;
						}
						Returnfromthisonly = 1;
						 
						return;
			}
			else if(Mobile2Phs3Phase == 3 && nTimerSettings.AutoStIIOnOff == 1 && WorkingOn3Phas == 0)
			{
				Debug("\n\r*******MOTOR OFF Because Mobile 3 Key Presswed *************\n\r");
				 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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
				 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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
			 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
				
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
					
					nSTATE_MOTOR_SMS = STATE_MOTOR_TRIP_SPP_SMS;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_SPP;
				}
				Returnfromthisonly = 1;
				return;

			}


			VoltageSppRecheckflag=0;
			if(CheckLowVoltageHys(WorkingOn3Phas) != 0)
			{
			 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
				
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
			 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
				
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
					 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;					
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0; 
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
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
	 	




 
	

















 



			PrvPowCond = PowerCondition;
			PrvOnOff = OnOff;
			
		}
		NoElePowerOfTimer = 0;
	  
		
		

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
					 
            nMoTr.ActScrdl=0;
		        (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((10)<<2))))=1;
			}

		}
		nTimerSettings.vpfcvolt=nTimerSettings.pfcvolt-20;
		if(debugon == 1)
		Debug("\nPowerOnDelayComPleted %d \n ScrDelayCompleted %d \nnTimerSettings.pfcOnOff %d \npfccompleted %d \n nTimerSettings.pfcvolt %d \n nCurretnCond.BRVoltage %f" ,PowerOnDelayComPleted,ScrDelayCompleted,nTimerSettings.pfcOnOff,pfccompleted,nTimerSettings.pfcvolt,nCurretnCond.BRVoltage);
		if(PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1 && nTimerSettings.pfcOnOff==1&&nTimerSettings.pfcvolt<nCurretnCond.BRVoltage&&pfccompleted==1)
		{
		   (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((10)<<2))))=0;               
		   pfccompleted=0;
		}
		else if(WorkingOn3Phas == 0&&PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1  && nTimerSettings.pfcOnOff==1&& nTimerSettings.vpfcvolt>nCurretnCond.BRVoltage&&pfccompleted==0)
		{
 		  (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((10)<<2))))=1;                
			pfccompleted=1;
		 
		}
		else if((nTimerSettings.pfcOnOff==0||WorkingOn3Phas==1)&&PowerOnDelayComPleted == 1 && ScrDelayCompleted == 1&& pfccompleted==1)
		{
			(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((10)<<2))))=0;
			(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;		 
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
				 (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
				if(scrrelayTimer++>3)
				{		 
					ScrDelayCompleted = 1;
					SCRPowerOnDelay = 0;
					
					NoAcceptSMS=0;
				}
			}
		}
	




 

		
		
		
		

		MotorReversePhaseSMS = 0;
		SendLowVoltageHighVoltage = 0;
		SendSPPLowVoltageHighVoltage = 0;
		switch(nSTATE_MOTOR)
		{
			case STATE_MOTOR_POWERONDELAY:
				{
					
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



							sprintf((char *)lcd_row[0],"ON DELAY");
							sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							print_lcd(lcd_row);
						 
						
						
					
					}

					Debug("\n\rnMoTr.ActOnDelay = %ld  nMoTr.OnDelay = %ld\n\r",nMoTr.ActOnDelay,nMoTr.OnDelay);			 
					 
					 

					if(nMoTr.ActOnDelay>=nMoTr.OnDelay)
					{
					    scrrelayTimer=0;
							relayTimer++;
						
 
						if(WorkingOn3Phas == 0 )
						{
							if(relayTimer>=0 && relayTimer>=8)
							{								
								(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=1;
							}
							if(relayTimer>=18 && relayTimer>=26)
							{
								(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=1;
								SCRPowerOnDelay = 2;
								ScrDelayCompleted = 0;							
								pfccompleted=0;
							}
						}
						else
						{
							if(relayTimer>=0 && relayTimer>=9)
						  {
							 (*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
							}
				      if(relayTimer>=20 && relayTimer>=29)
							SCRPowerOnDelay = 1; 
						}


						if(relayTimer>=11 && relayTimer>=18)
						{
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=1;
						}
						if(relayTimer>=34)
						{
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=1;
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
					
					}
				}
				break;
			case STATE_MOTOR_STARDELTADELAY:
				{
					
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
							
							sprintf((char *)lcd_row[0],"SD DELAY");
						}
						else 
							sprintf((char *)lcd_row[0],"LVL SCAN");



							sprintf((char *)lcd_row[1],"%02d:%02d:%02d",TpHr,TpMin,TpSec);					 
							print_lcd(lcd_row);
						
							 
							
							
							
					}

					Debug("\n\rnMoTr.ActStarDetaDelay = %ld  nMoTr.StarDetaDelay = %ld\n\r",nMoTr.ActStarDetaDelay,nMoTr.StarDetaDelay);
				 
					
 
					if(nMoTr.ActStarDetaDelay>=nMoTr.StarDetaDelay)
					{
					relayTimer++;
					livedataflag1 = 1;
					livedataflagcount1=0;
						if(nMoTr.StarDetaDelay<=30)
						{
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
						}
						else
						{
						
 
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
						}
						if(WorkingOn3Phas == 0)
						{	
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=1;
						}
						else
						{	
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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
           
						lcd_init(); 
							
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
										(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
										if(delayCounterSms++>=10)
										{
											
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
						
						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsII =(double)TpCur*1.5;
						nTimerSettings.DrAmpsII =(double)TpCur*0.7;
						

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
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=1;
						}
						else
						{
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
						}
						if(nMoTr.StarDetaDelay<=30)
						{
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=1;
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
							if(pfccompleted==0)
							{
								(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((10)<<2))))=0;
							}
							
						}
						else
						{
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
							(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=1;
						}

					}
					RecheckTankStatus = 0;
					if(datetime.tm_sec != ActOnDelayPrvSec)
					{
						RunTimer++;
						MRunTimer++;
					
















 

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
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{

						 
						
						writetorecordfirsttime = 1;
						
						if(WorkingOn3Phas == 1)
						{
							
							
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



					}


					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_LOWVOLTAGE;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_LOWVOLTAGE;
					if(CheckLowVoltageHys(WorkingOn3Phas) == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_LOWVOLTAGE;
						PrvOnOff = 0;
					}
					

 
				}
				break;
			case STATE_MOTOR_TRIP_HIGHVOLTAGE:
				{
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
					 
					
						writetorecordfirsttime = 1;
						
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



					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_HIGHVOLTAGE;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_HIGHVOLTAGE;
					if(CheckHighVoltageHys(WorkingOn3Phas) == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_HIGHVOLTAGE;
						PrvOnOff = 0;
					}
					
					











 
				}
				break;
			case STATE_MOTOR_TRIP_SPP:
				{					 

					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						 
						
						writetorecordfirsttime = 1;
						
						sprintf(BigSMS,"MOTOR OFF BECAUSE VOLTAGE SPP-MOTOR RUNING AT III PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						
						
						
					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_SPP;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_SPP;
					if(CheckSpp() == 0)
					{
						nSTATE_MOTOR_ON_SMS = STATE_MOTOR_ON_SPP;
						PrvOnOff = 0;
					}
				











 
				}
				break;
			case STATE_MOTOR_TRIP_CURRENTSPP:
				{					 

					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						 

						
						writetorecordfirsttime = 1;
						
						sprintf(BigSMS,"MOTOR OFF BECAUSE CURRENT SPP-MOTOR RUNING AT III PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						
						
						
					}
					nSTATE_STATUS_SMS =STATUS_MOTOR_TRIP_CURRENTSPP;
					nSTATE_MOTOR = STATE_MOTOR_TRIP_CURRENTSPP;
				}
				break;
			case STATE_MOTOR_TRIP_STARTER:
				{
					 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;

					SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						 
						
						writetorecordfirsttime = 1;
					
						if(WorkingOn3Phas == 1)
							sprintf(BigSMS,"MOTOR OFF BECAUSE STARTER TRIP-MOTOR RUNING AT III PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						else
							sprintf(BigSMS,"MOTOR OFF BECAUSE STARTER TRIP-MOTOR RUNING AT II PHASE-%02d/%02d/%04d %02d:%02d:%02d",datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);

						
						
						
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
					PreviousTrip = 0;
					if(SetToGreenFlag == 1 && Stg3FirstTimer == 0 && WorkingOn3Phas == 0)
					{
						
						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsII =(double) TpCur*1.5;
						nTimerSettings.DrAmpsII =(double)TpCur*0.7;
						
						
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
					PreviousTrip = 0;
					if(SetToGreenFlag == 1 && Stg3FirstTimer == 0 && WorkingOn3Phas == 0)
					{
						
						ReadTimerSettings();
						TpCur=nCurretnCond.Rcurrent;
						TpCur+=nCurretnCond.Ycurrent;
						TpCur+=nCurretnCond.Bcurrent;
						TpCur = TpCur/3;
						nTimerSettings.OlAmpsII =(double) TpCur*1.2f;
						nTimerSettings.DrAmpsII =(double)TpCur*0.7f;
						
						
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
					 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
				   SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						
						writetorecordfirsttime = 1;
						
						if(WorkingOn3Phas == 1)
						{
						if(WhichPhaseHaveingProblem == 1)
						{
							FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
							sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
							FloatroString1Dig(TpStr,TripCurrent);
							
						}
						else if(WhichPhaseHaveingProblem == 2)
						{
							FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
							sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
							FloatroString1Dig(TpStr,TripCurrent);
							sprintf(BigSMS,"%s-YPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						}
						
						else if(WhichPhaseHaveingProblem == 3)
						{
							FloatroString1Dig(TpStr,nTimerSettings.OlAmpsIII);
							sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
							FloatroString1Dig(TpStr,TripCurrent);
							sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						}
						

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
							
							else if(WhichPhaseHaveingProblem == 2)
							{
								FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
							
							else if(WhichPhaseHaveingProblem == 3)
							{
								FloatroString1Dig(TpStr,nTimerSettings.OlAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE OVER LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
							

							}
						
					  
						
					}
					PreviousTrip = 1;
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

					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
                SCRPowerOnDelay=0;
					if(writetorecordfirsttime == 0)
					{
						
						writetorecordfirsttime = 1;
				   		
						if(WorkingOn3Phas == 1)
						{
							if(WhichPhaseHaveingProblem == 1)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-RPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						  }
								
							else if(WhichPhaseHaveingProblem == 2)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-YPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						  }
								
							else if(WhichPhaseHaveingProblem == 3)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsIII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT III PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
						  }
								
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
								
							else if(WhichPhaseHaveingProblem == 2)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-YPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
								
							else if(WhichPhaseHaveingProblem == 3)
							{
								FloatroString1Dig(TpStr,nTimerSettings.DrAmpsII);
								sprintf(BigSMS,"MOTOR OFF BECAUSE NO LOAD-MOTOR RUNING AT II PHASE-SET AMPS=%s",TpStr);
								FloatroString1Dig(TpStr,TripCurrent);
								sprintf(BigSMS,"%s-BPHASE CURRENT = %s-%02d/%02d/%04d %02d:%02d:%02d",BigSMS,TpStr,datetime.tm_mday,datetime.tm_mon,datetime.tm_year, datetime.tm_hour, datetime.tm_min, datetime.tm_sec);
							}
								

						}
						
						
						
					}
						 PreviousTrip = 2;
						
						
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
				 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
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
			   	(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
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
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					SCRPowerOnDelay=0;
				}
				break;
			case STATE_MOTOR_TRIP_RESTART:
				{
					nSTATE_STATUS_SMS = STATUS_ON_RESTART_NOLOAD; 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					PrvOnOff = 0;
					SCRPowerOnDelay=0;
				}
				break;
			case STATE_MOTOR_TRIP_MAXTIME:
				{
					nSTATE_MOTOR = STATE_MOTOR_TRIP_MAXTIME;
					nSTATE_STATUS_SMS = STATUS_MOTOR_MAX_TRIP_SMS;
					
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
					
				SCRPowerOnDelay=0;
				}
				break;			 
			case STATE_MOTOR_TRIP_NOCOMMUNICATION:
				
						nSTATE_MOTOR = STATE_MOTOR_TRIP_NOCOMMUNICATION;
						nSTATE_STATUS_SMS = STATUS_MOTOR_NOCOMMUNICATION_TRIP_SMS;

						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
						(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
						break;
			case STATE_MOTOR_TRIP_OFFDELAY:
				{					 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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
				 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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
				 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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
			 
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((11)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((9)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(0))) + ((8)<<2))))=0;
					(*((volatile uint32_t *)(((((uint32_t)0x40000000) + 0x04800UL)+(0x40*(5))) + ((6)<<2))))=0;
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

  
}
void DisplayRountine(void){

	char TpStr[20]="nimish";
	long TpHr,TpMin,TpSec,value;
	 
	checkpower=Check2Phase();


	if(MassageReceived == 0)
	{
		
		if(Page == 0)
		{

			Displaydelay++;
			if(Displaydelay>=2)
			{
				Displaydelay = 0;
				switch(nSTATE_STATUS_SMS)
				{

					 case STATUS_MOTOR_ON_SWITCH_TRIP_SMS:
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								if(checkpower == 2) {


									
									  sprintf((char *)lcd_row[0]," MOTOR  ");
			              sprintf((char *)lcd_row[1],"OFF  II ");
								}
								else {


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



								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}
							else
							{
								FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);
								if(checkpower == 2)
								{


									
									  sprintf((char *)lcd_row[0]," MOTOR  ");
			              sprintf((char *)lcd_row[1],"OFF II  ");
								      
								}
								else{
									
									
									
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



								
								sprintf((char *)lcd_row[0],"SD DELAY");
								sprintf((char *)lcd_row[1],"%02ld:%02ld:%02ld",TpHr,TpMin,TpSec);
							}							 
						}
						break;
					case STATUS_MOTOR_STARTER_TRIP_SMS:
						{
							if(WorkingOn3Phas == 0)
							{


								sprintf((char *)lcd_row[0],"STARTER"); 
								sprintf((char *)lcd_row[1]," TRIP:%d ",(OverAllStarterTrip+1));
							}
							else
							{


								sprintf((char *)lcd_row[0],"STARTER"); 
								sprintf((char *)lcd_row[1]," TRIP:%d ",(OverAllStarterTrip+1));
							}
						}
						break;
					case STATUS_MOTOR_UPPERTANK_TRIP_SMS:
						{
							if(WorkingOn3Phas == 0)
							{


								  sprintf((char *)lcd_row[0],"  TANK  ");
								  sprintf((char *)lcd_row[1],"  FULL  ");
							}
							else
							{


									sprintf((char *)lcd_row[0],"  TANK  ");
								  sprintf((char *)lcd_row[1],"  FULL  ");
							}
						}
						break;
					case STATUS_MOTOR_LOWERTANK_TRIP_SMS:
						{
							if(WorkingOn3Phas == 0)
							{


								sprintf((char *)lcd_row[0],"  SUMP  ");
								sprintf((char *)lcd_row[1]," EMPTY  ");
							}
							else
							{


								sprintf((char *)lcd_row[0],"  SUMP  ");
								sprintf((char *)lcd_row[1]," EMPTY  ");								
							}
						}
						break;
					case STATUS_MOTOR_DRYRUN_TRIP_SMS:
						{

							




 
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


									
									sprintf((char *)lcd_row[0],"  DRT II  ");
									sprintf((char *)lcd_row[1]," %02ld:%02ld  ",TpHr,TpMin);
								}
								else
								{


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


									sprintf((char *)lcd_row[0],"  DRT III ");
									sprintf((char *)lcd_row[1]," %02ld:%02ld  ",TpHr,TpMin);
								}
								else
								{


									sprintf((char *)lcd_row[0],"DRY RUN ");
									sprintf((char *)lcd_row[1],"TRIP III");
								}
							}						 
						}
						break;
						 
					    case STATUS_MOTOR_TRIP_OVERLOAD:
						{
							




 
							if(WorkingOn3Phas == 0)
							{


								sprintf((char *)lcd_row[0],"OVR LOAD");
								sprintf((char *)lcd_row[1],"TRIP  II");
							}
							else
							{


								sprintf((char *)lcd_row[0],"OVR LOAD");
								sprintf((char *)lcd_row[1],"TRIP III");
							}
						}
						break;
					case STATUS_MOTOR_TRIP_SPP:
						{


								sprintf((char *)lcd_row[0],"VOLTAGE ");
								sprintf((char *)lcd_row[1],"  SPP   ");
						}
						break;
					case STATUS_MOTOR_TRIP_REVERSEPHASE:
						{


								sprintf((char *)lcd_row[0],"REVERSE "); 
								sprintf((char *)lcd_row[1]," PHASE  ");
						}
						break;
					case STATUS_MOTOR_TRIP_CURRENTSPP:
						{


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


											sprintf((char *)lcd_row[0]," MOTOR  ");
											sprintf((char *)lcd_row[1]," ON II  ");
									}
									else
									{


											sprintf((char *)lcd_row[0]," MOTOR  ");
											sprintf((char *)lcd_row[1]," ON III ");
									}

								}							 
								else if(DISPLAYMsg == NO_LOAD)
								{
											FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);


											sprintf((char *)lcd_row[0],"DRY RUN ");
											sprintf((char *)lcd_row[1],"  TIME  ");
								}
								else if(DISPLAYMsg == OV_LOAD)
								{
										FloatroString1Dig(TpStr,nCurretnCond.Bcurrent);


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


									sprintf((char *)lcd_row[0],"AUTO MOT ");
									sprintf((char *)lcd_row[1],"  ON II  ");
								}
								else
								{


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


										sprintf((char *)lcd_row[0]," MOTOR  ");
										sprintf((char *)lcd_row[1]," ON II  ");
									}
									else
									{


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


										sprintf((char *)lcd_row[0]," MOTOR  ");
										sprintf((char *)lcd_row[1]," ON II  ");
								}
								else
								{


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
				sprintf((char *)lcd_row[0],"ORO-PUMP %s      ","V1.0.0" );
				sprintf((char *)lcd_row[1],"Build :%s          ","15-05-23");
				 
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
#line 10668 "..\\RunMotor.c"
    
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
 

}

uint8_t Process_Received_Settings(void){

		char ProcessBuf[200]={0};
		char* Pch1=0;char*p=0;
		uint16_t length=0;
		
		if(ModemString[0] == '$')
		{
				memcpy(ProcessBuf,(char*)ModemString+1,(strlen((char*)ModemString)-2));	
				 
				memset((char*)ModemString,0,sizeof(ModemString));
				
				
				 
				p = ProcessBuf;
			length=strlen(ProcessBuf);
			for (i = 0; i <length; i++)  
			{
				if(*p>='A' && *p<='Z')
				*p = (*p+'a')-'A';
				p++;
			}
			 
			Pch1 = strtok((char *)ProcessBuf, (char *)"," );
			StrTokStrVer = 0;
			while( Pch1 != 0 )
			{
				strcpy(StrTokStr[StrTokStrVer],Pch1);
				StrTokStrVer++;
				Pch1 = strtok( 0, "," );
			}
			
			
			Debug("\nUART DATA:{%s}\n",StrTokStr[0]);
      printf("\nUART DATA:{%s}\n",StrTokStr[0]); 			
			 
			printf(ACK);
			
			 
			
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
					
					nTimerSettings.DrAmpsIII = (nTimerSettings.DrAmpsIII)/10;
					
					
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
									
									ReadSettingsFile();
									nMSettings.pwrvfbOnOf = 1;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_PWRVFB_SMS;
										SendSmsToAll = 1;
										
										
										
										
										
									}
									ReadSettingsFile();
								}		
								
						else if(strstr(StrTokStr[0],"pwrvbof") != 0)
								{
									
									ReadSettingsFile();
									nMSettings.pwrvfbOnOf = 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_PWRVFB_SMS;										 
										SendSmsToAll = 1;
										
										
										
										
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
											
											
										}
										ReadSettingsFile();	
								}	

						else if(strstr(StrTokStr[0],"smsof") != 0)
								{
									
									ReadSettingsFile();
									nMSettings.SMSOnOff = 0;
									WriteSettingsFile();
									if(nMSettings.responseOnOf==1){
										STATE_SENDSMS = STATE_SMSON_SMS;
										SendSmsToAll = 1;			
										
										
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
        							
				
			 
			memset(ProcessBuf,0,sizeof(ProcessBuf));
			return 1;  
	}
	else {
			 
			memset(ProcessBuf,0,sizeof(ProcessBuf));
			memset((char*)ModemString,0,sizeof(ModemString));
			return 0;
	}

}


