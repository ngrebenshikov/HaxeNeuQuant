chdir ../../localbuild
mkdir haxelib\neuquant
copy ..\src\neuquant\NeuQuant.hx haxelib\neuquant
copy ..\src\neuquant\haxelib.xml haxelib\
del /F neuquant.zip
chdir haxelib
..\..\build\windows\tools\7za.exe a -r ..\neuquant.zip *.*