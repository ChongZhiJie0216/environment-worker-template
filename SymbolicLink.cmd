@echo off
title SymbolicLink-Generator

set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
del %TempFile_Name% 1>nul 2>nul
GOTO SymbolicLink
) else (
GOTO admin
)

:SymbolicLink
echo Path(SymbolicLink Save Location)
echo (Example:C:\Users\Chong\.bashrc)
set /p path=
echo Target(SymbolicLink From Location)
echo (Example:D:\00-WindowsData\Documents\00-EnvironmentFile\.bashrc)
set /p target=
mklink %path% %target%
PAUSE >nul
exit

:admin
ECHO Operation Failed
echo Right click and "RUN AS ADMINISTRATOR"
ECHO Press any Key to Exit...
PAUSE >nul
exi