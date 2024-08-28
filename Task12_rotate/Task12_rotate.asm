INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR RCX, RCX
    MOV CL, 65
    MOV CH, 90
    ROL CX, 8
    ROL CX, 8
    SHR CX, 8

CALL ExitProcess
main ENDP

END