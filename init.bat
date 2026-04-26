@echo off
echo Preparing the AIG toolset repository for engagement activities...

:: Check if Node.js/npm is installed
where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] npm is not installed or not in your PATH. 
    echo Please install Node.js and npm before continuing.
    echo.
    exit /b 1
)

echo.
echo [OK] Node.js and npm are installed.
echo.
echo Installing required skills...
echo.

:: Those skills are helpful for processing documents and data from interviews.
call npx skills add https://github.com/anthropics/skills --skill docx
call npx skills add https://github.com/anthropics/skills --skill xlsx
call npx skills add https://github.com/anthropics/skills --skill pdf
call npx skills add https://github.com/anthropics/skills --skill pptx

echo.
echo Initialization complete! You are ready to start the engagement.
pause
