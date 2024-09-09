INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
rpt MACRO reg, num
    REPEAT num
        INC reg
    ENDM
ENDM

itr MACRO reg, num
    count = num
    WHILE count LE 100
        count = count + 27
        MOV reg, count
        IF count MOD 2 EQ 0
            EXITM
        ENDIF
    ENDM
ENDM

.CODE
main PROC
    MOV RAX, 10
    MOV RCX, 10
    rpt RAX, 10
    itr RCX, 10

    CALL ExitProcess
main ENDP

END