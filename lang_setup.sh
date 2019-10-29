#!/bin/bash
#
# ustawinie languages w Zorin OS 15
apt-get update
apt-get remove -y language-pack-ar* language-pack-de* language-pack-es* language-pack-fr* language-pack-it* language-pack-ja* language-pack-pt* language-pack-ru* language-pack-zh* 
apt-get remove -y language-pack-gnome-ar* language-pack-gnome-de* language-pack-gnome-es* language-pack-gnome-fr* language-pack-gnome-it* language-pack-gnome-ja* language-pack-gnome-pt* language-pack-gnome-ru* language-pack-gnome-zh*
apt-get remove -y libreoffice-l10n-*
apt-get install -y libreoffice-l10n-pl language-pack-gnome-pl* language-pack-pl*
apt-get install -y myspell-dictionary-pl hyphen-pl  libreoffice-help-pl mythes-pl
apt-get upgrade
