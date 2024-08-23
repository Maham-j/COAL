.model small
.stack 100h
.386
.data 
.code
main proc

	mov ax,@data
	mov ds,ax

	mov bx,43c2h
	mov cx,4
	
again:
	rol bx,4
	mov dl,bl
	and dl,0fh
	
	cmp dl,9
	ja letter
	
	add dl,48
	jmp aa
	
letter:
	add dl,55
	
aa:
	mov ah,02
	int 21h
	dec cx
	jnz again
	
exit:
	mov ah,4ch
	int 21h

main endp
end main
