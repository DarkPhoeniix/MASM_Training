INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
clrReg MACRO reg
    XOR reg, reg
ENDM

sum MACRO reg : REQ, x := <2>, y := <8>
    MOV reg, x
    ADD reg, y
ENDM

.CODE
main PROC
    clrReg RAX
    sum RBX
    sum RBX, 12
    sum RBX, 18, 12

    CALL ExitProcess
main ENDP

END