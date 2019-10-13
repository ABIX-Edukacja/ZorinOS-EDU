#!/usr/bin/env bash
#
# instalacja potrzebnich pakietów
apt install -y python3-pip mc openvpn
apt install -y thunderbird-locale-pl thunderbird-gnome-support
apt install -y chromium-browser*
apt install -y libqt4-dev-bin
apt install -y libcanberra-gtk3-module
apt install -y libcanberra-gtk0 git ar dpkg python3-idle idle-python3.6 idle-python3.7
apt install -y dosemu mp3check cdparanoia aac-enc faac cd-discid python3-matplotlib
apt install -y python3-dev python-dev hplip-data hplip-gui
apt --fix-broken install
