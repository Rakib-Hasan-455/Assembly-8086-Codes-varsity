.MODEL TINY
.DATA
   STR DB '0'
   
   MSG_PD DB "IT'S PALINDROME$"
   MSG_NPD DB "IT'S NOT PALINDROME$"
   
.CODE
    MOV SI,0 ;input indexing
    MOV DI,0 ;output indexing
    MOV CX,0 ;size of string
   INP: MOV AH, 1
        INT 21H
        MOV STR[SI],AL
        INC CX
        INC SI
        CMP AL, 13
        JE NL
        JMP INP
        
   NL: 
   MOV AH, 2
        MOV DL, 10
        INT 21H
        MOV DL,13
        INT 21H
        DEC CX
        MOV DI, CX
        MOV SI, 0
      
      OP:       
      DEC DI
      ;CMP STR[DI], STR[SI]
      MOV DL, STR[DI]
      ;INT 21H        
      MOV BL, STR[SI]
      INC SI        
      ;INT 21H 
      CMP DL, BL
      JNE PRINTNPD
      LOOP OP
      
      PRINTPD:   
      LEA DX, MSG_PD
      MOV AH, 09H
      INT 21H
      JMP ENDD
      
      PRINTNPD:  
      LEA DX, MSG_NPD
      MOV AH, 09H
      INT 21H
      
      ENDD:
END