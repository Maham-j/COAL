;character count
.MODEL SMALL
.STACK 100h
.data
str1 db 100 dup('$')
var1 db 0
.CODE
MAIN PROC
    MOV AX, @DATA  
    MOV DS, AX
	lea si,str1
	
again:
	mov ah,01
	int 21h
	mov bl,al
	
	cmp bl,13
	je exit
	
	mov [si],bl
	inc si
	inc var1
	jmp again
	
	
	
exit:
	add var1,'0'
	mov dl,var1
	mov ah,02
	int 21h

    MOV AH, 4Ch    
    INT 21h

MAIN ENDP
END MAIN
