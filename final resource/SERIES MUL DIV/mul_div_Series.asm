.MODEL TINY

.DATA      
INPLINE DB 'N: $'
N DB 0D
MULTIPLIER DB 2D 


.CODE       
MAIN PROC

    LEA DX, INPLINE
    MOV AH, 09H
    INT 21H
    
    ;MOV AH, 01H  ;INPUT
    ;INT 21H
    
    CALL INDEC
    
    ;SUB AL, 48D
    MOV CX, AX 
    MOV N, AL    
    
    
    MOV AX, 1H
    MOV DX, 0H
    ADD DX, AX 
    DEC CL    
   
    MULP:
        MUL MULTIPLIER
        ADD DX, AX  
    LOOP MULP 
   
    MOV AX, DX
    MOV DH, 0H
    MOV DL, N
    ADD DL, DL
    DIV DL          ; AX = AX VALUE/DL
    MOV BX, AX
    
     MOV AH,2  
     MOV DL, 10
     INT 21H
     MOV DL,13
     INT 21H   
    
    MOV BH, 0
    MOV AX, BX
    CALL OUTDEC 
     
    EXIT:
        MOV AH, 4CH       
        INT 21H
    
    MOV AH,2  
     MOV DL, 10
     INT 21H
     MOV DL,13
     INT 21H   
     
    INCLUDE INDEC.ASM
    INCLUDE OUTDEC.ASM 
END