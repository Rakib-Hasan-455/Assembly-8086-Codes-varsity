;Logical operator -> AND OR NOT XOR NEG

.MODEL TINY

.DATA

.CODE
.MAIN PROC
    
    ;AND
    MOV BL, 11110010B
    MOV DL, 00101110B
    ;AND    00100010   => A*B
    ;OR     11111110   => A+B
    ;XOR    11011100   => 1+1=0 (A+B)
    ;NOT BL 00001101   => ULTA VALUE OF BL => 1S COMPLEMENT
    ;NEG 254 => 2S COMPLIMENT => -254
    ; 1S COMPLEMENT+1
    
    
    ;AND DESTINATION, SOURCE
    AND DL, BL
    
    ;OR DL, BL 
    
    ;XOR 
    
    MOV AH, 2
    INT 21H
    
    
END