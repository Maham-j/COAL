; Character Count Program

.MODEL SMALL
.STACK 100h

.data
str1 db 100 dup('$')   ; Buffer for input
var1 db 0              ; Character counter

.CODE
MAIN PROC
    MOV AX, @DATA      ; Initialize data segment
    MOV DS, AX
    LEA SI, str1       ; Load buffer address

again:
    MOV AH, 01         ; Read character
    INT 21h
    MOV BL, AL         ; Store character in BL
    
    CMP BL, 13         ; Check for Enter key
    JE exit            ; Exit if Enter is pressed
    
    MOV [SI], BL       ; Save character in buffer
    INC SI             ; Move to next position
    INC var1           ; Increment counter
    JMP again          ; Repeat

exit:
    ADD var1, '0'      ; Convert count to ASCII
    MOV DL, var1       ; Load count in DL
    MOV AH, 02         ; Display count
    INT 21h

    MOV AH, 4Ch        ; Exit program
    INT 21h

MAIN ENDP
END MAIN
