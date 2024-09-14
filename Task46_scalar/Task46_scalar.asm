INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
num REAL4 16.0
factor REAL4 2.5

.CODE
main PROC
    MOVSS XMM0, num
    MOVSS XMM1, factor

    ADDSS XMM0, XMM1
    MULSS XMM0, XMM1
    SUBSS XMM0, XMM1
    DIVSS XMM0, XMM1

    CALL ExitProcess
main ENDP

END