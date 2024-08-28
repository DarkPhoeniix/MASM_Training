INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
var QWORD 4

.CODE
main PROC
    XOR RAX, RAX
    XOR RBX, RBX
    MOV RAX, 10
    MOV RBX, 2
    IMUL RBX
    IMUL RAX, var
    IMUL RAX, RBX, -3

CALL ExitProcess
main ENDP

END