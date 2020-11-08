; disables the [CTRL]+Z key-combination on explorer areas.
; EladKarako 31/05/2012 21:43

#IfWinActive ahk_class CabinetWClass ;inside folder (state of 'open folder') or on desktop.
{
^d::
return
}

#IfWinActive ahk_class ExploreWClass ;inside folder (state of 'explorer folder') or on desktop.
{
^d::
return
}

#IfWinActive ahk_class SysListView32 ;inside folder or on desktop.
{
^d::
return
}

#IfWinActive ahk_class ReBarWindow32 ;inside folder in state of 'open folder' with visible folder-tree. you are in the folder-tree.
{
^d::
return
}

#IfWinActive ahk_class SysTreeView32 ;inside folder is state of 'explorer' with visible-folder tree. you are in the folder-tree.
{
^d::
return
}
