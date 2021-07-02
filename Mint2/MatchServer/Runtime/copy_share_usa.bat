@echo off

set TARGETLANG=USA
if "%1" == "" goto :no_target_lang
set TARGETLANG=%1
:no_target_lang

set XMLFOLDER=..\..\Gunz\XML
set TARGETLANG_XMLFOLDER=%XMLFOLDER%\%TARGETLANG%


rem copy locale dependency files
xcopy %TARGETLANG_XMLFOLDER%\cserror.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\messages.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\strings.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\channel.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\channelrule.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\Event.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\EventList.xml .\ /r /y
xcopy %TARGETLANG_XMLFOLDER%\map.xml .\ /r /y

xcopy %TARGETLANG_XMLFOLDER%\zitem_locale.xml .\ /r /y

rem copy xml files
xcopy %XMLFOLDER%\zitem.xml .\ /r /y
xcopy %XMLFOLDER%\worlditem.xml .\ /r /y
xcopy %XMLFOLDER%\npc.xml .\ /r /y
xcopy %XMLFOLDER%\scenario.xml .\ /r /y
xcopy %XMLFOLDER%\survivalScenario.xml .\ /r /y
xcopy %XMLFOLDER%\questmap.xml .\ /r /y
xcopy %XMLFOLDER%\survivalmap.xml .\ /r /y
xcopy %XMLFOLDER%\zquestitem.xml .\ /r /y
xcopy %XMLFOLDER%\droptable.xml .\ /r /y
xcopy %XMLFOLDER%\npcset.xml .\ /r /y
xcopy %XMLFOLDER%\channel.xml .\ /r /y
xcopy %XMLFOLDER%\formula.xml .\ /r /y
xcopy %XMLFOLDER%\SacrificeTable.xml .\ /r /y
xcopy %XMLFOLDER%\shop.xml .\ /r /y
xcopy %XMLFOLDER%\shutdown.xml .\ /r /y

xcopy ..\nhn\HanAuthForSvr.dll .\ /r /y
xcopy ..\nhn\hanAuthForSvrD.dll .\ /r /y
xcopy ..\nhn\HanRTA.dll .\ /r /y
xcopy ..\nhn\HanRTAD.dll .\ /r /y

echo ***************************************************
echo ***************************************************
echo *** [%TARGETLANG%] Server: Shared Files Copy Done!!!! 
echo ***************************************************
echo ***************************************************

