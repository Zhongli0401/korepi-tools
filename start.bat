@echo off
net file 1>NUL 2>NUL || start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~f0"" %*","","runas",1)(window.close) && exit
chcp 65001
SetLocal EnableDelayedExpansion
set batpath=%~dp0
cd /d %batpath%/tools
mkdir miku

copy /Y %SystemRoot%\System32\drivers\etc\hosts .\miku\miku_edit 
rem creates miku\miku_edit folder inside tools folder
copy /Y %SystemRoot%\System32\drivers\etc\hosts .\miku\miku_bak

echo. >> .\miku\miku_edit
echo 127.0.0.1 ghp.535888.xyz>> .\miku\miku_edit 
rem writes inside miku_edit
echo 127.0.0.1 md5c.535888.xyz>> .\miku\miku_edit
copy /Y .\miku\miku_edit %SystemRoot%\System32\drivers\etc\hosts
rem taken from stackexchange n korepi-tools520

start "" "node\node.exe" "server.js"
mkdir "C:/miku"
copy /Y "certs\md5c.korepi.com.pub" "C:\miku\md5c.korepi.com.pub"
cd ..
cd korepi
start "" "injector.exe"
timeout /t 5 /nobreak > nul
goto korepicrash

:RESTORENET
cd ..
cd tools
copy /y ".\miku\miku_bak" %SystemRoot%\System32\drivers\etc\hosts
rmdir /S /Q "miku"
taskkill /f /im node.exe
taskkill /f /im injector.exe
exit

EndLocal

:WARN
SetLocal DisableDelayedExpansion
cls
echo Do NOT close the window!!!!!
echo The window will close automatically within ten seconds after Genshin Impact shuts down
echo and restore your internet settings
echo "不要关闭该窗口！！！！！"
echo "该窗口会在原神关闭后的十秒钟内自动关闭"
echo "并且恢复您的网络设定至DHCP"
echo.
echo 不要玩原神了,来看《Bang Dream It's MyGO!!!!!》吧  bilibili搜索BanG Dream! It's MyGO!!!!!
echo MyGo第一集请看 https://www.bilibili.com/video/av914573114
echo 关注MyGO官号谢谢喵 https://space.bilibili.com/1459104794
echo Bocchi laughing after korepi crack https://www.youtube.com/watch?v=HfXoMyo3nk8
timeout /t 10 /nobreak > nul
SetLocal EnableDelayedExpansion
goto LOOP

:korepicrash
tasklist | findstr /I "korepi.exe" > nul
if errorlevel 1 (
    goto RESTORENET
) else (
    goto LOOPk
)



:LOOPk
tasklist | findstr /I "korepi.exe" > nul
if errorlevel 1 (
    goto LOOP
) else (
    timeout /t 1 /nobreak > nul
    goto LOOPk
)


:LOOP
tasklist | findstr /I "Yuanshen.exe GenshinImpact.exe " > nul
if errorlevel 1 (
    goto RESTORENET
) else (
    goto WARN
)
