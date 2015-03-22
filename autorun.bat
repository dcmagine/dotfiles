@echo off
REM The commands in this file runs every time cmd.exe is started.
REM Put this file in any folder (perhaps 'C:\env') and then create a String Value with the
REM name 'AutoRun' in HKCU\Software\Microsoft\Command Processor and set its value to the
REM path of this file (ie 'C:\env\autorun.bat').

REM Create alias for SublimeText2 so that folder can be opened in Sublime with '>slime .'
doskey slime="C:\Program Files\Sublime Text 2\sublime_text.exe" $*

REM Change color of text. 'help color' to see options
color A
