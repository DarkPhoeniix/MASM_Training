INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
rows BYTE 0, 1, 2, 3, 10, 11, 12, 13, 20, 21, 22, 23
cols BYTE 0, 10, 20, 1, 11, 21, 2, 12, 22, 3, 13, 23
arrA DWORD 0, 1, 2, 3, 10, 11, 12, 13, 20, 21, 22, 23
arrB DWORD 0, 10, 20, 1, 11, 21, 2, 12, 22, 3, 13, 23

.CODE
main PROC
    MOV CL, rows
    MOV CH, cols
    MOV R8D, arrA
    MOV R9D, arrB
    MOV CL, rows + 5
    MOV CH, cols + 4
    MOV R8D, arrA + (8 * 4)
    MOV R9D, arrB + (2 * 4)

CALL ExitProcess
main ENDP

END