@echo off
setlocal enabledelayedexpansion

rem Initialize variables
set "dir=%~2"
set "listDirsOnly=false"

rem Check for the -d option
if "%~1"=="-d" (
    set "listDirsOnly=true"
    if "%~2"=="" (
        set "dir=."
    )
) else (
    if "%~1"=="" (
        set "dir=."
    ) else (
        set "dir=%~1"
    )
)

rem Find and list directories and files from the directory where the script is called
if "%listDirsOnly%"=="true" (
    for /d %%i in (%cd%\%dir%) do (
        echo %%i
    )
) else (
    for /d %%i in (%cd%\%dir%) do (
        echo %%i
    )
    for %%i in (%cd%\%dir%) do (
        if not "%%~a"=="d" echo %%i
    )
)

endlocal
