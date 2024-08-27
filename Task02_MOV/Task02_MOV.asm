INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
var QWORD 101           ; Initialize variable memory

.CODE
main PROC
    XOR RCX, RCX        ; Clear register (set to 0)
    XOR RDX, RDX
    MOV RCX, 37         ; Assign reg/mem
    MOV RDX, RCX        ; Assign reg/reg 
    MOV RCX, var        ; Assign reg/mem
    MOV var, RDX        ; Assign mem/reg

CALL ExitProcess
main ENDP

END