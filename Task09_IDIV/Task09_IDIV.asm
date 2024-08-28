INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR RAX, RAX
    XOR RBX, RBX
    XOR RDX, RDX
    MOV RAX, 100
    MOV RBX, 3
    IDIV RBX
    MOV RAX, -100
    CQO
    IDIV RBX

CALL ExitProcess
main ENDP

END