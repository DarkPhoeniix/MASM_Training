INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
arr QWORD 0, 0, 0
cpy QWORD 3 DUP (0)

.CODE
main PROC
    LEA RDI, arr
    MOV RCX, 0
    MOV RDX, 10

start:
    MOV [RDI + RCX * 8], RDX
    ADD RDX, 10
    INC RCX
    CMP RCX, LENGTHOF arr
    JNE start

    MOV R10, arr[0 * 8]
    MOV R11, arr[1 * 8]
    MOV R12, arr[2 * 8]
    
    LEA RSI, arr
    LEA RDI, cpy
    MOV RCX, LENGTHOF arr
    CLD
    REP MOVSQ
    
    MOV R13, cpy[0 * 8]
    MOV R14, cpy[1 * 8]
    MOV R15, cpy[2 * 8]

CALL ExitProcess
main ENDP

END