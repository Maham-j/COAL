.model small
.stack 100h
.386
.data
.code
main proc

	mov ax,@data
	mov ds,ax

	xor bx,bx
	
again:
	mov ah,01
	int 21h
	
	cmp al,13
	je exit
	
	cmp al,'9'
	ja letter
	
	sub al,48
	jmp aa
	
letter:
	sub al,55
	
aa:
	shl bx,4
	or bl,al
	jmp again
	
exit:
	mov ah,4ch
	int 21h

main endp
end main
