.model small
.stack 100h    
.386
.data
str1 db 13,10,'$'
.CODE
main proc
	
	mov ax,@data
	mov ds,ax
	mov ax,251
	mov cx,0
	
again:
	cmp ax,0
	je print
	mov bx,10
	mov dx,0
	div bx
	push dx
	inc cx
	jmp again
print:
	pop dx
	add dl,48
	mov ah,02
	int 21h
	
	lea dx,str1
	mov ah,09
	int 21h
	
	dec cx
	jnz print
	ret
main endp
end main
