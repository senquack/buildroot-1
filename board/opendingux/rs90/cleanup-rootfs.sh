#!/bin/sh

# We run dropbear from inetd
rm $1/etc/init.d/S50dropbear

if [ ! -h $1/usr/share/fonts/truetype ] ; then
	ln -s . $1/usr/share/fonts/truetype
fi

exit 0
