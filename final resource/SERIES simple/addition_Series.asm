.MODEL TINY

.DATA      
INPLINE DB 'The Value Of N $'
N DB 0D   



.CODE       
MAIN PROC

    LEA DX, INPLINE
    MOV AH, 09H
    INT 21H
    

    CALL INDEC      ;INPUT
    
    MOV CX, AX 
    MOV N, AL    
    
    MOV AX, 1H
    MOV DX, 0H
    ADD DX, AX 
    DEC CL    
   
    MULP: 
        INC AX
        INC AX
        ADD DX, AX          
    LOOP MULP 
   
    MOV BX, DX
    
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