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

echo "building local" 


echo "Deleting the build folder if one exists - takes some time"

# cleaning folder
[ -d ~/archlabs-build ] && sudo rm -rf ~/archlabs-build

echo "Copying files and folder to ~/archlabs-build"

sudo cp -r ../../Archlabs-Iso ~/archlabs-build



cd ~/archlabs-build/archiso/


echo "################################################################"
read -p "In order to build an iso we need to clean your cache (y/n)?" choice

	case "$choice" in 
 	 y|Y ) sudo pacman -Sc;;
 	 n|N ) echo "Script has stopped. Nothing changed." & exit;;
 	 * ) echo "Type y or n." & echo "Script ended!" & exit;;
	esac


echo "Making the Iso"

sudo ./build.sh -v
 
