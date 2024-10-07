.model small
.stack 100h
.386
.data 
array db 100 dup(0)
new db 10,13,'$'
.CODE
main proc
   
	mov ax,@data
	mov ds,ax
	
	xor cx,cx
	
again:
	mov ah,01
	int 21h
	
	cmp al,13
	je reverse
	
	push ax
	inc cx
	jmp again

end_read:	
	lea si,new
	mov ah,02
	int 21h
	
reverse:
	pop dx
	mov ah,02
	int 21h
	dec cx
	cmp cx,0
	jne reverse
	

    MOV AH, 4Ch   
    INT 21h

main endp
end main 
