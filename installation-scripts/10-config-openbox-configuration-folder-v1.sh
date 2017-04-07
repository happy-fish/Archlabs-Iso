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
rm -rf ../archiso/airootfs/etc/skel/.config/openbox/*
echo "Copying new files/folders to folders from github"
cp -r ../../Archlabs-Openbox-Configs/* ../archiso/airootfs/etc/skel/.config/openbox/
echo "delete junk files"
rm -rf ../archiso/airootfs/etc/skel/.config/openbox/git-v*.sh
rm -rf ../archiso/airootfs/etc/skel/.config/openbox/README.md
echo "Everything updated"