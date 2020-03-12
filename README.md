SnapCMD
=======

A simplistic extension for the Windows Command line that changes the default style to reflect a more modern command prompt, adds some utilities, and adds some aliases for commands to make Unix users more comfortable with the windows command line.

Compatability
-------------

Snap is compatable out of the box with most other windows command line improvement utilities! If you find anything it doesn't play well with, feel free to report it as an issue, and I'll either fix the incompatability, or make note of it here.

ConEmu Task Setup
------------

While snap is a great set of shortcuts for the command line, we all know how much of a pain just the windows command prompt interface itself is. For those of you that use ConEmu to escape the attrocity that is cmd.exe, you're in luck! Snap can easily be set up as a ConEmu task.

1. Open up the ConEmu settings page
2. Navigate to `Startup > tasks`
3. Click the plus icon to create a new task
4. Name the task `Shells:snap`, or something along those lines
5. Copy paste the text below into the empty field below "Start console'As Administrator` with '*' sign"

Text to copy:

	cmd.exe /k ""%ConEmuBaseDir%\CmdInit.cmd" & "%SNAPCMD_HOME%\snap.cmd""

That's it! If you want to, you can additionally change the task's other settings to your liking, or even set the snap task to run on startup in the main `Startup` pane.

Installation
------------

To install, simply clone the repository and run `install.bat`. By default, it will install to `%PROGRAMFILES%\SnapCMD` but if you pass `install.bat` a command line argument, it'll install it to whatever directory you tell it to. If you wanted to, for example, install to `C:\MyFolder\SnapCMD`, cd to the cloned repo and run:

	install.bat	C:\MyFolder\SnapCMD

You can also uninstall any time by running `uninstall.bat`.

Command Usage
-------------

| Command | Usage | Description |
| ------- | ----- | ----------- |
| ls      | ```ls``` |  Lists the contents of the current directory |
| clear   | ```clear``` | Clears the command promt (```cls``` alias) |
| subl    | ```subl [path]``` | Opens the specified file or directory in sublime text |
| ~       | ```~ [path]``` | cd to ```C:\%userprofile%\[path]``` |
| ..      | ```.. [n]``` | cd to the ```n```'th parent directory (```n``` defaults to 1) |
| snaphelp | ```snaphelp``` | displays a help dialog |

Plugins
-------

Plugins allow you to define your own aliases. (see C:\\snap.cmd for examples) To do this, simply make a .cmd file inside C:\snap-plugins and add any commands necessary to it. All files from that folder will be loaded. (as this is a security risk, if you would like to disable this feature, simply remove or comment out the last few lines in C:\\snap.cmd)

