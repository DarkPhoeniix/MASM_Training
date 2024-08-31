INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
dst BYTE 3 DUP (?)

.CODE
main PROC
    XOR RDX, RDX
    XOR R8, R8
    XOR R9, R9
    MOV AL, 'A'
    LEA RDI, dst
    MOV RCX, SIZEOF dst
    CLD
    REP STOSB
    MOV DL, dst[0]
    MOV R8B, dst[1]
    MOV R9B, dst[2]

CALL ExitProcess
main ENDP

END