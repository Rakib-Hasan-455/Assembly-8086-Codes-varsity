.MODEL TINY
.DATA

STR DB '0'
COUNT DB 1
   
.CODE  
MAIN PROC
    MOV SI,0 ;input indexing
    MOV DI,0 ;output indexing
    MOV CX,0 ;size of string   
    MOV AH, 1
    INP:INT 21H
        MOV STR[SI], AL
        INC CX
        INC SI
        CMP AL, 13
        JE NL
        JMP INP
        
   NL:  MOV AH, 2
        MOV DL, 10
        INT 21H
        MOV DL,13
        INT 21H
        DEC CX
        MOV DI, CX  
      
    OP: DEC DI 
        MOV DL, STR[DI]  
        CMP DL, 20D
        JE INCCNT
        ;INT 21H       
        LOOP OP 
        
   INCCNT:
     INC COUNT
     CMP CX, 0
     JE ENDD
     JNE OP
     
   ENDD:     
   MOV DL, 10D
   INT 21H
   SUB COUNT, 48 ;gets the count value
   MOV DL, COUNT
   INT 21H
          
END