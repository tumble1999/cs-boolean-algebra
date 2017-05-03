@echo off
ipconfig>ip.txt
notepad ip.txt
del ip.txt
rem java -Xmx1024M -Xms1024M -jar "S:\COMPUTER SCIENCE MINECRAFT SERVER\minecraft_server.jar" nogui
java -Xmx1024M -Xms1024M -jar "minecraft_server.jar"
echo.
echo.
echo.
pause
