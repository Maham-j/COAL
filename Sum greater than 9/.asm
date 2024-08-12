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

	lea dx,str1  		;load the string to dx
	mov ah,09
	int 21h			;print the str1
	
	mov ah,01		;takes first input
	int 21h			;print first input
	sub al,'0'		;subtract to get actual ascii
	mov bl,al		;move to bl so that value does not change due to al

	lea dx,str2		;load the string to dx
	mov ah,09
	int 21h			;print the str2

	mov ah,01		;takes second input
	int 21h			;print second input
	sub al,'0'		;subtract to get actual ascii
	mov bh,al		;move to bl so that value does not change due to al

	add bl,bh		;add both numbers
	cmp bl,9		;compare if greater than 9
	ja aa			;if greater than 9 sum jump to aa
	
	add bl,'0'		;else add 48 to get actual number
	jmp bb			;jump to bb to print

aa:     add bl,55		;add 55 to get actaul number

bb:	lea dx,str3		;load adress of str3
	mov ah,09
	int 21h			;print str3

	mov var1,bl		;move sum to var1
	mov dl,var1		;move value to dl for printing
	mov ah,02
	int 21h			;prints the value
	
	mov ah,4ch		;terminate the program
	int 21h

main endp
end main
	
