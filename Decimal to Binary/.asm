.model small
.stack 100h
.386
.data
new db 13,10,'$'
.CODE
main proc
	
	mov ax,@data
	mov ds,ax
	
	call dec_out_print

    MOV AH, 4Ch   
    INT 21h

main endp

dec_out_print proc
	mov ax,251
	mov cx,0
	
again:
	cmp ax,0
	je print
	mov bx,2
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
	
	lea dx,new
	mov ah,09
	int 21h
	
	dec cx
	jnz print
	ret
dec_out_print endp
	
end main 
