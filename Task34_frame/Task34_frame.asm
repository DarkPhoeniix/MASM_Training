INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
total PROC
    PUSH RBP
    MOV RBP, RSP
    SUB RSP, 16
    
    MOV RAX, [RBP + 16]
    MOV [RBP - 8], RAX
    MOV [RBP - 16], RAX
    ADD RAX, [RBP - 8]
    ADD RAX, [RBP - 16]

    MOV RSP, RBP
    POP RBP

    RET
total ENDP

main PROC
    XOR RAX, RAX
    PUSH 100
    CALL total
    ADD RSP, 8

    CALL ExitProcess
main ENDP

END