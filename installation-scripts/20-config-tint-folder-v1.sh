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


echo "Removing old files/folders from folder"
rm -rf ../archiso/airootfs/etc/skel/.config/tint2/*
echo "Copying new files/folders to folders from github"
cp -r ../../Archlabs-Tint2/* ../archiso/airootfs/etc/skel/.config/tint2/
echo "copying personal tint2 files to /usr/share/tint2"
cp -r ../../Archlabs-Tint2/themes/archlabs* ../archiso/airootfs/usr/share/tint2/
echo "delete junk files"
rm -rf ../archiso/airootfs/etc/skel/.config/tint2/git-v*.sh
rm -rf ../archiso/airootfs/etc/skel/.config/tint2/README.md
echo "Everything updated"