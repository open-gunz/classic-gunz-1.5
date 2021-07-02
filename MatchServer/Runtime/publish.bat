@echo off
rem publish.bat [언어] [대상폴더]

set TARGETLANG=KOR
if "%1" == "" goto :no_target_lang
set TARGETLANG=%1
:no_target_lang

rem 핵쉴드 또는 xtrap 카피
if "%1" == "brz" goto :hackshield
if "%1" == "ind" goto :hackshield
goto :endofxtraporhackshield

:hackshield
call copy_hackshield.bat %TARGET%

:endofxtraporhackshield


call gather_spawn.bat
call copy_share.bat %TARGETLANG%

del vssver.scc /s /q /f

mkdir \\patch\gunzteam\Build\Server\lastest
set TARGET=\\patch\gunzteam\Build\Server\lastest\MatchServer\

del %TARGET%*.* /s /q /f

mkdir %TARGET%
mkdir %TARGET%Maps


xcopy Maps %TARGET%Maps /E /S

copy MatchServer.exe %TARGET%
copy MatchServer.pdb %TARGET%
copy dbghelp.dll %TARGET%
copy libcomservice2.dll %TARGET%
copy UpLoadLogFile.bat %TARGET%

copy channel.xml %TARGET%_channel.xml
copy channelrule.xml %TARGET%
copy cserror.xml %TARGET%
copy droptable.xml %TARGET%
copy formula.xml %TARGET%
copy messages.xml %TARGET%
copy npc.xml %TARGET%
copy npcset.xml %TARGET%
copy questmap.xml %TARGET%
copy survivalmap.xml %TARGET%
copy SacrificeTable.xml %TARGET%
copy scenario.xml %TARGET%
copy survivalscenario.xml %TARGET%
copy shop.xml %TARGET%
copy shutdown.xml %TARGET%
copy strings.xml %TARGET%
copy worlditem.xml %TARGET%
copy zitem.xml %TARGET%
copy zquestitem.xml %TARGET%
copy event.xml %TARGET%
copy map.xml %TARGET%
copy eventlist.xml %TARGET%
copy server.ini %TARGET%_server.ini
copy hashmap.txt %TARGET%
copy filelistcrc.txt %TARGET%

copy zitem_locale.xml %TARGET%

copy desc.sql %TARGET%
copy item.sql %TARGET%
copy name.sql %TARGET%

rem 넷마블인증 dll 카피
if %TARGETLANG% == KOR goto :netmarbleauth
goto :nonetmarbleauth

:netmarbleauth
copy NMAuthDLL32.dll %TARGET%

:nonetmarbleauth

rem 익스플로러 창을 띄운다.
explorer \\patch\gunzteam\Build\Server\lastest\

