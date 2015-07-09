@ECHO OFF

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

IF [%1]==[] (
	SET INSTALL_DIR=%PROGRAMFILES%\SnapCMD
) ELSE (
	SET INSTALL_DIR=%1
)
mkdir "%INSTALL_DIR%"
SETX SNAPCMD_HOME "%INSTALL_DIR%" /m

copy /Y snap.cmd "%INSTALL_DIR%""
copy /Y SNAPEX~1.lnk %userprofile%\Desktop\Snap.exe.lnk
ECHO Successfully installed SnapCMD
PAUSE