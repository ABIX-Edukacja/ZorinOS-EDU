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
apt install -y python3-dev python-dev hplip-data hplip-gui vim-python-jedi
# ustawienie language
apt-get remove -y language-pack-ar* language-pack-de* language-pack-es* language-pack-fr* language-pack-it* language-pack-ja* language-pack-pt* language-pack-ru* language-pack-zh*
apt-get remove -y language-pack-gnome-ar* language-pack-gnome-de* language-pack-gnome-es* language-pack-gnome-fr* language-pack-gnome-it* language-pack-gnome-ja* language-pack-gnome-pt* language-pack-gnome-ru* language-pack-gnome-zh*
apt-get remove -y libreoffice-l10n-*
apt-get install -y libreoffice-l10n-pl language-pack-gnome-pl* language-pack-pl*
apt-get install -y myspell-dictionary-pl hyphen-pl  libreoffice-help-pl mythes-pl



# Scratch 2 Adobe Air
dpkg -i adobe-air_amd64.deb

apt --fix-broken install -y

# dodatki ręcznie instalowane
D=`pwd`
echo " Instalacja z katalogu ${D} dla usera: ${USER}."
# Ikona PyTechBrain

cp PyTechBrain.png /usr/share/icons/.
chmod +x run_s2aio.sh
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

