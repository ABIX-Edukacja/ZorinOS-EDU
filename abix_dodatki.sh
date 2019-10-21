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
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_ikony.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_mu.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_ab.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_scratch2.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/_scratch2_appdata.tgz
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/PyTechBrain.png
wget https://raw.githubusercontent.com/ABIX-Edukacja/ZorinOS-EDU/master/run_s2aio.sh
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
sudo ./apt_install.sh ${USERNAME}
sudo ./pip3_install.sh

U=`id -un`
echo "Wracam do mojego usera: ${U}"

cd "${TMP}"
# Ikony
tar xzvf _ikony.tgz
LSK=`ls -1 *.desktop`
for plik in $LSK
do
    chmod +x ${plik}
    cp ${plik} "${HOME}/Pulpit/."
    gio set "$HOME/Pulpit/${plik}" "metadata::trusted" yes
done

cd
tar xzvf "${TMP}/_scratch2_appdata.tgz" > /dev/null 2>>/dev/null
tar xzvf "${TMP}/_mu.tgz" > /dev/null 2>>/dev/null



##########
cat << EOF
==========================================================================

OK - Koniec, teraz zapisz wszystko, co masz otwarte i zrestartuj komputer.

Powodzenia, Adam Jurkiewicz

==========================================================================

EOF
