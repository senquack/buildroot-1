#!/bin/sh

[ -z "$1" ] || [ "x$1" = "xstart" ] || exit 0

mkdir -p /media/data
mount --bind /boot /media/data

mkdir -p /media/data/apps /media/data/local/home
chown od:users /media/data/apps /media/data/local/home

ln -s /usr/local/home /media/home

mount -o remount,ro /media

for i in bin etc home lib sbin share; do
	mkdir -p /usr/local/$i
	chown od:users /usr/local/$i
done

chown root:video /sys/class/graphics/fb0/blank
chmod 664 /sys/class/graphics/fb0/blank

chown root:video /sys/devices/virtual/vtconsole/vtcon1/bind
chmod 664 /sys/devices/virtual/vtconsole/vtcon1/bind
