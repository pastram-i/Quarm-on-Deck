#!/bin/bash
version=1.2.4

mkdir -p ~/Games/HorizonXI/{Launcher,Prefix}
cd ~/Games/HorizonXI/Launcher
wget -c https://github.com/HorizonFFXI/HorizonXI-Launcher-Binaries/releases/download/v$version/HorizonXI-Launcher-$version.Setup.exe && \
7z x -i"!*.nupkg" HorizonXI-Launcher-$version.Setup.exe && \
7z x -i"!lib/net45/*" HorizonXI_Launcher-$version-full.nupkg && \
mv lib/net45/* . && \
rmdir lib/net45 && \
rmdir lib && \
rm -v HorizonXI-Launcher-$version.Setup.exe HorizonXI_Launcher-$version-full.nupkg
