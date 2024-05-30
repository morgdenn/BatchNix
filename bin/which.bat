@echo off
REM Check if argument is provided
if "%~1"=="" (
    echo Usage: proxy_where COMMAND
    exit /b 1
)

REM Use the where command to find the specified command
where %~1

if %ERRORLEVEL% NEQ 0 (
    REM echo %~1 is not found in the system PATH.
    exit /b 1
)
