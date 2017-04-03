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
rm -rf ../archiso/airootfs/usr/share/slim/themes/*
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Slimlock-Theme/* ../archiso/airootfs/usr/share/slim/themes/
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/share/slim/themes/git-v*.sh
rm -rf ../archiso/airootfs/usr/share/slim/themes/README.md

echo "moving slim.conf to /etc"
cp ../archiso/airootfs/usr/share/slim/themes/slim.conf ../archiso/airootfs/etc/
rm -rf ../archiso/airootfs/usr/share/slim/themes/slim.conf
echo "Everything updated"



