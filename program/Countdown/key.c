#include "key.h"
#include "CLOCK.h"
#include "led.h"

struct KeyStatStruct
{
    u8  state;
 //   u16  time;
} key_stat[KEY_MUM];

void Key_Init(void)
{		
	key_stat[0].state = KEY_UP;
	key_stat[1].state = KEY_UP;
	
	
	
}


/*********************************************************************
 * @fn      key_Read
 *
 * @brief   key read.
 *
 * @param   key - key no
 *
 * @return  key status
 */
u8 key_Read(u8 key)
{
    u8 ret = KEY_UP;
    
    switch(key)
    {
    case 0:
        if(KEY1 == 0)
        {
            ret = KEY_DOWN;
        }
        break;
      
    case 1:
        if(KEY2 == 0)
        {
            ret = KEY_DOWN;
        }
        break;     
      
    default:
        break;
    }   
    return ret;
}
/*********************************************************************
 * @fn      KeyProcCB
 *
 * @brief   按键处理回调函数.
 *
 * @param   none
 *
 * @return  none
 */
void KeyProcCB(u8 keys, u8 stat)
{
    if(stat == KEY_SHORT)
    { 
        switch(keys)
        {
        //TARIFF KEY  
        case 0:  if(timeSeconds == 0)
       				 timems = 0;
                  timeSeconds += 20;
         /*         if(timeSeconds%120 <20)
                  {
                  	 if(timeSeconds/120 == 1)
                  	     timeSeconds = 0;
                  	 else    
                         timeSeconds = timeSeconds-120-timeSeconds%120;
                  } 
                  if(timeSeconds%120 > 100)
                  {
                  	timeSeconds = timeSeconds-timeSeconds%120;
                  }*/
            break;
        //POWER KEY    
        case 1:   timeSeconds += 120;  
                  
            break; 
              
        default:
            break;
        }
        if(timeSeconds > 700)
             timeSeconds = 0;                           
        led_state();      	
    }
}
/*********************************************************************
 * @fn      key_Scan
 *
 * @brief   key scan.
 *
 * @param   none
 *
 * @return  none
 */
void key_Scan(void)
{
    u8 idx;
    
    for(idx = 0; idx < KEY_MUM; idx ++)
    {
        if(KEY_DOWN == key_Read(idx))
        {
            switch(key_stat[idx].state)
            {
            case KEY_UP:
                key_stat[idx].state = KEY_DOWN;
                break;         
        /*    case KEY_DOWN:
                key_stat[idx].time ++;
                if(key_stat[idx].time >= KEY_SHORT_TIME)
                {
                    KeyProcCB(idx, KEY_SHORT);
                   
                }
                break; */
                
            default:
                break;
            }
        }
        else
        {    
        	if(key_stat[idx].state == KEY_DOWN)
        	    KeyProcCB(idx, KEY_SHORT);                   
        //    key_stat[idx].time = 0;
            key_stat[idx].state = KEY_UP;
        }
    }
}
