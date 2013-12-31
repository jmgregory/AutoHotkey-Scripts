$!`::
SendMode Input
IfWinExist ahk_class TaskSwitcherWnd
{
    Send {Alt down}+{Tab}
}
else
{
	Send !`
}
return
