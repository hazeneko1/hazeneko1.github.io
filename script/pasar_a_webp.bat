@echo off
chcp 65001 > nul
:: Batch para convertir imagenes a WebP usando el script imgToPng.py
:: Formato: 1 (WebP), Calidad: 80, Origen: imgP, Destino: img

set SCRIPT="C:\Users\isko\Documents\INFORMÁTICA\Aplicaciones Utiles\imgToPng.py"
set ORIGEN="C:\Users\isko\Documents\NEGOCIOS PROPIOS\César Hidalgo\Pagina Web\imgP"
set DESTINO="C:\Users\isko\Documents\NEGOCIOS PROPIOS\César Hidalgo\Pagina Web\img"

python %SCRIPT% 1 80 %ORIGEN% %DESTINO%

echo.
echo Proceso finalizado.
pause
