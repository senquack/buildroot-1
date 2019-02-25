#!/bin/sh

[ -z "$1" ] || [ "x$1" = "xstart" ] || exit 0

mkdir -p /media/data
mount --bind /boot /media/data

mkdir -p /media/data/apps

mkdir -p /media/data/local/home
chown od:users /media/data/local/home

ln -s data/local/home /media/home
mount -o remount,ro /media

for i in bin etc home lib sbin share; do
	mkdir -p /usr/local/$i
done
