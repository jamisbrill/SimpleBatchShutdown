@echo OFF
title Shutdown Setter
color 0a

set /p Input= Do You Want To Enter Time in Minutes? yes / no 

if "%Input%"=="yes" echo "You have Selected Minutes"
if "%Input%"=="" set /p Input= Do You Want To Enter Time in Minutes? yes / no   
if "%Input%"=="no" echo "Proceeding with Hours" 

if "%Input%"=="no"  






Echo Hello, Please Enter the time before the computer shutdowns in minutes
set /P "TimeMin="
set /A TimeSec = %TimeMin% * 60 
Echo The Time is set to (in Seconds): %TimeSec% 
shutdown.exe /s /t %TimeSec%
Echo %TimeSec%
Echo This window will stay open until shutdown is executed
Echo To cancel , Type "shutdown /a" into cmd
PAUSE

Rem Script needs testing 
