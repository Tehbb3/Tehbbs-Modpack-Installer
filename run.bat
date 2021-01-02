 @ECHO OFF
rem Config stuff:
set VER= 1.3
set DCOL= 07
set MDCNT=0
set COLA= 09
set COLB= 0A
set COLC= 07
title Tehbb's Modpack Installer [Ver %VER%]
set q=^"
rem Program start:
rem Count bundled mods: seems broken currently
rem cd %cd%\data\mods
rem for /f %%A in ('dir ^| find "File(s)"') do set MDCNT=%%A
rem for /f %%A in ('dir "%appdata%\.minecraft\mods" ^| find "File(s)"') do set IMDNT=%%A
rem cd %~dp0
rem echo MDCNT %MDCNT%
rem echo IMDCNT %IMDNT%
:pstart
rem call :c 0a "[Debug]"&call :c %DECOL% "b"&call :c %DCOL% "c" /n&call :cb
call :c %COLC% "=================================================================================" /n
call :c %COLA% "  ______     __    __    __   _      "&call :c 0A "    __  ___          __                 __  " /n
call :c %COLA% " /_  __/__  / /_  / /_  / /_ ( )_____"&call :c 0A "   /  |/  /___  ____/ /___  ____ ______/ /__" /n
call :c %COLA% "  / / / _ \/ __ \/ __ \/ __ \|// ___/"&call :c %COLB% "  / /|_/ / __ \/ __  / __ \/ __ `/ ___/ //_/" /n
call :c %COLA% " / / /  __/ / / / /_/ / /_/ / (__  ) "&call :c %COLB% " / /  / / /_/ / /_/ / /_/ / /_/ / /__/ ,<   " /n
call :c %COLA% "/_/ _\___/_/ /_/_.___/_.___/ /____/  "&call :c %COLB% "/_/  /_/\____/\__,_/ .___/\__,_/\___/_/|_|  " /n
call :c %COLC% "   /  _/___  _____/ /_____ _/ / /__  _____      "&call :c %COLB% "       /_/                       " /n
call :c %COLC% "   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/                                       " /n
call :c %COLC% " _/ // / / (__  ) /_/ /_/ / / /  __/ /                                           " /n
call :c %COLC% "/___/_/ /_/____/\__/\__,_/_/_/\___/_/                             "&call :c %DCOL% " Version%VER%  " /n
call :c %COLC% "=================================================================================" /n&call :cb
rem :::  ______     __    __    __   _          __  ___          __                 __  
rem ::: /_  __/__  / /_  / /_  / /_ ( )_____   /  |/  /___  ____/ /___  ____ ______/ /__
rem :::  / / / _ \/ __ \/ __ \/ __ \|// ___/  / /|_/ / __ \/ __  / __ \/ __ `/ ___/ //_/
rem ::: / / /  __/ / / / /_/ / /_/ / (__  )  / /  / / /_/ / /_/ / /_/ / /_/ / /__/ ,<   
rem :::/_/ _\___/_/ /_/_.___/_.___/ /____/  /_/  /_/\____/\__,_/ .___/\__,_/\___/_/|_|  
rem :::   /  _/___  _____/ /_____ _/ / /__  _____             /_/                       
rem :::   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/                                       
rem ::: _/ // / / (__  ) /_/ /_/ / / /  __/ /                                           
rem :::/___/_/ /_/____/\__/\__,_/_/_/\___/_/                                
rem :::                                                                                 
rem for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
for /l %%i in (1,1,17) do echo:
:choice
echo Have you installed the correct version of forge yet? [Type "y" or "n"]
set /P c=
if /I "%c%" EQU "y" goto :sw
if /I "%c%" EQU "n" goto :swa
if /I "%c%" EQU "console" goto :nconsole

