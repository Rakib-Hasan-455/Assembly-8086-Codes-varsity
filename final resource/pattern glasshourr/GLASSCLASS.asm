.MODEL TINY

.DATA

N DW 0
I DW 1
J DB 1
K DW 1
L DW 0

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
    
    INC N
    INC N
    MOV BX, N
    MOV DX, N
    MOV I, DX
    MOV DL, 32
    
    
    ;UPPER TRIANGLE
    L1:
    MOV CX, K    
        L2: INT 21H  ; FOR SPACE
        LOOP L2
    MOV CX, I
    CMP CX, 0
    JE SKIPTO
    MOV J, 1
        L3:
        MOV DL, J
        ADD DL, 48
        INT 21H
        INC J
        LOOP L3
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, 32
    ;DEC BX
    MOV CX, I
    DEC I 
    DEC I
    INC K
    LOOP L1
    
    
    ;LOWER TRIANGLE
    LOWPART:
    MOV DL, 32D 
    DEC K
    MOV BX, K
    CMP N, 2
    JLE ENDD
    
    MOV I, 3
    CMP L, 1
    JE INITI
    
    AFTERI:    
    LL1:
    MOV CX, BX  
    DEC CX
        LL2: INT 21H  ; FOR SPACE
        LOOP LL2
    MOV CX, I    
    ;CMP CX, 0
    ;JMP ENDD
    MOV J, 1
        LL3:
        MOV DL, J
        ADD DL, 48
        INT 21H
        INC J
        LOOP LL3
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, 32
    DEC BX
    MOV CX, BX
    INC I
    INC I  
    LOOP LL1  
    CMP CX, 0
    JE ENDD

    SKIPTO:
    MOV DL, 13
    INT 21H 
    MOV L, 1
    JMP LOWPART
    
    INITI:
    MOV I, 4 
    JMP AFTERI
    
    ENDD:
   EXIT:
    MOV AH, 4CH       ;FOR INPUT
    INT 21H

    INCLUDE INDEC.ASM
    INCLUDE OUTDEC.ASM
END