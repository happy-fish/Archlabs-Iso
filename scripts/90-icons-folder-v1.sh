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

echo "Files from Archlabs-Icon-Themes"


echo "Removing old files/folders from folder"
rm -rf ../archiso/airootfs/usr/share/icons/*
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Icon-Themes//* ../archiso/airootfs/usr/share/icons/
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/share/icons/git-v*.sh
rm -rf ../archiso/airootfs/usr/share/icons/README.md
echo "Everything updated"



echo "Files from Sardi-Mono-Archlabs"


#echo "Removing old files/folders from folder"
#rm -rf ../archiso/airootfs/usr/share/icons/*
echo "Copying new files/folders to folder from github"
cp -r ../../Sardi-Mono-Archlabs/* ../archiso/airootfs/usr/share/icons/
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/share/icons/git-v*.sh
rm -rf ../archiso/airootfs/usr/share/icons/README.md
echo "Everything updated"