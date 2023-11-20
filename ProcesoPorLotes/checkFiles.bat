@echo off

REM Jose Moreno
REM 17/11/2023


set /P archivo = "Pide un archivo: "
if exist %archivo% (
echo File exists
goto inicio) 
else (
echo > %archivo% )

