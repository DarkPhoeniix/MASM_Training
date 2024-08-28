INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

.CODE
main PROC
    XOR RCX, RCX
    XOR RDX, RDX
    MOV RCX, 0101b
    MOV RDX, 0011b
    XOR RCX, RDX
    AND RCX, RDX
    OR RCX, RDX

CALL ExitProcess
main ENDP

END