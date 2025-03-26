;.MODEL TINY  ;ONE SEGEMENT = CODE, DATA, STACK SAME SEGMENT
;.MODEL SMALL;TWO SEGMENT = 1, CODE , 2, DATA+STACK
;.MODEL LARGE;THREE SEGMENT = 1, CODE 2, DATA 3, STACK   

.MODEL SMALL
.CODE ;WRITING IN CODE SEGMENT

MAIN PROC       
    ;MOV AH, 1H ==> INPUT
    ;MOV AH, 2H ==> OUTPUT
    
    ;MOV DL, 30H
    ;MOV AH, 2H
    ;INT 21H       
    
     
    
    MOV AH, 1H    ;FOR INPUT
    INT 21H       ; IN CONSOLE
    MOV BL, AL        
    
    MOV AH, 1H    ;FOR INPUT
    INT 21H       ; IN CONSOLE
    MOV BH, AL               
    
    MOV AH, 1H    ;FOR INPUT
    INT 21H       ; IN CONSOLE
    MOV CL, AL      
    
    MOV AH, 1H    ;FOR INPUT
    INT 21H       ; IN CONSOLE
    MOV CH, AL            
    
    MOV AH, 1H    ;FOR INPUT
    INT 21H       ; IN CONSOLE
    MOV DH, AL               
    
    MOV DL, 20H                                  
    MOV AH, 2H    ;FOR OUTPUT  " "
    INT 21H       ; IN CONSOLE  
    
    SUB BL, 32D   ; subtract 32D to get uppercase      
    MOV DL, BL    ;R
    MOV AH, 2H 
    INT 21H
                  
    SUB BH, 32D              
    MOV DL, BH    ;A
    MOV AH, 2H 
    INT 21H        
           
    SUB CL, 32D       
    MOV DL, CL    ;K
    MOV AH, 2H 
    INT 21H        
    
    SUB CH, 32D
    MOV DL, CH    ;I
    MOV AH, 2H 
    INT 21H        
    
    SUB DH, 32D
    MOV DL, DH    ;B
    MOV AH, 2H 
    INT 21H       
END