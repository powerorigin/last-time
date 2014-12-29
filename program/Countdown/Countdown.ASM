#pragma debug scope 1 1
#line 9 "E:\project\給數奀脣釱\Countdown\Countdown.c"
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
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 2 1 ; 10 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#line 10 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,050h
MOV CR1,A
MOV A,0c3h
MOV CR1[1],A
#line 11 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CALL _Key_Init
#line 12 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CALL _Led_Init
L2:
L3:
#line 13 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,CR1
MOV b0_1,A
MOV A,CR1[1]
MOV b0_1[1],A
MOV A,b0_1
SUB A,01h
MOV CR1,A
MOV A,b0_1[1]
SNZ [0Ah].0
DEC [05h]
MOV CR1[1],A
SZ b0_1
JMP L2
SZ b0_1[1]
JMP L2
#line 14 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CALL _TM_INIT
#line 16 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CLR [0BH].0
#line 17 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,05h
MOV __ctrl1,A
#line 18 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,07h
MOV __wdts,A
#line 19 "E:\project\給數奀脣釱\Countdown\Countdown.c"
SET [0BH].0
#line 19 "E:\project\給數奀脣釱\Countdown\Countdown.c"
JMP L6
L5:
#pragma debug scope 3 2 ; 22 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#line 22 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CLR WDT1
#line 23 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CLR WDT2
#line 24 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,_timeflag
XOR A,01h
SNZ [0ah].2
JMP L8
#pragma debug scope 4 3 ; 26 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#line 26 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CLR _timeflag
#line 27 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,_timeSeconds
OR A,_timeSeconds[1]
SNZ [0ah].2
JMP L12
OR A,_timeSeconds[2]
SNZ [0Ah].2
JMP L12
OR A,_timeSeconds[3]
SZ [0Ah].2
JMP L10
L12:
#pragma debug scope 5 4 ; 29 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#line 29 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CALL _led_state
#line 30 "E:\project\給數奀脣釱\Countdown\Countdown.c"
SET [010H].4
#line 31 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#pragma debug scope 4 3 ; 31 "E:\project\給數奀脣釱\Countdown\Countdown.c"
JMP L11
L10:
#pragma debug scope 6 4 ; 34 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#line 34 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CLR [010H].4
#line 35 "E:\project\給數奀脣釱\Countdown\Countdown.c"
MOV A,00h
MOV Led_On0,A
CALL _Led_On
L11:
L8:
#line 40 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#pragma debug scope 3 2 ; 40 "E:\project\給數奀脣釱\Countdown\Countdown.c"
CALL _key_Scan
L6:
#line 20 "E:\project\給數奀脣釱\Countdown\Countdown.c"
#pragma debug scope 2 1 ; 20 "E:\project\給數奀脣釱\Countdown\Countdown.c"
JMP L5
L1:
#line 42 "E:\project\給數奀脣釱\Countdown\Countdown.c"
JMP $
LOCAL b0_1 DB 2 DUP(?)
#line 10 "E:\project\給數奀脣釱\Countdown\Countdown.c"
LOCAL CR1 DB 2 DUP (?) ; time
#pragma debug variable 12 2 CR1 time
_main ENDP
EXTERN Led_On0:BYTE
EXTERN _TM_INIT:NEAR
EXTERN _timeflag:BYTE
EXTERN _timeSeconds:BYTE
EXTERN _Led_On:NEAR
EXTERN _led_state:NEAR
EXTERN _Led_Init:NEAR
EXTERN _Key_Init:NEAR
EXTERN _key_Scan:NEAR
#line 8 "E:\project\給數奀脣釱\Countdown\Countdown.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
#line 8 "E:\project\給數奀脣釱\Countdown\Countdown.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
