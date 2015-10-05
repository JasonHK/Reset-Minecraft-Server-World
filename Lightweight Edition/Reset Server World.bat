::程式介面設定
@echo off
@SETLOCAL ENABLEEXTENSIONS
@COLOR 17
TITLE Reset Minecraft Server World: Lightweight Edition
cls


:Start
::啟動程式所顯示的畫面
echo If you still can see this file after the program closed, the reason is the program wrongly shut down. > ProgramRunning.txt
for /f "tokens=1 delims=" %%x in (.Reset.txt) do set Reset=%%~x
if [%Reset%] == [] goto Exit
Echo ------------------------------------------------------------------------------
Echo.
Echo   Reset Minecraft Server World: Lightweight Edition
Echo   Copyright (c) Dawn Studio 2015
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo   The program will be reset the original world to "%Reset%".
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto Reset


:Reset
:Reset_Remove
::移除舊檔案
Echo.
Echo   Status: (1/4) Remove old files
@rmdir /s /q Game
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto Reset_Creat
:Reset_Creat
::創建資料夾
Echo   Status: (2/4) Create folder
@mkdir Game
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto Reset_Copy
:Reset_Copy
::複製檔案
Echo   Status: (3/4) Copying file
@xcopy ".World\%Reset%" Game /S /Q > nul
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto Reset_Finished
:Reset_Finished
::完成重設世界
Echo   Status: (4/4) Finished
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto Reset_Exit
:Reset_Exit
::退出重設世界
Echo.
Echo   Finished reset the world, About to exit the program.
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 2 -w 1000 > nul
Echo.
PAUSE
Echo.
Echo ------------------------------------------------------------------------------
cls
goto Exit


:Exit
::關閉程式
Echo ------------------------------------------------------------------------------
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo   Thank you for using our application, goodbye!
Echo   The program has been closed.
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 5 -w 1000 > nul
cls
del ProgramRunning.txt
Exit /B