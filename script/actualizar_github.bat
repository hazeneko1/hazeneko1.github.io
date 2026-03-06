@echo off
chcp 65001 > nul
:: Batch para actualizar el repositorio de GitHub automáticamente

:: Posicionarse siempre en la raíz del proyecto (un nivel arriba de /script)
cd /d "%~dp0.."

echo 🚀 Iniciando actualización de GitHub...
echo    Directorio: %cd%
echo.

:: 1. Añadir los archivos necesarios (img/, index.html, asesoramiento.html, etc.)
git add index.html
git add asesoramiento.html
git add img/
git add script/
git add .gitignore

:: 2. Crear el commit con fecha y hora actual
git commit -m "Actualizacion automatica: %date% %time%"

:: 3. Subir los cambios a GitHub
echo.
echo 📤 Subiendo cambios a origin main...
git push origin main

echo.
echo ✨ ¡Repositorio actualizado con exito!
pause
