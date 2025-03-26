MAIN PROC 
    
   MOV DL, 32H ;STORING "M" AS 32H INSIDE DL=8 BIT
   
   MOV AH, 02H ;SHOW SOMETHING IN OUTPUT
   INT 21H     ;SHOWING SOMETHING BY CALLING INTERRUPT
   
   MOV DL, 30H
   INT 21H  
   
   MOV DL, 32H
   INT 21H
   
   MOV DL, 30H
   INT 21H        
   
   MOV DL, 30H
   INT 21H
   
   MOV DL, 30H
   INT 21H  
   
   MOV DL, 30H
   INT 21H
   
   MOV DL, 30H
   INT 21H
   
   MOV DL, 30H
   INT 21H
   
   MOV DL, 30H
   INT 21H
   
   MOV DL, 31H
   INT 21H  
   
   MOV DL, 34H
   INT 21H      
   
   MOV DL, 34H
   INT 21H       
   
   MOV DL, 20H
   INT 21H  
   
   MOV DL, 0C4H   ; - 
   INT 21H       
   
   MOV DL, 20H
   INT 21H      
   
   MOV DL, 4DH
   INT 21H      
           
   
   MOV DL, 64H
   INT 21H           
   
   MOV DL, 2EH
   INT 21H      
   
   MOV DL, 20H
   INT 21H  
   
   MOV DL, 52H
   INT 21H   
   
   MOV DL, 61H
   INT 21H   
   
   MOV DL, 6BH
   INT 21H        
   
   MOV DL, 69H
   INT 21H   
   
   MOV DL, 62H
   INT 21H          
   
   MOV DL, 75H
   INT 21H   
   
   MOV DL, 6CH
   INT 21H    
   
   MOV DL, 20H
   INT 21H  
   
   MOV DL, 48H
   INT 21H   
   
   MOV DL, 61H
   INT 21H   
   
   MOV DL, 73H
   INT 21H  
   
   MOV DL, 61H
   INT 21H      
   
   MOV DL, 6EH
   INT 21H
   

END
;END TO END THE WHOLE PROGRAM
;ENDP TO END THE FUNCTION    