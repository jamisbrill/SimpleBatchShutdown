@echo OFF
title Shutdown Setter
color 0a

set /p Input= Do You Want To Enter Time in Minutes? yes / no 


:requiredinput
    if %Input% == ""(
        rem change countfile here
        echo please enter a valid enter
        goto :requiredinput
    )




if "%Input%"=="yes" echo "You have Selected Minutes"
if "%Input%"=="" set /p Input= Do You Want To Enter Time in Minutes? yes / no   
if "%Input%"=="no" echo "Proceeding with Hours" 
if "%Input%"=="no" (SET mathsHr ="60")  
if "%Input%"=="yes" (SET mathsHr ="0")  
if "%Input%"=="no"  
IF "%var%"=="" (SET var=Hello)

Echo Hello, Please Enter the time before the computer shutdowns in minutes
set /P "TimeMin="
set /A TimeSec = %TimeMin% * %mathsHr% * 60   

Echo The Time is set to (in Seconds): %TimeSec% 
shutdown.exe /s /t %TimeSec%
Echo %TimeSec%
Echo This window will stay open until shutdown is executed
Echo To cancel , Type "shutdown /a" into cmd
PAUSE

Rem Script needs testing 
Rem times by an extra 60 when user selects hours to turn the hours to mins to seconds 
