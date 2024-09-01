INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
src BYTE 'abc'
found BYTE ?

.CODE
main PROC
    XOR RAX, RAX
    MOV AL, 'b'
    LEA RDI, src
    MOV RCX, SIZEOF src
    CLD
    REPNE SCASB
    JNZ absent
    MOV found, 1
    JMP finish

absent:
    MOV found, 0

finish:

CALL ExitProcess
main ENDP

END