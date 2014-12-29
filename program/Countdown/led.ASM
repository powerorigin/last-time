#pragma debug scope 1 1
#line 6 "E:\project\給數奀脣釱\Countdown\led.c"
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
@Led_Init .SECTION 'CODE'
PUBLIC _Led_Init
_Led_Init PROC
#pragma debug scope 2 1 ; 7 "E:\project\給數奀脣釱\Countdown\led.c"
#line 7 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pawk
#line 8 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,083h
MOV __pac,A
#line 9 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,07eh
MOV __papu,A
#line 10 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pbc
#line 11 "E:\project\給數奀脣釱\Countdown\led.c"
SET __pbpu
#line 13 "E:\project\給數奀脣釱\Countdown\led.c"
CLR [010H].4
#line 14 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,00h
MOV Led_On0,A
CALL _Led_On
L1:
RET
_Led_Init ENDP
#line 18 "E:\project\給數奀脣釱\Countdown\led.c"
@Led_On .SECTION 'CODE'
PUBLIC _Led_On
_Led_On PROC
#pragma debug scope 3 1
#line 17 "E:\project\給數奀脣釱\Countdown\led.c"
PUBLIC Led_On0
LOCAL Led_On0 DB ? ; bits
#pragma debug variable 8 3 Led_On0 bits
#pragma debug scope 3 1 ; 19 "E:\project\給數奀脣釱\Countdown\led.c"
#line 19 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,Led_On0
MOV b0_2,A
SZ b0_2
JMP L16
JMP L5
L16:
MOV A,b0_2
XOR A,01h
SZ [0ah].2
JMP L6
MOV A,b0_2
XOR A,02h
SZ [0ah].2
JMP L7
MOV A,b0_2
XOR A,03h
SZ [0ah].2
JMP L8
MOV A,b0_2
XOR A,04h
SZ [0ah].2
JMP L9
MOV A,b0_2
XOR A,05h
SZ [0ah].2
JMP L10
MOV A,b0_2
XOR A,06h
SZ [0ah].2
JMP L11
MOV A,b0_2
XOR A,07h
SZ [0ah].2
JMP L12
MOV A,b0_2
XOR A,08h
SZ [0ah].2
JMP L13
MOV A,b0_2
XOR A,09h
SZ [0ah].2
JMP L14
MOV A,b0_2
XOR A,0ah
SZ [0ah].2
JMP L15
#line 19 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L5:
#pragma debug scope 4 3 ; 21 "E:\project\給數奀脣釱\Countdown\led.c"
#line 21 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,06ch
ORM A,__pa
#line 22 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,03fh
ORM A,__pb
#line 23 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L6:
#line 24 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,060h
ORM A,__pa
#line 25 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pb.3
#line 26 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,030h
ORM A,__pb
#line 27 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L7:
#line 28 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,060h
ORM A,__pa
#line 29 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pb.4
#line 30 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,028h
ORM A,__pb
#line 31 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L8:
#line 32 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,060h
ORM A,__pa
#line 33 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pb.5
#line 34 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,018h
ORM A,__pb
#line 35 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L9:
#line 36 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pa.6
#line 37 "E:\project\給數奀脣釱\Countdown\led.c"
SET __pa.5
#line 38 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,038h
ORM A,__pb
#line 39 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L10:
#line 40 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pa.5
#line 41 "E:\project\給數奀脣釱\Countdown\led.c"
SET __pa.6
#line 42 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,038h
ORM A,__pb
#line 43 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L11:
#line 44 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pb.2
#line 45 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,03h
ORM A,__pb
#line 46 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,0ch
ORM A,__pa
#line 47 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L12:
#line 48 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pb.1
#line 49 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,05h
ORM A,__pb
#line 50 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,0ch
ORM A,__pa
#line 51 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L13:
#line 52 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pb.0
#line 53 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,06h
ORM A,__pb
#line 54 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,0ch
ORM A,__pa
#line 55 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L14:
#line 56 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pa.2
#line 57 "E:\project\給數奀脣釱\Countdown\led.c"
SET __pa.3
#line 58 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,07h
ORM A,__pb
#line 59 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L4
L15:
#line 60 "E:\project\給數奀脣釱\Countdown\led.c"
CLR __pa.3
#line 61 "E:\project\給數奀脣釱\Countdown\led.c"
SET __pa.2
#line 62 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,07h
ORM A,__pb
L4:
L2:
RET
LOCAL b0_2 DB ?
_Led_On ENDP
#line 69 "E:\project\給數奀脣釱\Countdown\led.c"
@led_state .SECTION 'CODE'
PUBLIC _led_state
_led_state PROC
#pragma debug scope 5 1 ; 71 "E:\project\給數奀脣釱\Countdown\led.c"
#line 71 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,_timeSeconds
MOV T2,A
MOV A,_timeSeconds[1]
MOV RH,A
MOV A,_timeSeconds[2]
MOV RM,A
MOV A,_timeSeconds[3]
MOV RU,A
MOV A,00h
MOV T6,A
MOV A,00h
MOV T5,A
MOV A,00h
MOV T4,A
MOV A,078h
MOV T3,A
CALL DIVUL4
MOV A,T10
MOV CR2[3],A
MOV A,T9
MOV CR2[2],A
MOV A,T8
MOV CR2[1],A
MOV A,T7
MOV CR2,A
#line 72 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,013h
ADD A,CR2
MOV b0_3,A
MOV A,00h
ADC A,CR2[1]
MOV b0_3[1],A
MOV A,00h
ADC A,CR2[2]
MOV b0_3[2],A
MOV A,00h
ADC A,CR2[3]
MOV b0_3[3],A
MOV A,b0_3
MOV T2,A
MOV A,b0_3[1]
MOV RH,A
MOV A,b0_3[2]
MOV RM,A
MOV A,b0_3[3]
MOV RU,A
MOV A,00h
MOV T6,A
MOV A,00h
MOV T5,A
MOV A,00h
MOV T4,A
MOV A,014h
MOV T3,A
CALL DIVUL4
MOV A,RU
MOV CR3[3],A
MOV A,RM
MOV CR3[2],A
MOV A,RH
MOV CR3[1],A
MOV A,T2
MOV CR3,A
#line 72 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,CR3
OR A,CR3[1]
SNZ [0ah].2
JMP L38
OR A,CR3[2]
SNZ [0Ah].2
JMP L38
OR A,CR3[3]
SZ [0Ah].2
JMP L21
L38:
MOV A,CR3
XOR A,01h
SNZ [0ah].2
JMP L39
MOV A,CR3[1]
XOR A,00h
SNZ [0ah].2
JMP L39
MOV A,CR3[2]
XOR A,00h
SNZ [0ah].2
JMP L39
MOV A,CR3[3]
XOR A,00h
SZ [0ah].2
JMP L24
L39:
MOV A,CR3
XOR A,02h
SNZ [0ah].2
JMP L40
MOV A,CR3[1]
XOR A,00h
SNZ [0ah].2
JMP L40
MOV A,CR3[2]
XOR A,00h
SNZ [0ah].2
JMP L40
MOV A,CR3[3]
XOR A,00h
SZ [0ah].2
JMP L25
L40:
MOV A,CR3
XOR A,03h
SNZ [0ah].2
JMP L41
MOV A,CR3[1]
XOR A,00h
SNZ [0ah].2
JMP L41
MOV A,CR3[2]
XOR A,00h
SNZ [0ah].2
JMP L41
MOV A,CR3[3]
XOR A,00h
SZ [0ah].2
JMP L26
L41:
MOV A,CR3
XOR A,04h
SNZ [0ah].2
JMP L42
MOV A,CR3[1]
XOR A,00h
SNZ [0ah].2
JMP L42
MOV A,CR3[2]
XOR A,00h
SNZ [0ah].2
JMP L42
MOV A,CR3[3]
XOR A,00h
SZ [0ah].2
JMP L27
L42:
MOV A,CR3
XOR A,05h
SNZ [0ah].2
JMP L43
MOV A,CR3[1]
XOR A,00h
SNZ [0ah].2
JMP L43
MOV A,CR3[2]
XOR A,00h
SNZ [0ah].2
JMP L43
MOV A,CR3[3]
XOR A,00h
SZ [0ah].2
JMP L28
L43:
#line 72 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L18
L21:
#pragma debug scope 6 5 ; 74 "E:\project\給數奀脣釱\Countdown\led.c"
#line 74 "E:\project\給數奀脣釱\Countdown\led.c"
SZ CR2
JMP L22
SZ CR2[1]
JMP L22
SZ CR2[2]
JMP L22
SZ CR2[3]
JMP L22
#line 75 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,00h
MOV Led_On0,A
CALL _Led_On
#line 75 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L22:
#line 77 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,01h
MOV Led_On0,A
CALL _Led_On
#line 78 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L24:
#line 79 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,01h
MOV Led_On0,A
CALL _Led_On
#line 80 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L25:
#line 81 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,02h
MOV Led_On0,A
CALL _Led_On
#line 82 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L26:
#line 83 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,03h
MOV Led_On0,A
CALL _Led_On
#line 84 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L27:
#line 85 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,04h
MOV Led_On0,A
CALL _Led_On
#line 86 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L28:
#line 87 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,05h
MOV Led_On0,A
CALL _Led_On
#line 88 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L19
L18:
#line 89 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,060h
ORM A,__pa
#line 90 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,01ch
ORM A,__pb
L19:
#line 93 "E:\project\給數奀脣釱\Countdown\led.c"
#pragma debug scope 5 1 ; 93 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,013h
ADD A,_timeSeconds
MOV b0_3,A
MOV A,00h
ADC A,_timeSeconds[1]
MOV b0_3[1],A
MOV A,00h
ADC A,_timeSeconds[2]
MOV b0_3[2],A
MOV A,00h
ADC A,_timeSeconds[3]
MOV b0_3[3],A
MOV A,b0_3
MOV T2,A
MOV A,b0_3[1]
MOV RH,A
MOV A,b0_3[2]
MOV RM,A
MOV A,b0_3[3]
MOV RU,A
MOV A,00h
MOV T6,A
MOV A,00h
MOV T5,A
MOV A,00h
MOV T4,A
MOV A,078h
MOV T3,A
CALL DIVUL4
MOV A,RU
MOV CR4[3],A
MOV A,RM
MOV CR4[2],A
MOV A,RH
MOV CR4[1],A
MOV A,T2
MOV CR4,A
#line 93 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,CR4
OR A,CR4[1]
SNZ [0ah].2
JMP L44
OR A,CR4[2]
SNZ [0Ah].2
JMP L44
OR A,CR4[3]
SZ [0Ah].2
JMP L32
L44:
MOV A,CR4
XOR A,01h
SNZ [0ah].2
JMP L45
MOV A,CR4[1]
XOR A,00h
SNZ [0ah].2
JMP L45
MOV A,CR4[2]
XOR A,00h
SNZ [0ah].2
JMP L45
MOV A,CR4[3]
XOR A,00h
SZ [0ah].2
JMP L33
L45:
MOV A,CR4
XOR A,02h
SNZ [0ah].2
JMP L46
MOV A,CR4[1]
XOR A,00h
SNZ [0ah].2
JMP L46
MOV A,CR4[2]
XOR A,00h
SNZ [0ah].2
JMP L46
MOV A,CR4[3]
XOR A,00h
SZ [0ah].2
JMP L34
L46:
MOV A,CR4
XOR A,03h
SNZ [0ah].2
JMP L47
MOV A,CR4[1]
XOR A,00h
SNZ [0ah].2
JMP L47
MOV A,CR4[2]
XOR A,00h
SNZ [0ah].2
JMP L47
MOV A,CR4[3]
XOR A,00h
SZ [0ah].2
JMP L35
L47:
MOV A,CR4
XOR A,04h
SNZ [0ah].2
JMP L48
MOV A,CR4[1]
XOR A,00h
SNZ [0ah].2
JMP L48
MOV A,CR4[2]
XOR A,00h
SNZ [0ah].2
JMP L48
MOV A,CR4[3]
XOR A,00h
SZ [0ah].2
JMP L36
L48:
MOV A,CR4
XOR A,05h
SNZ [0ah].2
JMP L49
MOV A,CR4[1]
XOR A,00h
SNZ [0ah].2
JMP L49
MOV A,CR4[2]
XOR A,00h
SNZ [0ah].2
JMP L49
MOV A,CR4[3]
XOR A,00h
SZ [0ah].2
JMP L37
L49:
#line 93 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L30
L32:
#pragma debug scope 7 5 ; 95 "E:\project\給數奀脣釱\Countdown\led.c"
#line 95 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,0ch
ORM A,__pa
#line 96 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,07h
ORM A,__pb
#line 97 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L30
L33:
#line 98 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,06h
MOV Led_On0,A
CALL _Led_On
#line 99 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L30
L34:
#line 100 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,07h
MOV Led_On0,A
CALL _Led_On
#line 101 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L30
L35:
#line 102 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,08h
MOV Led_On0,A
CALL _Led_On
#line 103 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L30
L36:
#line 104 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,09h
MOV Led_On0,A
CALL _Led_On
#line 105 "E:\project\給數奀脣釱\Countdown\led.c"
JMP L30
L37:
#line 106 "E:\project\給數奀脣釱\Countdown\led.c"
MOV A,0ah
MOV Led_On0,A
CALL _Led_On
L30:
L17:
RET
LOCAL b0_3 DB 4 DUP(?)
#line 70 "E:\project\給數奀脣釱\Countdown\led.c"
LOCAL CR2 DB 4 DUP (?) ; temp
#pragma debug variable 14 5 CR2 temp
LOCAL CR3 DB 4 DUP (?) ; 20
LOCAL CR4 DB 4 DUP (?) ; 31
_led_state ENDP
EXTERN _timeSeconds:BYTE
EXTERN RH:BYTE
EXTERN RM:BYTE
EXTERN RU:BYTE
EXTERN T2:BYTE
EXTERN T3:BYTE
EXTERN T4:BYTE
EXTERN T5:BYTE
EXTERN T6:BYTE
EXTERN T7:BYTE
EXTERN T8:BYTE
EXTERN T9:BYTE
EXTERN T10:BYTE
EXTERN T11:BYTE
EXTERN T12:BYTE
EXTERN T13:BYTE
EXTERN DIVUL4:NEAR
