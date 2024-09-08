INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
scan MACRO num
    IF num GT 50
        MOV RAX, 1
    ELSEIF num LT 50
        MOV RAX, 0
    ELSE
        MOV RAX, num
    ENDIF
ENDM

.CODE
main PROC
    scan 100
    scan 0
    scan 50

    CALL ExitProcess
main ENDP

END