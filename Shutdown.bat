@echo OFF
title Shutdown Setter
color 0a

Echo Hello, Please Enter the time in minutes
set /P "TimeMin="
set /A TimeSec = %TimeMin% * 60 
Echo The Time is set to (in Seconds): %TimeSec% 
shutdown.exe /s /t %TimeSec%
Echo %TimeSec%
Echo This window will stay open until shutdown is executed
Echo To cancel , Type "shutdown /a" into cmd
PAUSE

