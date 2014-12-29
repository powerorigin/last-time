#include "HT46R064B.h"
#include "key.h"
#include "led.h"
#include "CLOCK.h"



void main()
{
	u16 time = 50000;
    Key_Init();
	Led_Init();
	while(time--);
    TM_INIT();
    
   _emi=0;//禁止所有中断
   _ctrl1=0x05;//开WDT
   _wdts=0x07;//WDT 溢出周期选择为2的15次方T WDTCK
   _emi=1;//开启允许中断 
    while(1)
    {
    	_clrwdt1();//清WDT//20130903
    	_clrwdt2();
    	if(timeflag == 1)
    	{
		   timeflag = 0;
		   if(timeSeconds > 0)
		   {	
		        led_state();
    	   		RELAYCONTROL = 1;
		   }
		   else
		   {
		   		RELAYCONTROL = 0;
		   		Led_On(ALLOFF);
		   					
		   }  
		  
    	}  
    	 key_Scan();  
    }
}