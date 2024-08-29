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
	mov ax,251      ; Move the number 251 into AX
	mov cx,0        ; Clear CX (counter)

again:
	cmp ax,0        ; Check if AX is 0
	je print        ; If AX is 0, jump to print
	mov bx,16       ; Move 16 into BX for division
	mov dx,0        ; Clear DX
	div bx          ; Divide AX by BX, quotient in AX, remainder in DX
	push dx         ; Push remainder onto stack
	inc cx          ; Increment counter CX
	jmp again       ; Repeat until AX is 0

print:
	pop dx          ; Pop the remainder into DX
	cmp dl,9        ; Compare remainder with 9
	jbe digit       ; If less than or equal to 9, it's a digit (0-9)
	add dl,7        ; If greater than 9, adjust for letters A-F
digit:
	add dl,48       ; Convert to ASCII (0-9, A-F)
	mov ah,02       ; Prepare to print the character
	int 21h         ; DOS interrupt to print character
	dec cx          ; Decrement counter CX
	jnz print       ; If CX is not zero, keep printing

	ret
dec_out_print endp
	
end main
