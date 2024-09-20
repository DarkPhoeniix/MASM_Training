INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

ExitProcess PROTO
MessageBoxA PROTO

.DATA
msg BYTE 'Are you ready to continue...', 0
ttl BYTE 'Assembly x64 programming', 0

.CODE
main PROC
    XOR RAX, RAX
    AND RSP, -16
    SUB RSP, 32

    MOV RCX, 0
    LEA RDX, msg
    LEA R8, ttl
    MOV R9, 35
    CALL MessageBoxA
    
    ADD RSP, 32

    CALL ExitProcess
main ENDP

END