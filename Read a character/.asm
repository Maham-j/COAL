;Read a character, and display it at the the next position on the same line.


.model small
.stack 100h
.386
.data
.code
main proc
	mov ax,@data
	mov ds,ax
	
	mov ah,01
	int 21h
	mov bl,al
	
	mov dl,bl
	mov ah,02
	int 21h
	
	mov ah,4ch
	int 21h
	
	
main endp
end main
