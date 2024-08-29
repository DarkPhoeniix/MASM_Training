INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR R14, R14
    XOR R15, R15
    JMP next
    MOV R14, 100
    next:
    MOV R15, final
    JMP R15
    MOV R14, 100
    final:

CALL ExitProcess
main ENDP

END