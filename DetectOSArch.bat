@ECHO Off

REM ======== BEGIN SET VARIABLES ===========
REM Set the myArch variable with x64 or x86
    IF %PROCESSOR_ARCHITECTURE% == AMD64 SET myArch=x64
    IF %PROCESSOR_ARCHITECTURE% == x86 SET myArch=x86
    
    REM Set the myOS variable
    ver | findstr /i "6\.1\." > nul
