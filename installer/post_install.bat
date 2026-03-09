REM Post-install script: install napari-phasors and create a launcher
call "%PREFIX%\Scripts\pip.exe" install napari-phasors

REM Create a desktop shortcut / launcher batch file
echo @echo off > "%PREFIX%\napari-phasors.bat"
echo set "PATH=%PREFIX%;%PREFIX%\Library\bin;%PREFIX%\Scripts;%PATH%" >> "%PREFIX%\napari-phasors.bat"
echo "%PREFIX%\Scripts\napari.exe" >> "%PREFIX%\napari-phasors.bat"
