@echo off
title Condicionales
echo pulsa 1 para crear archivo .txt
echo pulsa 2 para crear un archivo .bat
set /p opcion=
if %opcion% == 1 goto txt
if %opcion% == 2 goto bat

:txt
set /P a1="Introduce el nombre de tu archivo: "
type nul > %a1%.txt
exit
:bat
set /P a2="Introduce el nombre de tu archivo: "
type nul > %a2%.bat
exit