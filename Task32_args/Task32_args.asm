INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
arr QWORD 100, 150, 250

.CODE
sum PROC
    XOR RAX, RAX
    start:
        ADD RAX, [ RDX ]
        ADD RDX, 8
        DEC RCX
        JNZ start
    RET
sum ENDP


main PROC
    MOV RCX, LENGTHOF arr
    LEA RDX, arr
    CALL sum
    CALL ExitProcess
main ENDP

END