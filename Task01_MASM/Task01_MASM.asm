INCLUDELIB kernel32.lib     ; Import standarrt Windows library 
ExitProcess PROTO           ; Define an imported library function

.DATA                       ; Start of the data section
                            ; <- variable declarations go here

.CODE                       ; Start of the code section
main PROC                   ; Program entry procedure
                            ; <- Assembly instructions go here

CALL ExitProcess            ; Executed imported func
main ENDP                   ; End of the main procedure

END                         ; End of the Assembly program