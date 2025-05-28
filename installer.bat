@echo off
setlocal

echo [*] Starte Installation...

cd /d "%~dp0"

set ZIP_NAME=MakroMaster.zip

set TARGET=%USERPROFILE%\MakroMaster

if not exist "%ZIP_NAME%" (
    echo [!] ZIP-Datei nicht gefunden: %ZIP_NAME%
    pause
    exit /b
)

if not exist "%TARGET%" (
    mkdir "%TARGET%"
)

echo [*] Entpacke MakroMaster.zip nach %TARGET%...
powershell -nologo -noprofile -command "Expand-Archive -Force '%ZIP_NAME%' '%TARGET%'"

for /d %%i in ("%TARGET%\*") do (
    if exist "%%i\MakroMaster.exe" (
        echo [*] Verschiebe Inhalte aus Unterordner %%~nxi...
        move "%%i\*" "%TARGET%" >nul
        rmdir "%%i"
        goto afterMove
    )
)

:afterMove

set STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
echo [*] Erstelle Autostart-Verknüpfung...
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%STARTUP%\MakroMaster.lnk');$s.TargetPath='%TARGET%\startService.exe';$s.Save()"

echo [*] Erstelle Desktop-Verknüpfung...
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%USERPROFILE%\Desktop\MakroMaster.lnk');$s.TargetPath='%TARGET%\MakroMaster.exe';$s.Save()"

echo [✔] Installation abgeschlossen!
pause
exit /b
