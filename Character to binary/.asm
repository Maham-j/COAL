.model small
.stack 100h
.386
.data
 str1 db 'enter a character:$'
 str2 db 13,10,'The binary is:$'
 .code
 main proc
	mov ax,@data
	mov ds,ax
	
	lea dx,str1
	mov ah,09
	int 21h
	mov cx,8
	

	mov ah,01
	int 21h
	mov bl,al
	
	lea dx,str2
	mov ah,09
	int 21h
	
again:
	shl bl,1
	jc aa
	
	mov dl,'0'
	mov ah,02
	int 21h
	jmp bb
	
aa:
	mov dl,'1'
	mov ah,02
	int 21h
	
bb:
	dec cx
	jnz again
	
	mov ah,4ch
	int 21h
	
main endp
end main
	
