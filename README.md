# Tehbbs-Modpack-Installer
## A modpack installer that I created to make things easier for others when installing mods

## How to start?
when you run the "run.bat" file
than you type "console" from the initial y/n prompt it will take you to a console
from there if you type "qs" or "quickstart" a quick start guide will be displayed
or you can use the "help" command to list all documented commands or functions in the console


# Note
if you are using the console you may need to run this command in powershell due to the way color is created:
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

## Console commands
- help      - Lists commands and functions
- exit      - Exits the console
- ls        - Lists a mod directory use i or b parameters
- el        - Outputs current error level
- compare   - Compares the mods bundled and the mods installed
- debug     - Toggles debug mode
- fresh     - Resets the console environment
- cls       - Clears the console
- build     - Builds file system and adds mods from installed mod directory
- delete    - Deletes a mod directory use i or b parameters
- mcver     - Sets the mc ver displayed in the main installer path


## Things to be added/changed
finish removing colors or find another method of making colors that doesn't require changing the execution policy
be able to change the mc version from within the program itself
maybe have an auto installer to run through installing everything for you