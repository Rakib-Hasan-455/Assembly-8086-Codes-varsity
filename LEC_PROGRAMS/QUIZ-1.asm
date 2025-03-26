.MODEL TINY  
.DATA

STR1 DB "*****    *    *   *    *   *", 10, 13, 10, 13,        "*   *    *    *   *    *   *", 10, 13, 10, 13,          "*   *    *    *****    *****", 10, 13, 10, 13,          "*   *    *        *        *", 10, 13, 10, 13,          "*****    *        *        *$"

.CODE
MAIN PROC
    LEA DX, STR1
    MOV AH, 09H
    INT 21H       
    
END