@ECHO Off

REM ======== BEGIN SET VARIABLES ===========
REM Set the myArch variable with x64 or x86
    IF %PROCESSOR_ARCHITECTURE% == AMD64 SET myArch=x64
    IF %PROCESSOR_ARCHITECTURE% == x86 SET myArch=x86
    
    REM Set the myOS variable
    ver | findstr /i "6\.1\." > nul
    IF %ERRORLEVEL% EQU 0 SET myOS=Win7
    ver | findstr /i "5\.1\." > nul
    IF %ERRORLEVEL% EQU 0 SET myOS=WinXP
    
    REM Set All Users Desktop variable
    if %myOS%==Win7 SET myAllUsersDesktop=C:\Users\Public\Desktop
    if %myOS%==WinXP SET myAllUsersDesktop=C:\Documents and Settings\All Users\Desktop
    
    REM Set Program Files variable
    if %myOS%==WinXP if %myArch%==x86 SET myProgFiles=C:\Program Files
    if %myOS%==Win7 if %myArch%==x64 (
    	SET myProgFiles=C:\Program Files (x86^)
    	SET myProgFilesx64=C:\Program Files
    )
    if %myOS%==Win7 if %myArch%==x86 SET myProgFiles=C:\Program Files
    
    REM variable test
    echo %myOS% %myArch% %myAllUsersDesktop% %myProgFiles%>C:\Techsupt\OSArchDetect.log
    
    REM ======== END SET VARIABLES ===========

REM in the actual script section you would use the %myProgFiles% and %myAllUsersDesktop% variables which would contain the actual value for the computer running the script -- this would alleviate the need to have duplicate code for each version
