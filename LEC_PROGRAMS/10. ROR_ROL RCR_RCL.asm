.MODEL TINY

.DATA

.CODE

MAIN PROC
    MOV DL, 10011001B
    
    ;ROL = ROTATE LEFT; MSB GOES TO LSB BY SHIFTING 1 CELL LEFT
    
    ;ROL DL, 1 ; 00110011 ; CF = 1 LSB 1; LEFT SHIFT 1 AND MSB VALUE TO LSB
    ;ROL DL, 2 ; 01100110 ; CF = 0 LSB 0; LEFT SHIFT 1 AND MSB TO LEB
    
    ;ROR = ROTATE RIGHT; LSB GOES TO MSB BY SHIFTING 1 CELL RIGHT
    
    ;ROR DL, 1 ; 11001100; CF = 1 MSB 1; RIGHT SHIFT 1 AND LSB VALUE TO MSB
    ;ROR DL, 2 ; 01100110; CF = 0 MSB 0; RIGHT SHIFT 2 AND LSB TO MSB
    
    
    ;RCL -> ROTATE CARRY LEFT; ROTATES MSB WITH CARRY
    
    ;RCL DL, 1  ; CF = 0,  00110010 HERE LSB = CF, CF = 1(THE MSB VALUE WHICH IS LOST)
    ;RCL DL, 2  ; CF = 1,  01100101 HERE LSB = CF, CF = 0(THE MSB VALUE WHICH IS LOST)
    ;RCL DL, 3  ; CF = 0,  11001010 HERE LSB = CF, CF = 0(THE MSB VALUE WHICH IS LOST)
    ;RCL DL, 4  ; CF = 0,  10010100 HERE LSB = CF, CF = 1(THE MSB VALUE WHICH IS LOST)
    

    ;RCR -> ROTATE CARRY RIGHT; ROTATES LSB WITH CARRY
                          ;10011001
    ;RCR DL, 1  ; CF = 0,  01001100 HERE LSB = CF, CF = 1(THE LSB VALUE WHICH IS LOST)
    ;RCR DL, 2  ; CF = 1,  10100110 HERE LSB = CF, CF = 0(THE LSB VALUE WHICH IS LOST)
    ;RCR DL, 3  ; CF = 0,  01010011 HERE LSB = CF, CF = 0(THE LSB VALUE WHICH IS LOST)
    ;RCR DL, 4  ; CF = 0,  00101001 HERE LSB = CF, CF = 1(THE LSB VALUE WHICH IS LOST)
    