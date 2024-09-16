INCLUDELIB kernel32.lib
ExitProcess PROTO
ReadConsoleA PROTO
GetStdHandle PROTO
deviceCode EQU -10

.DATA
txt BYTE 100 DUP (?)
handle QWORD ?
num BYTE ?

.CODE
main PROC
    XOR RAX, RAX
    XOR RCX, RCX
    XOR RDX, RDX
    XOR R8, R8
    XOR R9, R9

    SUB RSP, 32

    MOV RCX, deviceCode
    CALL GetStdHandle
    MOV handle, RAX

    MOV RCX, handle
    LEA RDX, txt
    MOV R8, LENGTHOF txt
    LEA R9, num

    CALL ReadConsoleA
    ADD RSP, 32

    CALL ExitProcess
main ENDP

END