#!/bin/bash
version=1.3.0

if [ -d "$HOME/Games/HorizonXI/Launcher" ]; then
echo "Launcher folder already exists, running remove command on it. Press y to remove it when asked."
rm -Ivr $HOME/Games/HorizonXI/Launcher
fi
mkdir -p $HOME/Games/HorizonXI/{Launcher/download,Prefix}
cd $HOME/Games/HorizonXI/Launcher/download
wget -c https://github.com/HorizonFFXI/HorizonXI-Launcher-Binaries/releases/download/v$version/HorizonXI-Launcher-$version.Setup.exe && \
7z x HorizonXI-Launcher-$version.Setup.exe && \
7z x HorizonXI_Launcher-$version-full.nupkg && \
mv lib/net45/* $HOME/Games/HorizonXI/Launcher/
if [ ! -d "$HOME/Games/HorizonXI/Prefix/pfx" ]; then
mkdir -p $HOME/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher
cd $HOME/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher
wget -c https://raw.githubusercontent.com/TeamLinux01/HorizonXI-on-Deck/main/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher/config.json
wget -c https://raw.githubusercontent.com/TeamLinux01/HorizonXI-on-Deck/main/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher/storage.json
fi
echo "Copying install files completed. It is safe to close the terminal."
exit 0
