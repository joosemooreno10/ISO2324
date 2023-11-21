@echo off
REM Jose Antonio Moreno
REM Repaso 
REM 21/11/2023

echo Opcion 1 pide un archivo
echo Opcion 2 dar un archivo por parametros
echo Opcion 3 crear archivo

set /P opcion= "Elige opcion "
if %opcion% == 1 goto OPCION1
if %opcion% == 2 goto OPCION2
if %opcion% == 3 goto OPCION3

:OPCION1
set /P archivo="Dame el nombre de un archivo"
set /P extension="Extension del archivo"
if exist %archivo%.%extension% (
 goto OPCION1
 ) else (
 type nul >  %archivo%.%extension%
)

:OPCION2
if exist %1 move %1 "C:\Users\alumno\Desktop"

:OPCION3
type nul > usuario.txt %date% %time%
