#!/bin/bash

if [ ! -d ~/steamcmd ]
then
    mkdir ~/steamcmd
    echo "created directory: ~/steamcmd"
else
    echo "~/steamcmd already exists"
fi

cd ~/steamcmd && { curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz" | tar zxvf -; }

sh ~/steamcmd/steamcmd.sh +login $1 $2 +force_install_dir ~/steamcmd/games +@sSteamCmdForcePlatformType windows +app_update 22320 validate +quit

