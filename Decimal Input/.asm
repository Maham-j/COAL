.model small
.stack 100h
.386
.data
new db 13,10,'$'
.CODE
main proc
	
	mov ax,@data
	mov ds,ax
	
	call input_decimal

    MOV AH, 4Ch   
    INT 21h

main endp

input_decimal proc
	mov bx,0
	
again:
	mov ah,01
	int 21h
	cmp al,13
	je exit
	
	sub al,48
	mov cl,al
	
	mov ch,0
	mov ax,bx
	
	mov bx,10
	mul bx
	
	add ax,cx
	mov bx,ax
	jmp again
	
exit:
	mov ah,4ch
	int 21h
	ret
input_decimal endp
	
end main 
