@echo off
title Sincronizador de Servidor
color 0A

if exist "packwiz-installer-bootstrap.jar" del "packwiz-installer-bootstrap.jar"
if exist "packwiz-installer.jar" del "packwiz-installer.jar"

:: PEGA TU NUEVO ENLACE RAW DE GITHUB AQUÍ ABAJO:
set PACK_URL=https://raw.githubusercontent.com/TU_USUARIO/TU_REPO/main/pack.toml

echo Descargando actualizaciones del servidor...
curl -s -L -o packwiz-installer-bootstrap.jar "https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar"

java -jar packwiz-installer-bootstrap.jar %PACK_URL%

echo.
echo ¡Listo! Ya puedes abrir tu Minecraft.
pause