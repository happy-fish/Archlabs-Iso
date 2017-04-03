#!/bin/bash
set -e
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

echo "Files from Archlabs-Arc-Themes"


echo "Removing old files/folders from folder"
rm -rf ../archiso/airootfs/usr/share/themes/*
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Arc-Themes/* ../archiso/airootfs/usr/share/themes/
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/share/themes/git-v*.sh
rm -rf ../archiso/airootfs/usr/share/themes/README.md
echo "Everything updated"



echo "Files from Archlabs-Bunsen-Themes-Dev"


#echo "Removing old files/folders from folder"
#rm -rf ../archiso/airootfs/usr/share/themes/*
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Bunsen-Themes-Dev/* ../archiso/airootfs/usr/share/themes/
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/share/themes/git-v*.sh
rm -rf ../archiso/airootfs/usr/share/themes/README.md
echo "Everything updated"