INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
var WORD 256

.CODE
main PROC
    MOV RAX, 64
    PUSH RAX
    MOV RAX, 25
    PUSH var
    MOV var, 75
    POP var
    POP R10

CALL ExitProcess
main ENDP

END