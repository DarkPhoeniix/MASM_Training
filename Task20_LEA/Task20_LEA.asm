INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
a BYTE 10
b BYTE 20
c BYTE 30
d BYTE 40

.CODE
main PROC
    XOR RCX, RDX
    MOV AL, a
    MOV AH, a + 3

    LEA RCX, b
    MOV DL, [RCX]
    MOV DH, [RCX + 1]

CALL ExitProcess
main ENDP

END