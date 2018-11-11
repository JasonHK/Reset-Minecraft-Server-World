::程式介面設定
@echo off
@SETLOCAL ENABLEEXTENSIONS
@COLOR 17
TITLE Reset Minecraft Server World: Original Edition
cls


:Start
::啟動程式所顯示的畫面
echo If you still can see this file after the program closed, the reason is the program wrongly shut down. > ProgramRunning.txt
Echo ==============================================================================
Echo.
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
Echo.
Echo ==============================================================================
Echo.
Echo   Reset Minecraft Server World
Echo   Copyright (c) Jason Kwok 2018
Echo.
Echo ------------------------------------------------------------------------------
@ping 127.0.0.1 -n 5 -w 1000 > nul
for /f "tokens=1 delims=" %%x in (.Reset.txt) do set Reset=%%~x
if [%Reset%] == [] goto Exit
cls
Goto Menu


:Menu
::詢問用家是否要重設世界
set Confirmation=
Echo ------------------------------------------------------------------------------
Echo.
Echo   Reset Minecraft Server World
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo   The program will be reset the original world to "%Reset%".
Echo   If you determine please enter "Y", to cancel please enter "N".
Echo.
Echo ------------------------------------------------------------------------------
Echo.
Echo   Reset Confirmation:
Echo     [Y]es
Echo     [N]o
Echo   *Please enter the first letter of the item you want to select.
Echo.
Echo ------------------------------------------------------------------------------
Echo.
set /P Confirmation=  Please select an item: %=%
Echo.
Echo ------------------------------------------------------------------------------
cls
If %Confirmation% == Y goto Reset
If %Confirmation% == N goto Exit
If %Confirmation% == y goto Reset
If %Confirmation% == n goto Exit
goto Menu


:Reset
:Reset_Remove
::移除舊檔案
Echo ==============================================================================
Echo.
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
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
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
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
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
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
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
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
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
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
Echo          ￭￭￭￭　￭　　　￭　￭￭￭￭　￭　　　￭
Echo          ￭　　￭　￭￭　￭￭　￭　　　　￭　￭　￭
Echo          ￭￭￭￭　￭　￭　￭　￭￭￭￭　￭　￭　￭
Echo          ￭　￭　　￭　￭　￭　　　　￭　￭　￭　￭
Echo          ￭　￭￭　￭　　　￭　￭￭￭￭　　￭　￭　　Original Edition
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