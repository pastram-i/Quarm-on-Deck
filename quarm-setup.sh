#!/bin/bash
version=0.1.0

# if [ -d "$HOME/Games/Quarm/Launcher" ]; then
#   echo "Quarm folder already exists, running remove command on it. Press y to remove it when asked."
#   rm -Ivr "$HOME/Games/Quarm/Launcher"
# fi

# 1 - Download TAKP
mkdir -p "$HOME/Games/Quarm/"
pushd "$HOME/Games/Quarm" || exit 1
curl -L "https://drive.usercontent.google.com/download?id=1qoBktDeJMJKPBr-EZxub1vspJhz11i1y&export=download&confirm=t" -o "$HOME/Downloads/quarm.zip" && \
7z x "$HOME/Downloads/quarm.zip" -o "$HOME/Games/Quarm"
popd || exit 1

# 2 - Download Quarm Patcher
# 3 - Download Zeal
# 4 - Download Zeal compatible UI
# 5 - Download dgvoodoo config


# if [ ! -d "$HOME/Games/HorizonXI/Prefix/pfx" ]; then
#   mkdir -p "$HOME/Games/HorizonXI/Prefix/pfx/drive_c/Program Files (x86)/HorizonXI"
#   ln -s "$HOME/Games/HorizonXI/Downloads" "$HOME/Games/HorizonXI/Prefix/pfx/drive_c/Program Files (x86)/HorizonXI/Downloads"
#   mkdir -p "$HOME/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher"
#   pushd "$HOME/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher" || exit 1
#   if [ ! -f "$HOME/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher/config.json" ]; then
#     wget https://raw.githubusercontent.com/TeamLinux01/HorizonXI-on-Deck/main/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher/config.json
#   fi
#   if [ ! -f "$HOME"/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher/storage.json ]; then
#     wget https://raw.githubusercontent.com/TeamLinux01/HorizonXI-on-Deck/main/Games/HorizonXI/Prefix/pfx/drive_c/users/steamuser/AppData/Roaming/HorizonXI-Launcher/storage.json
#   fi
#   popd || exit 1
# fi
# echo "Copying install files completed. It is safe to close the terminal."
# exit 0
