#!/bin/bash
#set -e
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Archlabs 	: 	https://archlabsblog.wordpress.com/
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Updating the etc/skel folder"

echo "Removing old files/folders from folder"
rm -rf ../archiso/airootfs/etc/skel/.* 2> /dev/null

echo "Updating the root folder"

echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Other-Config-Files/root/. ../archiso/airootfs/etc/skel/
echo "delete junk files"
rm -rf ../archiso/airootfs/etc/skel/.config/git-v*.sh
rm -rf ../archiso/airootfs/etc/skel/.config/README.md
echo "Everything updated"


echo "Updating the .config folder"

mkdir ../archiso/airootfs/etc/skel/.config
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Other-Config-Files/config/* ../archiso/airootfs/etc/skel/.config/
echo "Everything updated"


echo "Since we deleted everything in skel"

echo "Installing openbox config files"

mkdir ../archiso/airootfs/etc/skel/.config/openbox
sh 10-config-openbox-configuration-folder-v1.sh

echo "Installing tint2 files"

mkdir ../archiso/airootfs/etc/skel/.config/tint2
sh 20-config-tint-folder-v1.sh

echo "Installing conky folder"

mkdir ../archiso/airootfs/etc/skel/.config/conky
sh 30-config-conky-folder-v1.sh

