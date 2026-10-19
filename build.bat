@echo off
rem Builds Hippo Hop with the universal engine (submodule engine\, profile engine\games\hippohop.h).
rem   build.bat [debug^|clean]      details in engine\build.bat
rem First time: git submodule update --init
setlocal
set "GAME_ROOT=%~dp0."
if not exist "%~dp0engine\build.bat" (
	echo engine\ is empty: run  git submodule update --init
	exit /b 1
)
call "%~dp0engine\build.bat" hippohop %*
