.MODEL TINY

.DATA
N DW 0
I DW 1
J DB 1
K DW 2
.CODE

MAIN PROC     
    
    CALL INDEC              
    MOV DL,AL
    ;SUB DL,48D
    MOV N,DX 
    ;CALL OUTDEC
    CALL VANISHLINE
        
    VANISHLINE PROC
     MOV AH,2  
     MOV DL, 10
     INT 21H
     MOV DL,13
     INT 21H
    ; MOV DL,15 
    VANISHLINE ENDP
    
    MOV DL,32
    MOV BX,N
    INC BX  
    
    CMP N, 1
    JLE ENDD
    
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
        INC J
        ADD DL,48     ;L3 IS FOR PRITING VALUES OF J
        INT 21H
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
    ;MOV I,2 
    DEC I
    DEC I
    DEC I
    DEC I
    MOV DL,32D
    MOV BX,N
    LL1:
    MOV CX,K  
        LL2: INT 21H   ;LL2 IS FOR PRINTING SPACE
        LOOP LL2
     MOV CX,I    
     MOV AH, 1
        LL3: 
        
        MOV DL,J
        INC J
        ADD DL,48      ;LL3 IS FOR PRITING VALUES OF J
        INT 21H
        LOOP LL3
        
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    MOV DL,32    ; for space
    DEC BX
    MOV CX,BX
    DEC I
    DEC I 
    INC K    
    LOOP LL1     ;LL1 KEEPS TRACK OF TOTAL NUMBER OF LINES PRINTED      
    
    ENDD:
    
    EXIT:
    MOV AH, 4CH       ;FOR INPUT
    INT 21H

    INCLUDE INDEC.ASM
    INCLUDE OUTDEC.ASM

END MAIN