@echo off
SetLocal EnableDelayedExpansion
net file 1>NUL 2>NUL || start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~f0"" %*","","runas",1)(window.close) && exit
for /f "tokens=*" %%i in ('PowerShell -Command "Get-NetAdapter -Physical | Where-Object {$_.Status -eq 'Up'} | Select-Object -ExpandProperty Name"') do (
    set "ConnectionName=%%i"
)
Powershell -Command "& {Set-NetIPInterface -InterfaceAlias '%ConnectionName%' -Dhcp Enabled}"
PowerShell -Command "Remove-NetRoute -InterfaceAlias '%ConnectionName%' -DestinationPrefix '0.0.0.0/0' -Confirm:$false"
netsh interface ip set dns name="!ConnectionName!" dhcp
PowerShell -Command "Disable-NetAdapterBinding -Name \"%ConnectionName%\" -ComponentID ms_tcpip"
PowerShell -Command "Enable-NetAdapterBinding -Name \"%ConnectionName%\" -ComponentID ms_tcpip"
PowerShell -Command "Enable-NetAdapterBinding -Name \"%ConnectionName%\" -ComponentID ms_tcpip6"
EndLocal