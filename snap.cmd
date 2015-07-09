@echo off
echo Successfully started SnapCMD 2014, use snaphelp for a commands list and usage!
echo To extend Snap, create a .cmd file in C:\snap-plugins and hack away!
cd C:\
DOSKEY ls=dir
DOSKEY clear=cls
DOSKEY subl="C:\Program Files\Sublime Text 3\sublime_text.exe" $*
DOSKEY ~= cd %userprofile%\$Tcd $1
DOSKEY ..=@echo off$Tcd ..$Tfor /l %%x in (2, 1, $1) do cd ..$T@echo on

DOSKEY snaphelp=@echo off$T^
echo.$T^
echo   HELP:$T^
echo.$T^
echo       ls            - List contents of the current directory info$T^
echo       clear         - Clears the console$T^
echo       subl          - Opens the file in sublime text command line editor$T^
echo       ~ [path]      - cd to C:\Users\USER\[path]$T^
echo       .. [n]        - cd to [n]th super directory shortcut$T^
echo       snaphelp      - Displays this help dialog$T^
@echo on

if not exist %SNAPCMD_HOME%\snap-plugins mkdir %SNAPCMD_HOME%\snap-plugins

for %%v in ("%SNAPCMD_HOME%\snap-plugins\*") do call "%%~v"

