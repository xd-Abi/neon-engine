@echo off
pushd %~dp0\..\
py scripts/setup.py
popd
call win-gen-projects.bat