@echo off

REM Jose Moreno

set /P num1="Introduce numero 1 "
set /P num2="Introduce numero 2 "
set /A resultado= %num1% + %num2%
echo %resultado%