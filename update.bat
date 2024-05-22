@echo off
echo checking files
if exist injector\nul (
 rmdir /S /Q "injector")
if exist korepi/lol.dll if exist korepi\injector.exe (
		 del korepi/lol.dll)
		 del korepi/injector.exe)
 else
		
 rem echo injector x dll download
 start "" "aria\aria2c.exe" --allow-overwrite=true --force-sequential=true  --dir korepi https://github.com/Zhongli0401/korepi-tools/releases/download/0.0.6/injector.exe https://github.com/Zhongli0401/korepi-tools/releases/download/0.0.6/lol.dll

exit