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


echo "Removing old files/folders from conky folder"
rm -rf ../archiso/airootfs/etc/skel/.config/conky/*
echo "Copying new files/folders to conky folders from github"
cp -r ../../Archlabs-Conky-New-Syntax/* ../archiso/airootfs/etc/skel/.config/conky/
echo "delete junk files"
rm -rf ../archiso/airootfs/etc/skel/.config/conky/git-v*.sh
rm -rf ../archiso/airootfs/etc/skel/.config/conky/README.md
echo "Everything updated"