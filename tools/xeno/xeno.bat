@echo off
net file 1>NUL 2>NUL || start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~f0"" %*","","runas",1)(window.close) && exit
chcp 65001

timeout /t 3 /nobreak > nul
start "" "xeno\xeno.xpr64"

exit