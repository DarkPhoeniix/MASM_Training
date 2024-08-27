INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
var QWORD 99

.CODE
main PROC
    XOR RCX, RCX
    INC var         ; var += 1
    MOV RCX, 51
    DEC RCX         ; RCX -= 1
    NEG RCX         ; Gives large number 'cause it's unsigned data

CALL ExitProcess
main ENDP

END