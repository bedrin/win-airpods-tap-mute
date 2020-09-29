Pause::  ;Pause Break button is my chosen hotkey

SoundSet, +1, MASTER, mute,12 ;12 was my mic id number use the code below the dotted line to find your mic id. you need to replace all 12's  <---------IMPORTANT
SoundGet, master_mute, , mute, 12

ToolTip, Mute %master_mute% ;use a tool tip at mouse pointer to show what state mic is after toggle
SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
