INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
factorial MACRO num:REQ
    factor = num
    i = 1
    WHILE factor GT 1
        i = i * factor
        factor = factor - 1
    ENDM
    EXITM < i >
ENDM

.CODE
main PROC
    MOV RAX, factorial(4)
    MOV RBX, factorial(5)
    CALL ExitProcess
main ENDP

END