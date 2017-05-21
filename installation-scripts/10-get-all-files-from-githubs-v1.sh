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
cp -r ../../Archlabs-Iso-Skel/root/. ../archiso/airootfs/etc/skel/
echo "Everything copied in root"


echo "Updating the .config folder"
mkdir ../archiso/airootfs/etc/skel/.config
echo "Copying files/folders to folder from github"
cp -r ../../Archlabs-Iso-Skel/config/* ../archiso/airootfs/etc/skel/.config/
echo "Everything copied in ~/.config"


echo "Updating openbox config files"
mkdir ../archiso/airootfs/etc/skel/.config/openbox
echo "Copying new files/folders to folders from github"
cp -r ../../Archlabs-Openbox-Configs/* ../archiso/airootfs/etc/skel/.config/openbox/
echo "delete junk files"
rm -rf ../archiso/airootfs/etc/skel/.config/openbox/git-v*.sh
rm -rf ../archiso/airootfs/etc/skel/.config/openbox/README.md
echo "Everything copied in ~/.config/openbox"


echo "Updating the conky files"
mkdir ../archiso/airootfs/etc/skel/.config/conky
cp -r ../../Archlabs-Conky-Collection/* ../archiso/airootfs/etc/skel/.config/conky/
echo "delete junk files"
rm -rf ../archiso/airootfs/etc/skel/.config/conky/git-v*.sh
rm -rf ../archiso/airootfs/etc/skel/.config/conky/README.md
echo "Everything copied in ~/.config/openbox"
