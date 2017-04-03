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

echo "First we are going to upload all changes to the github"
echo "Since we are building straight from github"
echo "into a root only environment"

../git-v2.sh

echo "Deleting the build folder if one exists - takes some time"
# cleaning tmp
[ -d ~/archlabs-build ] && sudo rm -rf ~/archlabs-build

sudo git clone https://github.com/ARCHLabs/Archlabs-Iso ~/archlabs-build
echo "making sure everthing is root"
sudo chown -R root:root ~/archlabs-build
cd ~/archlabs-build/archiso/


echo "################################################################"
read -p "In order to build an iso we need to clean your cache (y/n)?" choice

	case "$choice" in 
 	 y|Y ) sudo pacman -Scc;;
 	 n|N ) echo "Script has stopped. Nothing changed." & exit;;
 	 * ) echo "Type y or n." & echo "Script ended!" & exit;;
	esac


echo "Making the Iso - confirm each time"

sudo ./build.sh -v

# cleaning tmp
#[ -d ~/archlabs-build ] && rm -rf ~/archlabs-build