INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
var QWORD 64

.CODE
main PROC
    XOR RCX, RCX
    XOR RDX, RDX
    MOV RCX, 36
    ADD RCX, var
    MOV RDX, 400
    ADD RDX, RCX
    SUB RCX, 200

CALL ExitProcess
main ENDP

END