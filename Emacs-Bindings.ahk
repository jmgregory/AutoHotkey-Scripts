; Emacs-Bindings.ahk
; Author: Justin Gregory
;
; Simulates emacs-style text manipulation (C-e, C-a, C-k, C-y)

; Go to end of line
^e::
SendMode Input
Send {End}{End} ; doubled for Vis. Studio compatibility
return

$^a::
SendMode Input
IfWinActive, ahk_class CabinetWClass
{
	; We're in a folder, not a text field
	Send ^a
	return
}
Send {Home}
return

$^k::
SetTitleMatchMode, 2
SendMode Input
IfWinActive Google Chrome
{
	Send ^k
	return
}
IfWinActive, Firefox
{
	Send ^k
	return
}
Send {Shift Down}{End}{End}{Shift Up} ; Double [End] for Visual Studio compatibility
if (EmacsClipboard = 1)
{
	tempclip = %clipboard%
}
else
{
	tempclip =
}
clipboard = 
Send ^c{Delete}
ClipWait, 0.1
if (clipboard = "")
{
	clipboard = %tempclip%`r`n
}
else
{
	clipboard = %tempclip%%clipboard%
}
EmacsClipboard = 1
return

^y::
SendMode Input
Send ^v
return

~Up::
~Down::
~Left::
~Right::
~Home::
~End::
~PgUp::
~PgDn::
EmacsClipboard = 0
return
