@echo off

set "CMAKE_GENERATOR=Visual Studio 17 2022"

third-party\common\win\premake\premake5.exe --file=premake5-deps.lua --64-build --32-build   --all-ext --all-build --verbose --os=windows vs2022
third-party\common\win\premake\premake5.exe --file=premake5.lua --genproto --os=windows vs2022

"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" /nologo /v:n /p:Configuration=release,Platform=Win32 build\project\vs2022\win\gbe.sln
"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" /nologo /v:n /p:Configuration=release,Platform=x64 build\project\vs2022\win\gbe.sln

pause
