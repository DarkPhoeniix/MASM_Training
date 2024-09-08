INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
clrRAX TEXTEQU <XOR RAX, RAX>
clrRCX MACRO
    XOR RCX, RCX
ENDM

.CODE
main PROC
    clrRAX
    clrRCX

    CALL ExitProcess
main ENDP

END