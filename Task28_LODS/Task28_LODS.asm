INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
src BYTE 'abc'

.CODE
main PROC
    XOR RDX, RDX
    XOR R8, R8
    XOR R9, R9
    LEA RSI, src
    MOV RDI, RSI
    MOV RCX, SIZEOF src
    CLD

start:
    LODSB
    SUB AL, 32
    STOSB
    DEC RCX
    JNZ start

    MOV DL, src[0]
    MOV R8B, src[1]
    MOV R9B, src[2]

CALL ExitProcess
main ENDP

END