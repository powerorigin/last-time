#include "HT46R064B.h"
#include "led.h"
#include "CLOCK.h"

void Led_Init()
{
	_pawk = 0x00;
	_pac = 0x83;
	_papu = 0x7e;
	_pbc = 0x00;
	_pbpu = 0xff;	

	RELAYCONTROL = 0;
	Led_On(ALLOFF);
}

void Led_On(u8 bits)
{
	switch(bits)
	{
	    case ALLOFF: _pa |= 0x6c;
	                 _pb |= 0x3f;
	            break;
	    case 1: _pa |= 0x60;
	            _pb &= 0xf7;
	            _pb |= 0x30;
	            break;        
	    case 2: _pa |= 0x60;
	            _pb &= 0xef;
	            _pb |= 0x28;
	            break; 
	    case 3: _pa |= 0x60;
	            _pb &= 0xdf;
	            _pb |= 0x18;
	            break;       
	    case 4: _pa &= 0xbf;
	            _pa |= 0x20;
	    		_pb |= 0x38;
	            break;      
	    case 5: _pa &= 0xdf;
	            _pa |= 0x40;
	    		_pb |= 0x38;
	            break;   
	    case 6: _pb &= 0xfb;
	            _pb |= 0x03;
	    		_pa |= 0x0c;
	            break;                                 
	    case 7: _pb &= 0xfd;
	            _pb |= 0x05;
	    		_pa |= 0x0c;
	            break;    
	    case 8: _pb &= 0xfe;
	            _pb |= 0x06;
	    		_pa |= 0x0c;
	            break;   
	    case 9: _pa &= 0xfb;
	            _pa |= 0x08;
	    		_pb |= 0x07;
	            break;   
	    case 10:_pa &= 0xf7;
	            _pa |= 0x04;
	    		_pb |= 0x07;
	            break;  
	    default : break;                                     
	}
}

void led_state()
{
	 u32 temp;
	    temp = timeSeconds%120;
	    switch((temp +19)/20)
		   	    {
		   	        case 0:	if(temp == 0)
	    	            		Led_On(ALLOFF);
	    	            	else
		   	           		    Led_On(LED1);
		   	                break;
		   	        case 1: Led_On(LED1);
		   	                break;
		   	        case 2: Led_On(LED2);
		   	                break;
		   	        case 3: Led_On(LED3);
		   	                break;
		   	        case 4: Led_On(LED4);
		   	                break;
		   	        case 5: Led_On(LED5);
		   	                break;
		   	        default : _pa |= 0x60;
		   	                  _pb |= 0x1c;
		   	                break;        
		   	    }
		   	     switch((timeSeconds +19)/120)
		   	    {
		   	    	case 0: _pa |= 0x0c;
		   	    	        _pb |= 0x07;
				            break;
		   	    	case 1: Led_On(LED6);
		   	                break;
		   	        case 2:	Led_On(LED7);
		   	                break;
		   	        case 3: Led_On(LED8);
		   	                break;
		   	        case 4: Led_On(LED9);
		   	                break;
		   	        case 5: Led_On(LED10);
		   	                break;    
		   	        default : break;        
		   	    }
}		   	    