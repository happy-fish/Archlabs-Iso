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
rm -rf ../archiso/airootfs/usr/lib/archlabs/common/*
echo "Copying new files/folders to folder from github"
cp -r ../../Archlabs-Common/* ../archiso/airootfs/usr/lib/archlabs/common/
echo "delete junk files"
rm -rf ../archiso/airootfs/usr/lib/archlabs/common/git-v*.sh
rm -rf ../archiso/airootfs/usr/lib/archlabs/common/README.md
echo "Everything updated"