.model small
.stack 100h
.386
.data
.code
main proc

	mov ax,@data
	mov ds,ax

	mov bx,43c2h
	mov cx,16
	
again:
	shl bx,1
	jc aa
	mov dl,'0'
	jmp print
	
aa:
	mov dl,'1'
	
	
print:
	mov ah,02
	int 21h

	dec cx
	jnz again
	


	mov ah,4ch
	int 21h

main endp
end main
