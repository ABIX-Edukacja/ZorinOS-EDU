#!/bin/bash
#
# Skrypt instalujący różne dodatki, wersja 0.02
#
# (C) by Adam Jurkiewicz ABIX Edukacja https://abixedukacja.eu
#
DT=`date`
TMP=`mktemp -d`
logger -t abix_dodatki "Instalacja - ${DT} - ${TMP}"
cd ${TMP}
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/apt_install.sh
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/pip3_install.sh
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
