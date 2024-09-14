INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
nums0 DWORD 1, 2, 3, 4
nums1 DWORD 1, 3, 5, 7

.CODE
main PROC
    MOVDQA XMM0, XMMWORD PTR [nums0]    ; MOV-DQ-A (move, double word, alligned)
    PADDD XMM0, XMMWORD PTR [nums1]     ; P-ADD-D (packed int, double word, alligned)

    CALL ExitProcess
main ENDP

END