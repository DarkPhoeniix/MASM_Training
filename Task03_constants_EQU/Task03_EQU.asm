INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
con EQU 13                  ; Initialize constant memory

.CODE
main PROC
    MOV RCX, con            ; Assign reg/mem
    MOV RDX, con + 8        ; Assign reg/mem+imm
    MOV RCX, con + 8 * 2    ; Assign unclear expr
    MOV RDX, (con + 8) * 2  ; Assign clear expr
    MOV RCX, con MOD 5      ; Assign modulo quotient
    MOV RDX, (con - 4) / 3  ; Assign division quotient

CALL ExitProcess
main ENDP

END