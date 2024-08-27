INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
var QWORD ?         ; Uninitialized variable, zero by default

.CODE
main PROC
    XOR RCX, RCX
    XOR RDX, RDX
    MOV RCX, 5
    XCHG RCX, var   ; Swaps values between reg/mem or reg/reg or mem/reg
    MOV DL, 3
    XCHG DH, DL     ; Data for exchange must be the same size!

CALL ExitProcess
main ENDP

END