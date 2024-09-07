INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
fibonacci PROC
    MOV RCX, RDX
    XADD RAX, RDX

    CMP RAX, 5
    JG finish
    CALL fibonacci
   
    finish:
        RET
fibonacci ENDP

main PROC
    MOV RAX, 1
    MOV RDX, 1
    CALL fibonacci

    CALL ExitProcess
main ENDP

END