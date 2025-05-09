.MODEL TINY

.DATA
N DW 0
I DW 1
J DB 1
.CODE

MAIN PROC
    
    MOV AH,1       ;FOR INPUT
    INT 21H
    MOV DL,AL
    SUB DL,48D
    MOV N,DX
    
    MOV AH,2
    INT 21H
    MOV DL,13
    INT 21H
    MOV DL,15
    
    MOV DL,32
    MOV BX,N
    INC BX  
    
    ;UPPER TRIANGLE
    L1:
    MOV CX,BX
    DEC CX
        L2: INT 21H   ;L2 IS FOR PRINTING SPACE
        LOOP L2
     MOV CX,I
     MOV J,1   
        L3: 
        MOV DL,J
        ADD DL,48     ;L3 IS FOR PRITING VALUES OF J
        INT 21H
        INC J
        LOOP L3        
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    MOV DL,32    ; for space
    DEC BX
    MOV CX,BX
    INC I
    INC I
    LOOP L1      ;L1 KEEPS TRACK OF TOTAL NUMBER OF LINES PRINTED   
    
    
    ;LOWER TRIANGLE    
    MOV J,1  
    MOV I,2 
    MOV DL,32D
    MOV BX,N
    ;DEC BX
    LL1:
    MOV CX,I  
        LL2: INT 21H   ;LL2 IS FOR PRINTING SPACE
        LOOP LL2
     MOV CX,N
     MOV J,1   
        LL3: 
        MOV DL,J
        ADD DL,48      ;LL3 IS FOR PRITING VALUES OF J
        INT 21H
        INC J
        LOOP LL3
        
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    MOV DL,32    ; for space
    DEC BX
    MOV CX,BX
    INC I
    DEC N
    DEC N
    LOOP LL1     ;LL1 KEEPS TRACK OF TOTAL NUMBER OF LINES PRINTED
END