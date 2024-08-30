INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
src BYTE 'abc'
dst BYTE 3 DUP (?)

.CODE
main PROC
    XOR RDX, RDX
    XOR R8, R8
    XOR R9, R9
    LEA RSI, src
    LEA RDI, dst
    MOV RCX, SIZEOF src

    CLD
    REP MOVSB

    MOV DL, dst[0]
    MOV R8B, dst[1]
    MOV R9B, dst[2]

CALL ExitProcess
main ENDP

END