INCLUDELIB kernel32.lib

ExitProcess PROTO

DoAdd PROTO
DoSub PROTO
DoMul PROTO
DoDiv PROTO

.DATA

.CODE

main PROC
    MOV RCX, 8
    MOV RDX, 16
    CALL DoAdd
    
    MOV RCX, 9
    MOV RDX, 3
    CALL DoSub
    
    CALL DoMul
    CALL DoDiv

    CALL ExitProcess
main ENDP

END