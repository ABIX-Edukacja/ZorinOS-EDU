#!/bin/bash
#
# Skrypt instalujący różne dodatki, wersja 0.02
#
# (C) by Adam Jurkiewicz ABIX Edukacja https://abixedukacja.eu
#
read KK
DT=`date`
TMP=`mktemp -d`
logger -t abix_dodatki "Instalacja - ${DT} - ${TMP}"
cd ${TMP}
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/apt_install.sh
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/pip3_install.sh
# teraz dodatkowe elementy
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/Scratch2.desktop
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_scratch2.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_scratch2_appdata.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/PyTechBrain.png
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/adobe-air_amd64.deb

##### [skrypt] #####################
chmod +x apt_install.sh
chmod +x pip3_install.sh
logger -t abix_dodatki "start instalatora"
clear
cat << EOF

    Witam serdecznie - tu instalator dodatków edukacyjnych dla ZorinOS
przygotowany przez Adama Jurkiewicza z firmy ABIX Edukacja. Teraz możesz

a) działać dalej - wówczas podaj hasło i naciśnij klawisz ENTER

b) przerwać pracę instalatora - wówczas naciśnij klawisze CTRL+C

==========================================================================
EOF
echo "Czekam na Twoją decyzję...."
sudo ./apt_install.sh
sudo ./pip3_install.sh


cd "${TMP}"
# Ikona Scratch2
chmod +x Scratch2.desktop
cp Scratch2.desktop "${HOME}/Pulpit/."

cd 
tar xzvf "${TMP}/_scratch2_appdata.tgz"

gio set "$HOME/Pulpit/Scratch2.desktop" "metadata::trusted" yes
