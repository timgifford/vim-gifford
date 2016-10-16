REM Run this file to create a symbolic link from the .vim directory to the vimfiles directory.
REM This is necessary to allow vi in a shell to behave the same as gvim.
cd ~
mklink /d .\.vim vimfiles
