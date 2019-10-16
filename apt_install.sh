#!/usr/bin/env bash
#
# instalacja potrzebnich pakietów
apt-get update
apt install -y python3-pip mc openvpn
apt install -y thunderbird-locale-pl thunderbird-gnome-support
apt install -y chromium-browser*
apt install -y libqt4-dev-bin
apt install -y libcanberra-gtk3-module
apt install -y libcanberra-gtk0 git ar dpkg python3-idle idle-python3.6 idle-python3.7
apt install -y dosemu mp3check cdparanoia aac-enc faac cd-discid python3-matplotlib
apt install -y python3-dev python-dev hplip-data hplip-gui
apt --fix-broken install

# Scratch 2 Adobe Air
dpkg -i adobe-air_amd64.deb

# dodatki ręcznie instalowane
D=`pwd`

# Ikona PyTechBrain
cp PyTechBrain.png /usr/share/icons/.

# Ikona Scratch2
cp Scratch2.desktop "${HOME}/Pulpit/."
gio set "$HOME/Pulpit/Scratch2.desktop" "metadata::trusted" yes

# aplkikacja Scratch2
cd /opt
tar xzvf "${D}/_scratch2.tgz"
chown root.root Scratch_2 -R
chmod +r Scratch_2 -R
