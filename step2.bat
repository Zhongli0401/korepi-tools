@echo off
net file 1>NUL 2>NUL || start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~f0"" %*","","runas",1)(window.close) && exit
chcp 65001
SetLocal EnableDelayedExpansion
set batpath=%~dp0
cd /d %batpath%/tools
start certmgr.exe /del /c /n md5c.korepi.com /s root
call NetRestore.bat
call npm i
cls
node license_gen.js
node ssl_gen.js
PowerShell -Command "Get-ChildItem -Path Cert:\CurrentUser\Root | Where-Object { $_.Subject -like '*md5c.korepi.com*' } | Remove-Item"
certmgr.exe /c /add "certs\\md5c.korepi.com.crt" /s root

for /f "tokens=*" %%i in ('PowerShell -Command "Get-NetAdapter -Physical | Where-Object {$_.Status -eq 'Up'} | Select-Object -ExpandProperty Name"') do (
    set "ConnectionName=%%i"
)

if defined ConnectionName (
    PowerShell -Command "Disable-NetAdapterBinding -Name \"%ConnectionName%\" -ComponentID ms_tcpip6"
    PowerShell -Command "$IPInfo = Get-NetIPAddress -InterfaceAlias '%ConnectionName%' | Where-Object { $_.PrefixOrigin -eq 'Dhcp' } | Select-Object -First 1; $Gateway = Get-NetRoute -InterfaceAlias '%ConnectionName%' | Where-Object { $_.DestinationPrefix -eq '0.0.0.0/0' } | Select-Object -First 1; Write-Output ('IP: ' + $IPInfo.IPAddress); Write-Output ('Subnet Prefix Length: ' + $IPInfo.PrefixLength); Write-Output ('Gateway: ' + $Gateway.NextHop); Remove-NetIPAddress -IPAddress $IPInfo.IPAddress -Confirm:$false; New-NetIPAddress -InterfaceAlias '%ConnectionName%' -IPAddress $IPInfo.IPAddress -PrefixLength $IPInfo.PrefixLength -DefaultGateway $Gateway.NextHop"
    PowerShell -Command "New-NetIPAddress -InterfaceAlias '%ConnectionName%' -IPAddress 104.21.45.239 -PrefixLength 24"
    netsh interface ip set dns name="!ConnectionName!" source=static addr=127.0.0.1 register=primary
    echo Internet settings has been set up.
) else (
    echo Please check your internet connection or update the PowerShell.
    pause
    exit
)


timeout /t 5 /nobreak > nul
start "" "node" "server.js"
ipconfig /flushdns
copy /Y "certs\md5c.korepi.com.pub" "C:\md5c.korepi.com.pub"
copy /Y "enc.json" "../korepi/enc.json"
start "" "../injector/injector.exe" "../injector/settings.xml"
start /wait "" "../korepi/korepi.exe"
goto LOOP

:RESTORENET
cls
call NetRestore.bat
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
echo Bocchi laughing  after korepi crack (><) https://www.youtube.com/watch?v=HfXoMyo3nk8
echo MyGo第一集请看 https://www.bilibili.com/video/av914573114
echo 关注MyGO官号谢谢喵 https://space.bilibili.com/1459104794
timeout /t 10 /nobreak > nul
SetLocal EnableDelayedExpansion
goto LOOP

:LOOP
tasklist | findstr /I "Yuanshen.exe GenshinImpact.exe" > nul
if errorlevel 1 (
    goto RESTORENET
    pause
) else (
    goto WARN
)
