#pragma debug scope 1 1
#line 15 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
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
@TM_INIT .SECTION 'CODE'
PUBLIC _TM_INIT
_TM_INIT PROC
#pragma debug scope 2 1 ; 16 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
#line 16 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,06h
MOV __tmr0,A
#line 17 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,094h
MOV __tmr0c,A
#line 18 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
SET [0BH].2
#line 19 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
SET [0DH].4
#line 20 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
SET [0BH].0
#line 21 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
CLR _timeSeconds
CLR _timeSeconds[1]
CLR _timeSeconds[2]
CLR _timeSeconds[3]
#line 22 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
CLR _timems
CLR _timems[1]
CLR _timems[2]
CLR _timems[3]
#line 23 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
CLR _timeflag
L1:
RET
_TM_INIT ENDP
#line 30 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
@@TM_ISR .SECTION AT 08H 'CODE'
JMP _TM_ISR
@TM_ISR .SECTION 'CODE'
_TM_ISR PROC
MOV V2A,A
MOV A,[0AH]
MOV V2S,A
#pragma debug scope 3 1 ; 31 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
#line 31 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,06h
MOV __tmr0,A
#line 32 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
INC _timems
SZ [0AH].2
INC _timems[1]
SZ [0AH].2
INC _timems[2]
SZ [0AH].2
INC _timems[3]
#line 33 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,01h
MOV _timeflag,A
#line 34 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,00h
SUB A,_timems[3]
SNZ [0ah].0
JMP L7
SNZ [0ah].2
JMP L3
MOV A,00h
SUB A,_timems[2]
SNZ [0Ah].0
JMP L7
SNZ [0Ah].2
JMP L3
MOV A,0eah
SUB A,_timems[1]
SNZ [0Ah].0
JMP L7
SNZ [0Ah].2
JMP L3
MOV A,060h
SUB A,_timems
SZ [0ah].0
JMP L3
L7:
#pragma debug scope 4 3 ; 36 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
#line 36 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
CLR _timems
CLR _timems[1]
CLR _timems[2]
CLR _timems[3]
#line 37 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,_timeSeconds
OR A,_timeSeconds[1]
SNZ [0ah].2
JMP L8
OR A,_timeSeconds[2]
SNZ [0Ah].2
JMP L8
OR A,_timeSeconds[3]
SZ [0Ah].2
JMP L5
L8:
#line 38 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
MOV A,_timeSeconds
SUB A,01h
MOV _timeSeconds,A
SZ [0AH].0
JMP $+11
MOV A,_timeSeconds[1]
SUB A,1
MOV _timeSeconds[1],A
SZ [0AH].0
JMP $+6
MOV A,_timeSeconds[2]
SUB A,1
MOV _timeSeconds[2],A
SNZ [0AH].0
DEC _timeSeconds[3]
L5:
L3:
L2:
MOV A,V2S
MOV [0AH],A
MOV A,V2A
RETI
_TM_ISR ENDP
@TM_ISR .SECTION 'DATA'
PUBLIC _timems
@timems .SECTION 'DATA'
#line 9 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
_timems DB 4 DUP (?) ; timems
#pragma debug variable 14 1 _timems timems
PUBLIC _timeflag
@timeflag .SECTION 'DATA'
#line 7 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
_timeflag DB ? ; timeflag
#pragma debug variable 8 1 _timeflag timeflag
PUBLIC _timeSeconds
@timeSeconds .SECTION 'DATA'
#line 8 "E:\project\給數奀脣釱\Countdown\CLOCK.c"
_timeSeconds DB 4 DUP (?) ; timeSeconds
#pragma debug variable 14 1 _timeSeconds timeSeconds
EXTERN V2A:BYTE
EXTERN V2S:BYTE
