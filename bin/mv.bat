@echo off
rem mv.bat - A proxy for the Windows move command with path conversion

if "%~1"=="" (
    echo mv: missing file operand
    exit /b 1
)

rem Function to replace '/' with '\'
setlocal enabledelayedexpansion
set "args="
for %%i in (%*) do (
    set "arg=%%i"
    set "arg=!arg:/=\!"
    set "args=!args! !arg!"
)
endlocal & set "args=%args%"

rem Execute the move command with the modified arguments
move %args%
