@echo off
pushd %~dp0\..\
py engine/build/setup.py
popd
pause