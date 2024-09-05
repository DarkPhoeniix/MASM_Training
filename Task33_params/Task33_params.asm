INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
max PROC
    MOV RCX, [RSP + 16]
    MOV RDX, [RSP + 8]
    CMP RCX, RDX
    JG large
    MOV RAX, RDX
    JMP finish

    large:
        MOV RAX, RCX
    finish:
        RET

max ENDP

main PROC
    XOR RAX, RAX
    PUSH 100
    PUSH 500
    CALL max
    ADD RSP, 16
    
CALL ExitProcess
main ENDP

END