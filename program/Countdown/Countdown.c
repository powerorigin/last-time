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
    
   _emi=0;//��ֹ�����ж�
   _ctrl1=0x05;//��WDT
   _wdts=0x07;//WDT �������ѡ��Ϊ2��15�η�T WDTCK
   _emi=1;//���������ж� 
    while(1)
    {
    	_clrwdt1();//��WDT//20130903
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