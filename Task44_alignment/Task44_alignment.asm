INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
nums0 DWORD 1, 2, 3, 4
snag BYTE 100
ALIGN 16 ; bytes
nums1 DWORD 5, 5, 5, 5

.CODE
main PROC
    MOVDQA XMM0, XMMWORD PTR [nums0]
    MOVDQA XMM1, XMMWORD PTR [nums1]
    PSUBD XMM0, XMM1
    CALL ExitProcess
main ENDP

END