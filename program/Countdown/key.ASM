#pragma debug scope 1 1
#line 12 "E:\project\給數奀脣釱\Countdown\key.c"
__acsr EQU [023H]
__adcr EQU [022H]
__adrh EQU [021H]
__adrl EQU [020H]
__pwm0 EQU [01fH]
__intc1 EQU [01eH]
__ctrl1 EQU [01bH]
__ctrl0 EQU [01aH]
__pcpu EQU [019H]
__pcc EQU [018H]
__pc EQU [017H]
__pbpu EQU [016H]
__pbc EQU [015H]
__pb EQU [014H]
__pawk EQU [013H]
__papu EQU [012H]
__pac EQU [011H]
__pa EQU [010H]
__tmr0c EQU [0dH]
__tmr0 EQU [0cH]
__intc0 EQU [0bH]
__status EQU [0aH]
__wdts EQU [09H]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__mp1 EQU [03H]
__mp0 EQU [01H]
__iar1 EQU [02H]
__iar0 EQU [00H]
@Key_Init .SECTION 'CODE'
PUBLIC _Key_Init
_Key_Init PROC
#pragma debug scope 2 1 ; 13 "E:\project\給數奀脣釱\Countdown\key.c"
#line 13 "E:\project\給數奀脣釱\Countdown\key.c"
CLR _key_stat
#line 14 "E:\project\給數奀脣釱\Countdown\key.c"
CLR _key_stat[1]
L1:
RET
_Key_Init ENDP
#line 31 "E:\project\給數奀脣釱\Countdown\key.c"
@key_Read .SECTION 'CODE'
PUBLIC _key_Read
_key_Read PROC
#pragma debug scope 3 1
#line 30 "E:\project\給數奀脣釱\Countdown\key.c"
PUBLIC key_Read0
LOCAL key_Read0 DB ? ; key
#pragma debug variable 8 3 key_Read0 key
#pragma debug scope 3 1 ; 32 "E:\project\給數奀脣釱\Countdown\key.c"
#line 32 "E:\project\給數奀脣釱\Countdown\key.c"
CLR CR1
#line 34 "E:\project\給數奀脣釱\Countdown\key.c"
SZ key_Read0
JMP L12
JMP L6
L12:
MOV A,key_Read0
XOR A,01h
SZ [0ah].2
JMP L9
#line 34 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L5
L6:
#pragma debug scope 4 3 ; 37 "E:\project\給數奀脣釱\Countdown\key.c"
#line 37 "E:\project\給數奀脣釱\Countdown\key.c"
SZ [010H].7
JMP L5
#pragma debug scope 5 4 ; 39 "E:\project\給數奀脣釱\Countdown\key.c"
#line 39 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,01h
MOV CR1,A
#line 41 "E:\project\給數奀脣釱\Countdown\key.c"
#pragma debug scope 4 3 ; 41 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L5
L9:
#line 44 "E:\project\給數奀脣釱\Countdown\key.c"
SZ [010H].1
JMP L5
#pragma debug scope 6 4 ; 46 "E:\project\給數奀脣釱\Countdown\key.c"
#line 46 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,01h
MOV CR1,A
L5:
#line 53 "E:\project\給數奀脣釱\Countdown\key.c"
#pragma debug scope 3 1 ; 53 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,CR1
L3:
RET
#line 32 "E:\project\給數奀脣釱\Countdown\key.c"
LOCAL CR1 DB ? ; ret
#pragma debug variable 8 3 CR1 ret
_key_Read ENDP
#line 65 "E:\project\給數奀脣釱\Countdown\key.c"
@KeyProcCB .SECTION 'CODE'
PUBLIC _KeyProcCB
_KeyProcCB PROC
#pragma debug scope 7 1
#line 64 "E:\project\給數奀脣釱\Countdown\key.c"
PUBLIC KeyProcCB0
LOCAL KeyProcCB0 DB ? ; keys
#pragma debug variable 8 7 KeyProcCB0 keys
#line 64 "E:\project\給數奀脣釱\Countdown\key.c"
PUBLIC KeyProcCB1
LOCAL KeyProcCB1 DB ? ; stat
#pragma debug variable 8 7 KeyProcCB1 stat
#pragma debug scope 7 1 ; 66 "E:\project\給數奀脣釱\Countdown\key.c"
#line 66 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,KeyProcCB1
XOR A,02h
SNZ [0ah].2
JMP L14
#pragma debug scope 8 7 ; 68 "E:\project\給數奀脣釱\Countdown\key.c"
#line 68 "E:\project\給數奀脣釱\Countdown\key.c"
SZ KeyProcCB0
JMP L24
JMP L18
L24:
MOV A,KeyProcCB0
XOR A,01h
SZ [0ah].2
JMP L21
#line 68 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L17
L18:
#pragma debug scope 9 8 ; 71 "E:\project\給數奀脣釱\Countdown\key.c"
#line 71 "E:\project\給數奀脣釱\Countdown\key.c"
SZ _timeSeconds
JMP L19
SZ _timeSeconds[1]
JMP L19
SZ _timeSeconds[2]
JMP L19
SZ _timeSeconds[3]
JMP L19
#line 72 "E:\project\給數奀脣釱\Countdown\key.c"
CLR _timems
CLR _timems[1]
CLR _timems[2]
CLR _timems[3]
L19:
#line 73 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,014h
ADDM A,_timeSeconds
MOV A,00h
ADCM A,_timeSeconds[1]
MOV A,00h
ADCM A,_timeSeconds[2]
MOV A,00h
ADCM A,_timeSeconds[3]
#line 85 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L17
L21:
#line 87 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,078h
ADDM A,_timeSeconds
MOV A,00h
ADCM A,_timeSeconds[1]
MOV A,00h
ADCM A,_timeSeconds[2]
MOV A,00h
ADCM A,_timeSeconds[3]
L17:
#line 94 "E:\project\給數奀脣釱\Countdown\key.c"
#pragma debug scope 8 7 ; 94 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,00h
SUB A,_timeSeconds[3]
SNZ [0ah].0
JMP L25
SNZ [0ah].2
JMP L22
MOV A,00h
SUB A,_timeSeconds[2]
SNZ [0Ah].0
JMP L25
SNZ [0Ah].2
JMP L22
MOV A,02h
SUB A,_timeSeconds[1]
SNZ [0Ah].0
JMP L25
SNZ [0Ah].2
JMP L22
MOV A,0bch
SUB A,_timeSeconds
SZ [0ah].0
JMP L22
L25:
#line 95 "E:\project\給數奀脣釱\Countdown\key.c"
CLR _timeSeconds
CLR _timeSeconds[1]
CLR _timeSeconds[2]
CLR _timeSeconds[3]
L22:
#line 96 "E:\project\給數奀脣釱\Countdown\key.c"
CALL _led_state
L14:
L13:
RET
_KeyProcCB ENDP
#line 109 "E:\project\給數奀脣釱\Countdown\key.c"
@key_Scan .SECTION 'CODE'
PUBLIC _key_Scan
_key_Scan PROC
#pragma debug scope 10 1 ; 112 "E:\project\給數奀脣釱\Countdown\key.c"
#line 112 "E:\project\給數奀脣釱\Countdown\key.c"
CLR CR2
#line 112 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L30
L27:
#pragma debug scope 11 10 ; 114 "E:\project\給數奀脣釱\Countdown\key.c"
#line 114 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,CR2
MOV key_Read0,A
CALL _key_Read
MOV b0_4,A
MOV A,b0_4
XOR A,01h
SNZ [0ah].2
JMP L31
#pragma debug scope 12 11 ; 116 "E:\project\給數奀脣釱\Countdown\key.c"
#line 116 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,OFFSET _key_stat
ADD A,CR2
MOV [01H],A
MOV A,[00H]
MOV CR4,A
#line 116 "E:\project\給數奀脣釱\Countdown\key.c"
SZ CR4
JMP L39
JMP L36
L39:
#line 116 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L32
L36:
#pragma debug scope 13 12 ; 119 "E:\project\給數奀脣釱\Countdown\key.c"
#line 119 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,CR2
ADD A,OFFSET _key_stat
MOV b0_4,A
MOV A,b0_4
MOV [01H],A
MOV A,01h
MOV [00H],A
#line 133 "E:\project\給數奀脣釱\Countdown\key.c"
#pragma debug scope 11 10 ; 133 "E:\project\給數奀脣釱\Countdown\key.c"
JMP L32
L31:
#pragma debug scope 14 11 ; 136 "E:\project\給數奀脣釱\Countdown\key.c"
#line 136 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,OFFSET _key_stat
ADD A,CR2
MOV [01H],A
MOV A,[00H]
MOV b0_4,A
MOV A,b0_4
XOR A,01h
SNZ [0ah].2
JMP L37
#line 137 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,CR2
MOV KeyProcCB0,A
MOV A,02h
MOV KeyProcCB1,A
CALL _KeyProcCB
L37:
#line 139 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,CR2
ADD A,OFFSET _key_stat
MOV b0_4,A
MOV A,b0_4
MOV [01H],A
MOV A,00h
MOV [00H],A
L32:
L28:
#line 112 "E:\project\給數奀脣釱\Countdown\key.c"
#pragma debug scope 10 1 ; 112 "E:\project\給數奀脣釱\Countdown\key.c"
INC CR2
L30:
#line 112 "E:\project\給數奀脣釱\Countdown\key.c"
MOV A,CR2
SUB A,02h
SNZ [0ah].0
JMP L27
L26:
RET
LOCAL b0_4 DB ?
#line 110 "E:\project\給數奀脣釱\Countdown\key.c"
LOCAL CR2 DB ? ; idx
#pragma debug variable 8 10 CR2 idx
LOCAL CR4 DB ? ; 35
_key_Scan ENDP
PUBLIC _key_stat
@key_stat .SECTION 'DATA'
#line 9 "E:\project\給數奀脣釱\Countdown\key.c"
_key_stat DB 2 DUP (?) ; key_stat
#pragma debug struct_begin 42 KeyStatStruct
#pragma debug field 0 8 state
#pragma debug struct_end
#pragma debug array 43 42 2 1 _key_stat key_stat
EXTERN _led_state:NEAR
EXTERN _timems:BYTE
EXTERN _timeSeconds:BYTE
