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


# cleaning tmp
[ -d /tmp/archlabs ] && sudo rm -rf /tmp/archlabs

sudo git clone https://github.com/ARCHLabs/Archlabs-Iso /tmp/archlabs
cd /tmp/archlabs/archiso/


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
#[ -d /tmp/archlabs ] && rm -rf /tmp/archlabs