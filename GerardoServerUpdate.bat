@echo off
title Sincronizar Mods - Servidor Gerardo
color 0A

set PACK_URL=[host repo github]

echo ========================================================
echo         Sincronizando Mods del Servidor
echo ========================================================
echo.

if not exist "packwiz-installer-bootstrap.jar" (
    echo [INFO] Es tu primera vez. Descargando el motor de actualizacion...
    curl -s -L -o packwiz-installer-bootstrap.jar "https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar"
)

echo [INFO] Conectando con GitHub y descargando mods...
java -jar packwiz-installer-bootstrap.jar %PACK_URL%

echo.
echo ========================================================
echo    ¡Actualizacion completa! Ya puedes entrar al server.
echo ========================================================
pause