INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
nums MACRO arg1, arg2, arg3
    FOR arg, <arg1, arg2, arg3>
        PUSH arg
    ENDM
    POP RCX
    POP RBX
    POP RAX
ENDM

chars MACRO arglist
    FORC arg, arglist
        PUSH '&arg'
    ENDM
    POP RCX
    POP RBX
    POP RAX
ENDM


.CODE
main PROC
    nums 1, 2, 3
    chars <ABC>
    CALL ExitProcess
main ENDP

END