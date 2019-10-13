#!/usr/bin/env bash
#
# Skrypt instalujący różne dodatki, wersja 0.01
# 13.10.2019, 15:19:44	1570972784000
#
# (C) by Adam Jurkiewicz ABIX Edukacja https://abixedukacja.eu
#
DT=`date`
TMP=`mktemp`
logger -t abix_dodatki "Instalacja - ${DT}"
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

a) działać dalej - wówczas naciśnij klawisz ENTER

b) przerwać pracę instalatora - wówczas naciśnij klawisze CTRL+C

==========================================================================
EOF
read KK
echo " OK, a więc podaj hasło administracyjne (czyli Twoje)...."
sudo ./apt_install.sh
sudo ./pip3_install.sh
