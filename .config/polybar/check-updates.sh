#!/bin/sh

err=false

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi


# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
if ! updates_aur=$(yay -Qu 2> /dev/null| wc -l); then
    updates_aur=0
fi




updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -gt -1 ]; then
    echo " $updates"
else
	echo ""
fi


