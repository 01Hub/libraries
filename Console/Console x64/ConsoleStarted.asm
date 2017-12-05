.686
.MMX
.XMM
.x64

option casemap : none
option win64 : 11
option frame : auto
option stackbase : rsp

_WIN64 EQU 1
WINVER equ 0501h

include windows.inc

includelib kernel32.lib

include Console.inc


.CODE

;**************************************************************************
; ConsoleStarted - Return TRUE if initialized via GUI (explorer)or FALSE if
; started from console
;**************************************************************************
ConsoleStarted PROC FRAME
    LOCAL pidbuffer:QWORD
    Invoke GetConsoleProcessList, Addr pidbuffer, 2
    ;PrintDec eax
    .IF rax == 2
        ;PrintText 'CON'
        mov rax, TRUE
    .ELSE    
        ;PrintText 'CON'
        mov rax, FALSE
    .ENDIF
    ret
ConsoleStarted ENDP












END
