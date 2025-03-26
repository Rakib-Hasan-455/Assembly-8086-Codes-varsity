.MODEL TINY

.DATA  



N DW 0

LINE DW 1         

CNT DW 2

COL DB 1


.CODE
MAIN PROC
    
    MOV AH, 1      
    INT 21H
    MOV DL, AL
    SUB DL, 48D
    MOV N, DX     
    MOV AH, 2
    INT 21H
    MOV DL, 13D
    INT 21H
    MOV DL, 15D
    MOV DL, 32D
    MOV BX, N
    INC BX  
                
    LINES1:
    MOV CX, BX
    DEC CX
    
    LSPACE1: 
    INT 21H   
    LOOP LSPACE1
    
    MOV CX, LINE
    MOV COL, 1   
   
    LCHAR1: 
    MOV DL, CL
    ADD DL, 48D     
    INT 21H
    INC COL
    LOOP LCHAR1        
    
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    MOV DL,32     
    DEC BX   
    INC LINE    
    MOV CX, BX
    INC LINE   
    LOOP LINES1  
    
    DOWNPART:
    MOV DL,32D
    MOV BX,N 
    DEC LINE
    DEC LINE
    DEC LINE
    DEC LINE
    
    LINES2:
    MOV CX, CNT  
    
    SPACE2:
    INT 21H  
    LOOP SPACE2
    
    MOV CX, LINE
    MOV COL, 1   
    
    CHAR2: 
    MOV DL,DL
    ADD DL,48 
    INT 21H
    INC COL
    LOOP CHAR2
    
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    MOV DL,32  
    DEC BX  
    MOV CX, BX
    DEC LINE
    DEC LINE 
    INC CNT    
    LOOP LINES2
    
    FINISH:
END