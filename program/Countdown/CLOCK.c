#include "HT46R064B.h"
#include "key.h"
#include "CLOCK.h"
//2014-12-29 001

#pragma  vector TM_ISR @0x08  //1ms timer 

u8 timeflag;
u32 timeSeconds;
u32 timems;
//u8 lighttime;
//u8 lightfalg;


void TM_INIT()
{
		_tmr0 = 0x06;             //1ms
		_tmr0c = 0b10010100;
		_t0e=1;//定时/计数器0 中断使能	
   	    _t0on=1;//开定时器
		_emi=1; 
		timeSeconds = 0; 
		timems = 0;
		timeflag = 0;
	//	lighttime = 0;
	//	lightfalg = 0;	

}

void TM_ISR() 
{ 
   _tmr0 = 0x06;  
   timems++;
   timeflag = 1;
   if(timems > 60000)
   {
   	  timems = 0;
   	  if(timeSeconds > 0)
   	    timeSeconds--;
  /* 	  if( LIGHTDATA == 1 && lightfalg == 0)
   	  {
	   	  	if( (++lighttime) > 2)
	   	  	{
	   	         timeSeconds = 60;	
	   	         lightfalg = 1;
	   	         lighttime = 0;
	   	  	}
   	  }  
   	  else if(LIGHTDATA == 0)
   	       {	
   	    		lightfalg = 0;
                lighttime = 0;
   	       }  */
   }
} 
