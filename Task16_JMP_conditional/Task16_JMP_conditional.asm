INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR RDX, RDX
    MOV CL, 255
    ADD CL, 1
    JC carry
    MOV RDX, 1

carry:
    MOV CL, -128
    SUB CL, 1
    JO overflow
    MOV RDX, 2

overflow:
    MOV CL, 255
    AND CL, 10000000b
    JS sign
    MOV RDX, 3

sign:
    JNZ notZero
    MOV RDX, 4

notZero:

CALL ExitProcess
main ENDP

END