.MODEL TINY
 
 
.DATA

N DW 0

LINE DW 1    

VALUE DB 1  

COUNT DW 1 

COL DW 0    
 
 
.CODE

MAIN PROC
    
    CALL INDEC 
                 
    MOV DL,AL
    MOV N,DX 
    
    CALL NL
     
     
        
    NL PROC
    MOV AH, 2H
       
    MOV DL, 10
     
    INT 21H 
     
    MOV DL,13 
     
    INT 21H   
     
    NL ENDP
    
    
    
    MOV BX, N  
    
    MOV DX, N 
    
    MOV LINE, DX  
    
    MOV DL, 32
    
    INC LINE
    INC LINE
    
    ;ABOVE PART
    LINES1:
    MOV CX, COUNT 
       
    LSPACE1:
     INT 21H   
    LOOP LSPACE1 
     
    MOV CX, LINE
    CMP CX, 0
    JE EXIT
    MOV VALUE, CL 
    
    LCHAR1: 
    MOV DL, VALUE
    ADD DL, 48
    INT 21H
    DEC VALUE
    LOOP LCHAR1:
    
    MOV DL, 10
    INT 21H   
    
    MOV DL, 13
    INT 21H       
    
    MOV DL, 32
    MOV CX, LINE 
    
    DEC LINE 
    DEC LINE 
    
    INC COUNT
    LOOP LINES1   
     
     
    EXIT:
    MOV AH, 4CH    
    INT 21H

    INCLUDE INDEC.ASM 
    
    INCLUDE OUTDEC.ASM 
    
END