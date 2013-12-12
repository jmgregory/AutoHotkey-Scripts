; OSX-ScreenShots.ahk
; Author: Justin Gregory
;
; Simulates OS X style keyboard shortcuts for screen captures.

; Capture whole screen
!+3::
Run SnippingTool.exe
WinWaitActive Snipping Tool
Send !ns
return

; Select rectangular area
!+4::
Run SnippingTool.exe
WinWaitActive Snipping Tool
Send !nr
return
