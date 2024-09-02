INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
src BYTE 'abc'
dst BYTE 'abc'
match BYTE ?

.CODE
main PROC
    LEA RSI, src
    LEA RDI, dst
    MOV RCX, SIZEOF src
    CLD
    REPE CMPSB
    JNZ differ
    MOV match, 1
    JMP finish

differ:
    MOV match, 0

finish:

CALL ExitProcess
main ENDP

END