if "%1" == "" goto :Exit
if "%2" == "" goto :Exit
if "%3" == "" goto :Exit

set SERVERID=%1
set DMPFILENAME=%2
set LOGFILENAME=%3
set FILEDIR=C:\GunzServer\MatchServer\Log

cd %FILEDIR%

if exist %DMPFILENAME% copy %DMPFILENAME% %SERVERID%_%DMPFILENAME%
if exist %LOGFILENAME% copy %LOGFILENAME% %SERVERID%_%LOGFILENAME%

ftp -n -s:UpLoadScript.txt ns.maiet.net

del %SERVERID%_%DMPFILENAME%
del %SERVERID%_%LOGFILENAME%
:Exit
