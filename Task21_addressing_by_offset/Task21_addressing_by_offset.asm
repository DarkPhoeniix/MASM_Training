INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
arrA BYTE 1, 2, 3
arrB WORD 10, 20, 30
arrC DWORD 100, 200, 300
arrD QWORD 1000, 2000, 3000

.CODE
main PROC
    MOV CL, arrA
    MOV DX, arrB
    MOV R8D, arrC
    MOV R9, arrD
    
    MOV CL, arrA + 1
    MOV DX, arrB + 2
    MOV R8D, arrC + 4
    MOV R9, arrD + 8
    
    MOV CL, arrA + (2 * 1)
    MOV DX, arrB + (2 * 2)
    MOV R8D, arrC + (2 * 4)
    MOV R9, arrD + (2 * 8)

CALL ExitProcess
main ENDP

END