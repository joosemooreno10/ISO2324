@echo off

REM Jose Moreno
REM 15/11/2023
echo opcion 1- crear fichero con nombre pedido al usuario
echo.
echo opcion 2- mostrar arbol de directorios de la carpeta usuario
echo.
echo opcion 3- mostrar archivos con extension txt
echo.
echo opcion 4- crear los directorios alfredoff, marinapg y ramonam
echo.
echo opcion 5- copia el contenido de tu carpeta a la carpeta copia
echo.
set /P numero = "Introduce la opcion que desees:"
if %numero%==1 goto opcion1 
if %numero%==2 goto opcion2
if %numero%==3 goto opcion3
if %numero%==4 goto opcion4
if %numero%==5 goto opcion5

REM 1
:opcion1
set /P fichero="introduce el nombre de tu fichero: "
echo > %fichero%.txt
echo.
REM 2 
:opcion2
 tree %USERPROFILE% 
 echo.
 REM 3 
 :opcion3
 dir *.txt
 echo.
 REM 4
 :opcion4
 mkdir alfredoff marinapf ramonam
 echo.
 REM 5
 :opcion5
 xcopy "C:\Users\alumno\desktop\scripts\" "C:\copia" /s