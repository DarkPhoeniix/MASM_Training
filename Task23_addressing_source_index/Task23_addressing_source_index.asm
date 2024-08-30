INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
arr QWORD 10, 20, 30

.CODE
main PROC
    LEA RSI, arr
    MOV RCX, 0

start:
    MOV RDX, [ RSI + RCX * 8 ]
    INC RCX
    CMP RCX, LENGTHOF arr
    JNE start

CALL ExitProcess
main ENDP

END