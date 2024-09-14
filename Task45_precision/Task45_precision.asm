INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
nums REAL4 1.5, 2.5, 3.5, 3.1416
dubs REAL8 1.5, 3.1415926535897932

.CODE
main PROC
    MOVAPS XMM0, XMMWORD PTR [nums]
    MOVAPD XMM1, XMMWORD PTR [dubs]
    CALL ExitProcess
main ENDP

END