SnapCMD
=======

A simplistic extension for the Windows Command line that changes the default style to reflect a more modern command prompt, adds some utilities, and adds some aliases for commands to make Unix users more comfortable with the windows command line.

Installation
------------

To install, simply download SnapInstall.EXE from the "Releases" page on the github repository, and run the executable **with administrator privileges**. To run Snap, simply run the shortcut that should have been placed on your desktop.

Command Usage
-------------

| Command | Usage | Description |
| ------- | ----- | ----------- |
| ls      | ```ls``` |  Lists the contents of the current directory |
| clear   | ```clear``` | Clears the command promt (```cls``` alias) |
| subl    | ```subl [path]``` | Opens the specified file or directory in sublime text |
| ~       | ```~ [path]``` | cd to ```C:\[path]``` |
| ~u      | ``` ~u [path]``` | cd to ```C:\%userprofile%\[path]``` |
| ..      | ```.. [n]``` | cd to the ```n```'th parent directory (```n``` defaults to 1) |
| snaphelp | ```snaphelp``` | displays a help dialog |

Plugins
-------

Plugins allow you to define your own aliases. (see C:\\snap.cmd for examples) To do this, simply make a .cmd file inside C:\snap-plugins and add any commands necessary to it. All files from that folder will be loaded. (as this is a security risk, if you would like to disable this feature, simply remove the last few lines in C:\\snap.cmd)

