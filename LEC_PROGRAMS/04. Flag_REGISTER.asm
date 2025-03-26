.MODEL TINY

.CODE
MAIN PROC
    MOV BL, 0B
    MOV DL, 0B
    SUB DL, BL ;Zero flag register = 1, cause result = 0, 0000 0000 - 0000 0000 = 0000 0000                            
    

    MOV BL, 0B
    MOV DL, 0B
    SUB DL, BL ;PF flag register = 1, cause there is even number(0) of 1, 0000 0000 - 0000 0000 = 0000 0000                            
    
    
    MOV BL, 01010011B
    MOV DL, 10010000B
    SUB BL, DL ;CF = 1, cause there is a carry bit 1 after 8 bit.  01010011 -  10010000 = 1 1100 0011

    
    MOV BL, 01010011B
    MOV DL, 10010000B
    SUB BL, DL ;Sign flag = 1 cause MST is 1 at d7 on 8bit.  01010011 -  10010000 = 1 1100 0011

    
    MOV BL, 01010011B
    MOV DL, 10010000B
    SUB BL, DL ;overflow flag = 1 cause after subtracting it doesn't ranges from -127D to 128D.  01010011 -  10010000 = 1 1100 0011 or 451 decimal

    MOV BL, 01000001B
    MOV DL, 01011011B
    SUB BL, DL ;Auxilary flag = 1 cause after subtracting there is carry bit on d3. 0100 0001 - 0101 1011 =  1 1110 0110

    
    MOV AH, 2H 
    INT 21H 
  
               
               
    END