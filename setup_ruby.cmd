@echo off
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
del %TempFile_Name% 1>nul 2>nul
GOTO menu
) else (
GOTO admin
)

:menu
winget install -e --id RubyInstallerTeam.Ruby.3.1
ECHO Press any Key to Exit...
PAUSE >nul
exit

:admin
ECHO Operation Failed
echo Right click and "RUN AS ADMINISTRATOR"
ECHO Press any Key to Exit...
PAUSE >nul
exit
