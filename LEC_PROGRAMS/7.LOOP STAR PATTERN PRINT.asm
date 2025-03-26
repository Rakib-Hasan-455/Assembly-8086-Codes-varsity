.MODEL TINY

.DATA
M DW 1
N DW 5

.CODE
MAIN PROC
  
  MOV DL, 15D;
  MOV AH, 2H;
  
  MOV BX, N
  INC BX
  L1:  
  MOV CX, N
    L2: INT 21H
    LOOP L2
  MOV DL, 10; FOR NEW LINE
  INT 21H
  MOV DL, 13; FOR NEW LINE
  INT 21H
  MOV DL, 15D; FOR SUN
  DEC BX
  INC N
  MOV CX, BX
  LOOP L1
  
  
      
  
  
    
END