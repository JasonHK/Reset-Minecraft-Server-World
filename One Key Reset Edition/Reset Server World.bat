::程式介面設定
@echo off
@SETLOCAL ENABLEEXTENSIONS
@COLOR 17
TITLE Reset Minecraft Server World: One Key Reset Edition
cls


:Start
::啟動程式所顯示的畫面
echo If you still can see this file after the program closed, the reason is the program wrongly shut down. > ProgramRunning.txt
for /f "tokens=1 delims=" %%x in (.Reset.txt) do set Reset=%%~x
if [%Reset%] == [] goto Exit
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo   Copyright (c) Jason Kwok 2018
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo   The program will be reset the original world to "%Reset%".
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 5 -w 1000 > nul
cls
Goto Reset


:Reset
:Reset_Remove
::移除舊檔案
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo        ┌──────────────  0%%──────────────┐
Echo        └　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┘
Echo          Status: Remove old files
Echo.
Echo ------------------------------------------------------------------------------
@rmdir /s /q Game
@ping 127.0.0.1 -n 2 -w 1000 > nul
cls
goto Reset_Creat
:Reset_Creat
::創建資料夾
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo        ┌────────────── 33%%──────────────┐
Echo        └￭￭￭￭￭￭￭￭￭￭　　　　　　　　　　　　　　　　　　　　┘
Echo          Status: Create folder
Echo.
Echo ------------------------------------------------------------------------------
@mkdir Game
@ping 127.0.0.1 -n 2 -w 1000 > nul
cls
goto Reset_Copy
:Reset_Copy
::複製檔案
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo        ┌────────────── 67%%──────────────┐
Echo        └￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭　　　　　　　　　　┘
Echo          Status: Copying file
Echo.
Echo ------------------------------------------------------------------------------
@xcopy ".World\%Reset%" Game /S /Q > nul
@ping 127.0.0.1 -n 2 -w 1000 > nul
cls
goto Reset_Finished
:Reset_Finished
::完成重設世界
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo        ┌──────────────100%%──────────────┐
Echo        └￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭￭┘
Echo          Status: Finished
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 2 -w 1000 > nul
cls
goto Reset_Exit
:Reset_Exit
::退出重設世界
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo   Finished reset the world, About to exit the program.
Echo.
Echo ------------------------------------------------------------------------------
Echo.
PAUSE
Echo.
Echo ------------------------------------------------------------------------------
cls
goto Exit


:Exit
::關閉程式
Echo ==============================================================================
Echo.
Echo       ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo       ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo       ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo       ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo       ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　One Key Reset Edition
Echo.
Echo ==============================================================================
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