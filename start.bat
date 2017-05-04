@echo off
start notepad server.properties
:restart
cls
del ip.txt
set ip_address_string="IP Address"
rem Uncomment the following line when using Windows 7 (with removing "rem")!
set ip_address_string="IPv4 Address"
echo Network Connection Test
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo Your IP Address is: %%f:25565&&echo %%f:25565>ip.txt

rem start notepad ip.txt
java -Xmx1024M -Xms1024M -jar "minecraft_server.jar"
echo.
echo.
echo.
echo Restarting...
goto restart
