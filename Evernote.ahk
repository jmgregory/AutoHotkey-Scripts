; Evernote.ahk
; Author: Justin Gregory
;
; Convenience shortcuts for personal GTD system in Evernote

; Mark this task as complete
^!c::
SetTitleMatchMode, 2
IfWinActive Evernote
{
	SendMode Input
	Send !nvnc{Enter}{Esc}
	return
}

; New task
$^!n::
SendMode Input
SetTitleMatchMode, 2
Send !^n
WinWait Evernote
Send {F2} ; Start in the title field
return
