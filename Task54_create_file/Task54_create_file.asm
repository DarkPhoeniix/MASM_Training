INCLUDELIB kernel32.lib

ExitProcess PROTO
CreateFileA PROTO

GENERIC_READ            EQU 080000000h
GENERIC_WRITE           EQU 040000000h
FILE_SHARE_READ         EQU 1
FILE_SHARE_WRITE        EQU 2
OPEN_ALWAYS             EQU 4
FILE_ATTRIBUTE_NORMAL   EQU 128

.DATA
filePath BYTE 'Test.txt'
fileHandle QWORD ?

.CODE
main PROC
    XOR RAX, RAX
    XOR RCX, RCX
    XOR RDX, RDX
    XOR R8, R8
    XOR R9, R9
    
    SUB RSP, 64     ; allocate shadow space for arguments
    
    LEA RCX, filePath
    MOV RDX, GENERIC_READ OR GENERIC_WRITE
    MOV R8, FILE_SHARE_READ OR FILE_SHARE_WRITE
    MOV R9, 0
    
    ; pass additional arguments via stack offsets
    MOV QWORD PTR [RSP + 32], OPEN_ALWAYS
    MOV QWORD PTR [RSP + 40], FILE_ATTRIBUTE_NORMAL
    MOV QWORD PTR [RSP + 48], 0
    
    CALL CreateFileA
    MOV fileHandle, RAX
    
    ADD RSP, 64     ; rebalance the stack

    CALL ExitProcess
main ENDP

END