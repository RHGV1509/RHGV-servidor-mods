@echo off
title Sincronizador de Servidor
color 0A

if exist "packwiz-installer-bootstrap.jar" del "packwiz-installer-bootstrap.jar"
if exist "packwiz-installer.jar" del "packwiz-installer.jar"

:: ENLACE RAW DE TU PACK.TOML EN GITHUB
set PACK_URL=https://raw.githubusercontent.com/RHGV1509/RHGV-servidor-mods/main/pack.toml

echo Descargando actualizaciones del servidor...
curl -s -L -o packwiz-installer-bootstrap.jar "https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar"

java -jar packwiz-installer-bootstrap.jar %PACK_URL%

echo.
echo ¡Listo! Ya puedes abrir tu Minecraft.
pause