#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Abif" ] || git clone https://github.com/ARCHLabs/Abif

cd Abif
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Aif" ] || git clone https://github.com/ARCHLabs/Aif

cd Aif
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Arc-Themes" ] || git clone https://github.com/ARCHLabs/Archlabs-Arc-Themes

cd Archlabs-Arc-Themes
git pull
echo $(basename `pwd`)" done"
cd ..


# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Bunsen-Themes-Dev" ] || git clone https://github.com/ARCHLabs/Archlabs-Bunsen-Themes-Dev

cd Archlabs-Bunsen-Themes-Dev
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Common" ] || git clone https://github.com/ARCHLabs/Archlabs-Common

cd Archlabs-Common
git pull
echo $(basename `pwd`)" done"
cd ..


# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Conky-New-Syntax" ] || git clone https://github.com/ARCHLabs/Archlabs-Conky-New-Syntax

cd Archlabs-Conky-New-Syntax
git pull
echo $(basename `pwd`)" done"
cd ..


# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Help-Files" ] || git clone https://github.com/ARCHLabs/Archlabs-Help-Files

cd Archlabs-Help-Files
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Icon-Themes" ] || git clone https://github.com/ARCHLabs/Archlabs-Icon-Themes

cd Archlabs-Icon-Themes
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Iso" ] || git clone https://github.com/ARCHLabs/Archlabs-Iso

cd Archlabs-Iso
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Openbox-Configs" ] || git clone https://github.com/ARCHLabs/Archlabs-Openbox-Configs

cd Archlabs-Openbox-Configs
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Openbox-Themes-Dbox" ] || git clone https://github.com/ARCHLabs/Archlabs-Openbox-Themes-Dbox

cd Archlabs-Openbox-Themes-Dbox
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Other-Config-Files" ] || git clone https://github.com/ARCHLabs/Archlabs-Other-Config-Files

cd Archlabs-Other-Config-Files
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Pipemenus" ] || git clone https://github.com/ARCHLabs/Archlabs-Pipemenus

cd Archlabs-Pipemenus
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Plank-Themes" ] || git clone https://github.com/ARCHLabs/Archlabs-Plank-Themes

cd Archlabs-Plank-Themes
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/archlabs_repo" ] || git clone https://github.com/ARCHLabs/archlabs_repo

cd archlabs_repo
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Slimlock-Theme" ] || git clone https://github.com/ARCHLabs/Archlabs-Slimlock-Theme

cd Archlabs-Slimlock-Theme
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Tint2" ] || git clone https://github.com/ARCHLabs/Archlabs-Tint2

cd Archlabs-Tint2
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Archlabs-Wallpaper" ] || git clone https://github.com/ARCHLabs/Archlabs-Wallpaper

cd Archlabs-Wallpaper
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/calamares" ] || git clone https://github.com/ARCHLabs/calamares

cd calamares
git pull
echo $(basename `pwd`)" done"
cd ..

# if there is no folder then make one
[ -d $HOME"/ARCHLABS/Sardi-Mono-Archlabs" ] || git clone https://github.com/ARCHLabs/Sardi-Mono-Archlabs

cd Sardi-Mono-Archlabs
git pull
echo $(basename `pwd`)" done"
cd ..

notify-send -u normal "All githubs have been updated. Carry on!"