if defined dbg (
  call :c 0a "[Debug]"&call :c %DCOL% "Current error code [%ERRORLEVEL%]" /n &call :cb
)
goto :choice
rem cool pic of bird:
:pic
call :c 0E "                ,      .-;" /n
call :c 0E "             ,  |\    / /  __," /n
call :c 0E "             |\ '.`-.|  |.'.-'" /n
call :c 0E "              \`'-:  `; : /" /n
call :c 0E "               `-._'.  \'|" /n
call :c 0E "              ,_.-=` ` `  ~,_" /n
call :c 0E "               '--,.    "&call :c 0c ".-. "&call :c 0E ",=!q!." /n
call :c 0E "                 /     "&call :c 0c "{ "&call :c 0A "* "&call :c 0c ")"&call :c 0E "`"&call :c 06 ";-."&call :c 0E "}" /n
call :c 0E "                 |      "&call :c 0c "'-' "&call :c 06 "/__ |" /n
call :c 0E "                 /          "&call :c 06 "\_,\|" /n
call :c 0E "                 |          (" /n
call :c 0E "             "&call :c 0c "__ "&call :c 0E "/ '          \" /n
call :c 02 "     /\_    "&call :c 0c "/,'`"&call :c 0E "|     '   "&call :c 0c ".-~!q!~~-." /n
call :c 02 "     |`.\_ "&call :c 0c "|   "&call :c 0E "/  ' ,    "&call :c 0c "/        \" /n
call :c 02 "   _/  `, \"&call :c 0c "|  "&call :c 0E "; ,     . "&call :c 0c "|  ,  '  . |" /n
call :c 02 "   \   `,  "&call :c 0c "|  "&call :c 0E "|  ,  ,   "&call :c 0c "|  :  ;  : |" /n
call :c 02 "   _\  `,  "&call :c 0c "\  "&call :c 0E "|.     ,  "&call :c 0c "|  |  |  | |" /n
call :c 02 "   \`  `.   "&call :c 0c "\ "&call :c 0E "|   '     "&call :c 0A "|"&call :c 0c "\_|-'|_,'\|" /n
call :c 02 "   _\   `,   "&call :c 0A "`"&call :c 0E "\  '  . ' "&call :c 0A "| |  | |  |           "&call :c 02 "__" /n
call :c 02 "   \     `,   "&call :c 0E "| ,  '    "&call :c 0A "|_/'-|_\_/     "&call :c 02 "__ ,-;` /" /n
call :c 02 "    \    `,    "&call :c 0E "\ .  , ' .| | | | |   "&call :c 02 "_/' ` _=`|" /n
call :c 02 "     `\    `,   "&call :c 0E "\     ,  | | | | |"&call :c 02 "_/'   .=!q!  /" /n
call :c 02 "     \`     `,   "&call :c 0E "`\      \/|,| ;"&call :c 02 "/'   .=!q!    |" /n
call :c 02 "      \      `,    "&call :c 0E "`\' ,  | ; "&call :c 02 "/'    =!q!    _/" /n
call :c 02 "       `\     `,  "&call :c 05 ".-!q!!q!-. "&call :c 0E "': "&call :c 02 "/'    =!q!     /" /n
call :c 02 "    jgs _`\    ;"&call :c 05 "_{  '   ; "&call :c 02 "/'    =!q!      /" /n
call :c 02 "       _\`-/__"&call :c 05 ".~  `."&call :c 07 "8"&call :c 05 ".'.!q!`~-. "&call :c 02 "=!q!     _,/" /n
call :c 02 "    __\      "&call :c 05 "{   '-."&call :c 07 "|"&call :c 05 ".'.--~'`}"&call :c 02 "    _/" /n
call :c 02 "    \    .=!q!` "&call :c 05 "}.-~!q!'"&call :c 0D "u"&call :c 05 "'-. '-..'  "&call :c 02 "__/" /n
call :c 02 "   _/  .!q!    "&call :c 05 "{  -'.~('-._,.'"&call :c 02 "\_,/" /n
call :c 02 "  /  .!q!    _/'"&call :c 05 "`--; ;  `.  ;" /n
call :c 02 "   .=!q!  _/'      "&call :c 05 "`-..__,-'" /n
call :c 02 "    __/'" /n&call :cb
@ goto :console
rem pog mode:
:pog
cls
title POGGERS POG POGERATOR!!!!![Ver %VER%]
echo Welcome to the pog zone
set NUM=0 1 2 3 4 5 6 7 8 9 A B C D E F E D C B A 9 8 7 6 5 4 3 2 1
for %%y in (%NUM%) do (
  color 0%%y
  echo Welcome to the pog zone
)
@ goto :pog
exit
:swa
cls
for /l %%i in (1,1,26) do echo:
echo Follow through the setup make sure you select [install client] 
echo Note: you may have to install and run the 1.12.2 version of minecraft before you can install forge
echo when you have finished installing forge you can press any key to continue
data\forge.jar
if defined dbg (
call :c 0a "[Debug]"&call :c %DCOL% "Current error code [%ERRORLEVEL%]" /n &call :cb
)
pause >nul
@ goto :sw
exit
:sw
cls
for /l %%i in (1,1,29) do echo:
IF EXIST "%appdata%\.minecraft\mods" (
  set /P c=Do you want to clear your mods directory before installing the new mods? [Type "y" or "n"]
  if /I "%c%" EQU "y" goto :delm
  if /I "%c%" EQU "n" goto :cpm
) ELSE (
  @ goto :cpm
)
:delm
echo Press any key to delete your mods folder
pause >nul
rmdir /s /q "%appdata%\.minecraft\mods"
if defined dbg (
call :c 0a "[Debug]"&call :c %DCOL% "Current error code [%ERRORLEVEL%]" /n &call :cb
)
IF EXIST "%appdata%\.minecraft\mods" (
  echo Something bad proberably happened the folder is still there
) ELSE (
  echo Mods folder deleted!
)
@ goto :cpm
:cpm
echo Press any key to copy the modpack into your game directory
pause >nul
if defined dbg (
cls
call :c 0a "[Debug]"&call :c %DCOL% "Current error code [%ERRORLEVEL%]" /n &call :cb
robocopy "%cd%\data\mods" "%appdata%\.minecraft\mods" /e
call :c 0a "[Debug]"&call :c %DCOL% "Current error code [%ERRORLEVEL%]" /n &call :cb
) else (
echo Copying...
ROBOCOPY "%cd%\data\mods" "%appdata%\.minecraft\mods"  /NDL /NJH /NJS /np /NFL
cls
call :c %COLC% "=================================================================================" /n
call :c %COLA% "  ______     __    __    __   _      "&call :c 0A "    __  ___          __                 __  " /n
call :c %COLA% " /_  __/__  / /_  / /_  / /_ ( )_____"&call :c 0A "   /  |/  /___  ____/ /___  ____ ______/ /__" /n
call :c %COLA% "  / / / _ \/ __ \/ __ \/ __ \|// ___/"&call :c %COLB% "  / /|_/ / __ \/ __  / __ \/ __ `/ ___/ //_/" /n
call :c %COLA% " / / /  __/ / / / /_/ / /_/ / (__  ) "&call :c %COLB% " / /  / / /_/ / /_/ / /_/ / /_/ / /__/ ,<   " /n
call :c %COLA% "/_/ _\___/_/ /_/_.___/_.___/ /____/  "&call :c %COLB% "/_/  /_/\____/\__,_/ .___/\__,_/\___/_/|_|  " /n
call :c %COLC% "   /  _/___  _____/ /_____ _/ / /__  _____      "&call :c %COLB% "       /_/                       " /n
call :c %COLC% "   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/                                       " /n
call :c %COLC% " _/ // / / (__  ) /_/ /_/ / / /  __/ /                                           " /n
call :c %COLC% "/___/_/ /_/____/\__/\__,_/_/_/\___/_/                             "&call :c %DCOL% " Version%VER%  " /n
call :c %COLC% "=================================================================================" /n&call :cb
for /l %%i in (1,1,11) do echo:
)
echo Now open the minecraft launcher select the forge 1.12.2 profile than run the game
echo When you are in the main menu of the game it should say [%MDCNT%] mods active in the bottom left of the screen
echo If it does Congradulations!
echo If there were any errors or any of the mods did not copy over or work correctly feel free to dm me
echo Cheers!
echo Press any key to exit
pause >nul
exit
rem setup new console session:
:nconsole
cls
call :c %COLC% "=================================================================================" /n
call :c %COLA% "  ______     __    __    __   _      "&call :c 0A "    __  ___          __                 __  " /n
call :c %COLA% " /_  __/__  / /_  / /_  / /_ ( )_____"&call :c 0A "   /  |/  /___  ____/ /___  ____ ______/ /__" /n
call :c %COLA% "  / / / _ \/ __ \/ __ \/ __ \|// ___/"&call :c %COLB% "  / /|_/ / __ \/ __  / __ \/ __ `/ ___/ //_/" /n
call :c %COLA% " / / /  __/ / / / /_/ / /_/ / (__  ) "&call :c %COLB% " / /  / / /_/ / /_/ / /_/ / /_/ / /__/ ,<   " /n
call :c %COLA% "/_/ _\___/_/ /_/_.___/_.___/ /____/  "&call :c %COLB% "/_/  /_/\____/\__,_/ .___/\__,_/\___/_/|_|  " /n
call :c %COLC% "   /  _/___  _____/ /_____ _/ / /__  _____      "&call :c %COLB% "       /_/                       " /n
call :c %COLC% "   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/                                       " /n
call :c %COLC% " _/ // / / (__  ) /_/ /_/ / / /  __/ /                                           " /n
call :c %COLC% "/___/_/ /_/____/\__/\__,_/_/_/\___/_/                             "&call :c %DCOL% " Version%VER%  " /n
call :c %COLC% "=================================================================================" /n&call :cb
@ goto :console
rem run console itself:
:console 
set "c="
call :c %DCOL% ">"&call :cb
set /P c=
rem Run functions
if /I "%c%" EQU "debug" (
	if defined dbg (
		set "dbg="
		call :c 0a "[Debug]"&call :c %DCOL% "Debug disabled" /n &call :cb
	) else (
		set "dbg=y"
		call :c 0a "[Debug]"&call :c %DCOL% "Debug enabled" /n &call :cb
	)
) else (
	if /I "%c%" EQU "help" (
		goto :h
	) else (
		if /i "%c:~0,2%"=="ls" (
			call :ls %c%
		) else (
			if /I "%c%" EQU "cls" (
				cls
			) else (
				if /I "%c%" EQU "fresh" (
					goto :nconsole
				) else (
					if /I "%c%" EQU "compare" (
						goto :compare
					) else (
						if /I "%c%" EQU "el" (
							call :c 0a "[Debug]"&call :c %DCOL% "Current error code [%ERRORLEVEL%]" /n &call :cb
						) else (
							if /I "%c%" EQU "exit" (
								cls
								goto :pstart
							) else (
								if /I "%c%" EQU "pog" (
									goto :pog
								) else (
									if /I "%c%" EQU "cool berd" (
										goto :pic
									) else (
										if /I "%c%" EQU "build" (
											call :c 0a "[TMI]"&call :c %DCOL% "Creating directory system" /n &call :cb
											if exist "%appdata%\.minecraft\mods" (
												robocopy "%appdata%\.minecraft\mods" "%cd%\data\mods" /e
												call :c 0a "[TMI]"&call :c %DCOL% "Done building" /n &call :cb
											) else (
												call :c 0A "[TMI]"&call :c %DCOL% "No mods installed" /n&call :cb
												call :c 0A "     "&call :c %DCOL% "Nothing to be packaged" /n&call :cb
											)
										) else (
											if /i "%c:~0,6%"=="delete" (
												call :dlet %c%
											) else (
												call :c 0A "[TMI]"&call :c %DCOL% "Unknown or invalid command" /n  
												call :c 0A "     "&call :c %DCOL% "Type [ help ] for a list of commands" /n &call :cb      
											)
										)
									)
								)
							)
						)
					)
				)
			)
		)
	)
)
rem if /I "%c%" EQU "mcnt" (
rem 	call :c 0a "[TMI]"&call :c %DCOL% "Bundled mods   [%MDCNT%]" /n
rem 	call :c 0a "[TMI]"&call :c %DCOL% "Installed mods [%IMDNT%]" /n &call :cb
rem ) else (
rem call :c 0A "[TMI]"&call :c %DCOL% "Unknown or invalid command" /n
@ goto :console 
:compare
SetLocal EnableDelayedExpansion
set "folder1=%cd%\data\mods"
set "folder2=%appdata%\.minecraft\mods"
For /R "%Folder1%" %%x In (*.*) Do (
	Set "FullPath=%%x"
	Set "RelPath=!FullPath:%Folder1%=!"
	If Exist "%Folder2%!RelPath!" (
	  >Nul 2>&1 FC /b "%Folder1%!RelPath!" "%Folder2%!RelPath!" && (
	   rem Echo Dup - %%x
	   call :c 20 " DUP "&call :c %DCOL% " - %%x" /n&call :cb
	  )||(
	   rem Echo Dif - %%x
	   call :c 60 " DIF "&call :c %DCOL% " - %%x" /n&call :cb
	  )
	) Else (
	  rem Echo New - %%x
	  call :c 60 " NEW "&call :c %DCOL% " - %%x" /n&call :cb
	)
)
For /R "%Folder2%" %%x In (*.*) Do (
	Set "FullPath=%%x"
	Set "RelPath=!FullPath:%Folder2%=!"
	If Not Exist "%Folder1%!RelPath!" (
	  rem Echo New - %%x
	  call :c 60 " NEW "&call :c %DCOL% " - %%x" /n&call :cb
	)
)
@ goto :console 





:dlet
if defined dbg (
  call :c 0a "[Debug]"&call :c %DCOL% "Command perameters: %~1 %~2 %~3" /n &call :cb
)
if /I "%~2" EQU "b" (
	call :c 0A "[TMI]"&call :c %DCOL% "Removing bundled mods..." /n&call :cb
	if exist "%cd%\data\mods" (
		rmdir /s /q "%cd%\data\mods"
		call :c 0A "[TMI]"&call :c %DCOL% "Done" /n&call :cb
	) else (
  		call :c 0A "[TMI]"&call :c %DCOL% "Directory does not exist" /n&call :cb
  		call :c 0A "     "&call :c %DCOL% "No mods to be deleted" /n&call :cb
  	)
) else (
  if /I "%~2" EQU "i" (
  	call :c 0A "[TMI]"&call :c %DCOL% "Removing installed mods..." /n&call :cb
  	if exist "%appdata%\.minecraft\mods" (
  		rmdir /s /q "%appdata%\.minecraft\mods"
  		call :c 0A "[TMI]"&call :c %DCOL% "Done" /n&call :cb
  	) else (
  		call :c 0A "[TMI]"&call :c %DCOL% "Directory does not exist" /n&call :cb
  		call :c 0A "     "&call :c %DCOL% "No mods to be deleted" /n&call :cb
  	)
  ) else (
	if /I "%~2" EQU "" (
	  call :c 0A "[TMI]"&call :c %DCOL% "Command requires a perameter" /n
	  call :c 0A "     "&call :c %DCOL% "Available Perameters: bundled [b] or installed [i]" /n
	  call :c 0A "     "&call :c %DCOL% "E.g:[ ls i ] will list installed mods" /n&call :cb
	) else (
	  call :c 0A "[TMI]"&call :c %DCOL% "Invalid parameter" /n
	  call :c 0A "     "&call :c %DCOL% "Available Perameters: bundled [b] or installed [i]" /n
	  call :c 0A "     "&call :c %DCOL% "E.g:[ ls i ] will list installed mods" /n&call :cb
	)
  )
)
@ goto :console







:ls
if defined dbg (
  call :c 0a "[Debug]"&call :c %DCOL% "Command perameters: %~1 %~2" /n &call :cb
)

if /I "%~2" EQU "b" (
  echo:
  echo Currently bundled mods:
  echo =================================================================================
  echo:
  dir "%cd%\data\mods" /W /B 
) else (
  if /I "%~2" EQU "i" (
	echo:
	echo Currently installed mods:
	echo =================================================================================
	echo:
	dir "%appdata%\.minecraft\mods" /W /B
  ) else (
	if /I "%~2" EQU "" (
	  call :c 0A "[TMI]"&call :c %DCOL% "Command requires a perameter" /n
	  call :c 0A "     "&call :c %DCOL% "Available Perameters: bundled [b] or installed [i]" /n
	  call :c 0A "     "&call :c %DCOL% "E.g:[ ls i ] will list installed mods" /n
	) else (
	  call :c 0A "[TMI]"&call :c %DCOL% "Invalid perameter:%~2" /n
	  call :c 0A "     "&call :c %DCOL% "Available Perameters: bundled [b] or installed [i]" /n
	  call :c 0A "     "&call :c %DCOL% "E.g:[ ls i ]" /n
	)
  )
)
@ goto :console
:h
call :c %DCOL% " =============================================================================== " /n
call :c %DCOL% " |                                  Help                                       | " /n
call :c %DCOL% " =============================================================================== " /n
call :c %DCOL% "Commands:                                                                        " /n
call :c %DCOL% "    help      - Lists commands and functions                                     " /n
call :c %DCOL% "    exit      - Exits the console                                                " /n
call :c %DCOL% "    ls        - Lists a mod directory use i or b parameters                      " /n
call :c %DCOL% "    el        - Outputs current error level                                      " /n
call :c %DCOL% "    compare   - Compares the mods bundled and the mods installed                 " /n
call :c %DCOL% "    debug     - Toggles debug mode                                               " /n
call :c %DCOL% "    fresh     - Resets the console environment                                   " /n
call :c %DCOL% "    cls       - Clears the console                                               " /n
rem call :c %DCOL% "    mcnt      - Displays the number of installed and bundled mods                " /n      BROKEN ATM
call :c %DCOL% "    Build     - Builds file system and adds mods from installed mod directory    " /n
call :c %DCOL% "    Delete    - Deletes a mod directory use i or b parameters                    " /n
call :c %DCOL% "    " /n
call :c %DCOL% "    Note: More features are still to be added" /n
call :cb
@ goto :console
rem colored text stuff:
:cb
if exist "%temp%\color.psm1" (
	powershell -command "&{Import-Module '%temp%\color.psm1'}"
	del "%temp%\color.psm1"
)
exit /b
:c
setlocal enabledelayedexpansion
set "colors=0-black;1-darkblue;2-darkgreen;3-darkcyan;4-darkred;5-darkmagenta;6-darkyellow;7-gray;8-darkgray;9-blue;a-green;b-cyan;c-red;d-magenta;e-yellow;f-white"
set "p=%~1"
set "bg=!colors:*%p:~0,1%-=!"
set bg=%bg:;=&rem.%
set "fg=!colors:*%p:~-1%-=!"
set fg=%fg:;=&rem.%
if not "%~3"=="/n" set "br=-nonewline"
set "str=%~2" & set "str=!str:'=''!"
>>"%temp%\color.psm1" echo write-host '!str!' -foregroundcolor '%fg%' -backgroundcolor '%bg%' %br%
endlocal
exit /b