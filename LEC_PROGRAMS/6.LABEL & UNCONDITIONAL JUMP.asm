.MODEL TINY   

.DATA    
X DB '2'
Y DB '4'  
Z DB '4'

.CODE  


MAIN PROC  
    
MOV CL, 245
MOV AH, 2  
    
PRINTXYZ:

CMP Y, '0'      
JE DECX

PRINTXYZX:   
MOV DL, X
INT 21H

MOV DL, Y
INT 21H

MOV DL, Z
INT 21H    

MOV DL, ','
INT 21H

MOV DL, ' '
INT 21H   

DEC CL
CMP CL, 0
JE FINISH

CMP Z, '0'
JE DECY
DEC Z
JNE PRINTXYZ


DECY:
DEC Y
MOV Z, '9'
JMP PRINTXYZ

DECX:
CMP Z, '0'
JE DECXX:
JNE PRINTXYZX
DECXX:
DEC X
MOV Y, '9'
JMP PRINTXYZ

FINISH: 
END

    ;JZ, JE       -> JUMP IF ZERO        ZF = 1  JNZ, JNE  ZF != 1
    ;JC, JB, JNAE -> JUMP IF CARRY       CF = 1  JNC
    ;JS           -> JUMP IF SIGN        SF = 1  JNS
    ;JO           -> JUMP IF OVERFLOW    OF = 1  JNO
    ;JP,JPE       -> JUMP IF PARITY EVEN PF = 1  JNP, JPO 
    
    ;JE     ==      -> JUMP IF EQUAL
    ;JNE    !=      -> JUMP IF NOT EQUAL
    ;JG     >       -> JUMP IF GREATER
    ;JNLE   !<=     -> JUMP IF NOT LESS OR EQUAL
    ;JL     <       -> JUMP IF LESS
    ;JNGE   !>=     -> JUMP IF NOT GREATER OR EQUAL
    ;JGE    >=      -> JUMP IF GREATER OR EQUAL
    ;JNL    !<      -> JUMP IF NOT LESS
    ;JLE    <=      -> JUMP IF LESS OR EQUAL
    ;JNG    !>      -> JUMP IF NOT GREATER
    
    ;CMP = COMPARE
    ;MOV BL, 5
    ;CMP BL, 6
    
    ;JG L1
    ;JNG ENDD
    
    ;L1:
    ;MOV DL, 49
    ;MOV AH, 2
    ;INT 21H        
  
