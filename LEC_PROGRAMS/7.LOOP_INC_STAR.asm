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
  COL:  
  MOV CX, M
    ROW: INT 21H
    LOOP ROW 
  INC M
  MOV DL, 10; FOR NEW LINE
  INT 21H
  MOV DL, 13; FOR NEW LINE
  INT 21H
  MOV DL, 15D; FOR SUN
  DEC BX
  MOV CX, BX
  LOOP COL
  
  
      
  
  
    
END