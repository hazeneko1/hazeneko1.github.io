@echo off
chcp 65001 > nul
:: Batch para actualizar el repositorio de GitHub automáticamente
:: Ubicación: Raíz del proyecto (donde está el index.html)

echo 🚀 Iniciando actualización de GitHub...
echo.

:: 1. Añadir todos los cambios (incluyendo las nuevas imágenes en img/)
git add .

:: 2. Crear el commit con fecha y hora actual
set commit_message="Actualización automática: %date% %time%"
git commit -m %commit_message%

:: 3. Subir los cambios a GitHub
echo.
echo 📤 Subiendo cambios a origin main...
git push origin main

echo.
echo ✨ ¡Repositorio actualizado con éxito!
pause
