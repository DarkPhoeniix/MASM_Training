INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
unum BYTE 10011001b     ; Unsigned byte.
sneg SBYTE 10011001b    ; Signed negative byte.
snum SBYTE 00110011b    ; Signed positive byte.

.CODE
main PROC
    XOR RCX, RCX
    XOR RDX, RDX
    XOR R8, R8
    MOV CL, unum
    MOV DL, sneg
    MOV R8B, snum
    
    SHR CL, 2
    SAR DL, 2
    SAR R8, 2

CALL ExitProcess
main ENDP

END