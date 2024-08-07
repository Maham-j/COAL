;Read a character, and display it at the the next position on the same line.


.model small
.stack 100h
.386
.data
.code
main proc
	mov ax,@data
	mov ds,ax
	
	mov ah,01        ; Function to read a character from keyboard
    	int 21h          ; DOS interrupt
    	mov bl,al        ; Store the read character in BL
    
    	mov dl,bl        ; Move character to DL for displaying
    	mov ah,02        ; Function to display a character
    	int 21h          ; DOS interrupt
    
    	mov ah,4ch       ; Function to exit the program
    	int 21h          ; DOS interrupt
	
	
main endp
end main
