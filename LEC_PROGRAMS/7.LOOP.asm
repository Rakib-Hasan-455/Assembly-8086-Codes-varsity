.MODEL TINY

.DATA

.CODE
MAIN PROC
  
  MOV DL, 3 
  MOV CX, 255
  MOV AH, 2H
  L1: MOV DL, CL
  INT 21H
  LOOP L1: 
  
  MOV DL, 20H
  INT 21H
  
    
    
END