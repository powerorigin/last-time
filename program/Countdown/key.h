#ifndef KEY_H
#define KEY_H
#include "HT46R064B.h" 
#define KEY_MUM 2
 
#define KEY_UP             0  
#define KEY_DOWN           1
#define KEY_SHORT          2
#define KEY_LONG           3  
  
#define KEY1  _pa7
#define KEY2  _pa1

#define KEY_SHORT_TIME   20
#define  u8  unsigned char   /* unsigned 8 bit type definition */ 
#define s8  signed char   /* signed 8 bit type definition */  
#define  u16  unsigned int   /* unsigned 16 bit type definition */ 
#define  s16  signed int   /* signed 16 bit type definition */ 
#define  u32  unsigned long   /* unsigned 32 bit type definition */ 
#define s32  signed long   /* signed 32 bit type definition */ 

void key_Scan(void);
void Key_Init(void);

#endif /* KEY_H */