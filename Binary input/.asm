.model small
.stack 100h
.386
.data
.code
main proc

	mov ax,@data
	mov ds,ax

	xor bx,bx
	
	mov cx,8
again:
	mov ah,01
	int 21h
	
	cmp al,13
	je exit
	
	sub al,48
	shl bl,1
	or bl,al
	dec cx
	jnz again
	
exit:
	mov ah,4ch
	int 21h

main endp
end main


