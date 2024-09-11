INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
power MACRO base:REQ, exponent:REQ
    LOCAL start, finish
    MOV RAX, 1
    MOV RCX, exponent
    CMP RCX, 0
    JE finish
    MOV RBX, base 

    start:
    MUL RBX
    LOOP start
    finish:
ENDM

.CODE
main PROC
    power 4,2
    power 4,3
    CALL ExitProcess
main ENDP

END