INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
nums BYTE 16 DUP (50)
tons SBYTE 16 DUP (100)

.CODE
main PROC
    MOVAPS XMM0, XMMWORD PTR [nums]
    PADDSB XMM0, tons

    MOVAPS XMM0, XMMWORD PTR [nums]
    PSUBSB XMM0, tons
    PSUBSB XMM0, tons

    CALL ExitProcess
main ENDP

END