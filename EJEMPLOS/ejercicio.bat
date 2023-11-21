@echo off
REM Jose Antonio Moreno

echo %1

if "%1" =="" echo  (no hay parámetros) else( 
set /A resultado1= %1 %% 2
if %resultado1%==0 echo es múltiplo de 2 

set /A resultado2= %1 %% 4
if %resultado2%==0 echo es múltiplo de 4 

set /A resultado3= %1 %% 5
if %resultado3%==0 echo es múltiplo de 5 

set /A resultado4= %1 %% 10
if %resultado4%==0 echo es múltiplo de 10
)