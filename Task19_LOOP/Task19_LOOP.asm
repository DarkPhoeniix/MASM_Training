INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR RDX, RDX
    MOV RCX, 0

start:
    MOV RDX, RCX
    INC RCX
    CMP RCX, 3
    JE finish
    JMP start

finish:

CALL ExitProcess
main ENDP

END