INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR RDX, RDX
    MOV RBX, -4
    MOV RCX, -1
    CMP RCX, RBX
    JG greater
    MOV RDX, 1

greater:
    MOV RCX, -16
    CMP RCX, RBX
    JL less
    MOV RDX, 2

less:
    MOV RCX, -4
    CMP RCX, RBX
    JLE equal
    MOV RDX, 3

equal:
    CMP RCX, RBX
    JNLE notLessOrEqual
    MOV RDX, 4

notLessOrEqual:

CALL ExitProcess
main ENDP

END