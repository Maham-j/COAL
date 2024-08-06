.model small
.stack 100h
.386
.data
str1 db 'Enter first number:$'
str2 db 13,10,'Enter second number:$'
str3 db 13,10,'The sum is:$'
var1 db 0
.code
main proc 
	mov ax,@data
	mov ds,ax

	lea dx,str1
	mov ah,09
	int 21h
	
	mov ah,01
	int 21h
	sub al,'0'
	mov bl,al

	lea dx,str2
	mov ah,09
	int 21h

	mov ah,01
	int 21h
	sub al,'0'
	mov bh,al

	add bl,bh
	add bl,'0'
	mov var1,bl

	lea dx,str3
	mov ah,09
	int 21h

	mov dl,var1
	mov ah,02
	int 21h
	
	mov ah,4ch
	int 21h

main endp
end main
	
