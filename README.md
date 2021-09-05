Win10SetupScript.ps1
====================
Before you run!
Make sure that you are completely up to date. If you are not, then the restart will force an update and it WILL revert some changes.
Needs Admin privileges to run.
What it does:
* Makes a restore point
* Mutes all system sounds
* Adds an Open PowerShell here option
* Sets power to High Performance
* Makes UAC prompt for password to run a file with Admin privs
* Disables easy access stuff for keyboards (sticky keys, toggle keys, etc.)
* Unhides hidden files
* Shows file extensions
* Gets rid of OneDrive ad on explorer
* Disables Pretty Path
* Disables Aero Shake
* Makes explorer's default page This PC
* Hides taskbar clutter
* Makes taskbar use small icons
* Enables Dark mode
* Enables Aero theme
* Disables the "Swipe up to logon" thing on the lock screen
* Makes Winlogon use a solid color
* Make start menu appear faster
* Removes Bing search suggestions on start menu
* Removes "Look For App in App Store" option when opening a file with an unknown extension
* Disables Cortana
* Enables Secure Attention (Ctrl+Alt+Del) to logon
* Enables verbose mode
* Disables all animations
* Installs WSL2
* Prompts for restart
* Other cool stuff

When this is done running and you have restarted, run:
`wsl --set-default-version 2`
That will setup WSL2 and you can install a distro from there. 
