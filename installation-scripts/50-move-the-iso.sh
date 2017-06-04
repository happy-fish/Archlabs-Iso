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

echo "moving iso to documents and insync" 


cp ~/archlabs-build/archiso/out/archlabs-* ~/Documents/
cp ~/archlabs-build/archiso/out/archlabs-* ~/Insync/ArchLabs\ Shared/Iso/
 
