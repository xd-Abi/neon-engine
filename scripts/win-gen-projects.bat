@echo off
pushd %~dp0\..\
call .bin\premake\win64\premake5.exe vs2022
popd
pause