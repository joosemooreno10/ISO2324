@echo off
REM Ejemplos condicionales

set /p  num1="Introduce numero: "
set /p	num2="Introduce otro: "

if %num1% EQU %num2%  echo son iguales
if %num1% NEQ %num2%  echo no son iguales
if %num1% LSS %num2%  echo %num1% es menor que %num2%
if %num1% LEQ %num2%
if %num1% GTR %num2%
if %num1% GEQ %num2%