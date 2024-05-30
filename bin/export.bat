@echo off
REM Check if argument is provided
if "%*"=="" (
    echo Usage: export VARIABLE=value
    exit /b 1
)

REM Extract the variable name and value using string manipulation
setlocal enabledelayedexpansion
set "cmd=%*"

REM Use set and call to correctly parse the variable and value
for /f "tokens=1,2 delims==" %%A in ("!cmd!") do (
    set "VAR_NAME=%%A"
    set "VAR_VALUE=%%B"
)

REM Pass the variables to the parent scope
endlocal & set "VAR_NAME=%VAR_NAME%" & set "VAR_VALUE=%VAR_VALUE%"

REM Set the environment variable
set "%VAR_NAME%=%VAR_VALUE%"
echo Variable %VAR_NAME% set to %VAR_VALUE%
