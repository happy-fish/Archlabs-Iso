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
rm -rf ../archiso/airootfs/usr/bin/*
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Pipemenus/* ../archiso/airootfs/usr/bin/
echo "making executable"
chmod u+x ../archiso/airootfs/usr/bin/al*
chmod u+x ../archiso/airootfs/usr/bin/cleanup.sh
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/bin/git-v*.sh
rm -rf ../archiso/airootfs/usr/bin/README.md
echo "Everything updated"