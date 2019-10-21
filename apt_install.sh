#!/usr/bin/env bash
#
# instalacja potrzebnich pakietów
USER=$1
#
apt-get update
apt install -y python3-pip mc openvpn
apt install -y thunderbird-locale-pl thunderbird-gnome-support
apt install -y chromium-browser*
apt install -y libqt4-dev-bin libcanberra-gtk3-module libcanberra-gtk0 git ar dpkg idle-python3.6 
apt install -y dosemu mp3check cdparanoia aac-enc faac cd-discid 
apt install -y python3-dev python-dev hplip-data hplip-gui


# Scratch 2 Adobe Air
dpkg -i adobe-air_amd64.deb

apt --fix-broken install -y

# dodatki ręcznie instalowane
D=`pwd`

# Ikona PyTechBrain
cp PyTechBrain.png /usr/share/icons/.
cp run_s2aio.sh /usr/local/bin/.

# dodanie usera do grupy dialout dla s2aio
usermod -a -G dialout ${USER}

# aplkikacja Scratch2
cd /opt
tar xzvf "${D}/_scratch2.tgz"
chown root.root Scratch_2 -R
chmod +r Scratch_2 -R

tar xzvf "${D}/_ab.tgz"
chown root.root angrybirds -R
chmod +r angrybirds -R