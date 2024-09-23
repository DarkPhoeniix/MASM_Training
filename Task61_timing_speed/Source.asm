.CODE

DoRun PROC
    MOV RAX, 1
    MOVDQU XMM1, XMMWORD PTR [RCX]
    MOVDQU XMM2, XMMWORD PTR [RDX]

    start:
        MULPS XMM1, XMM2
        INC RAX
        CMP RAX, R8
        JL start

    RET
DoRun ENDP

END