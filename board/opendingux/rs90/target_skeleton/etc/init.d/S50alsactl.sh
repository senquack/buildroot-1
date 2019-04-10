#!/bin/sh

[ -z "$1" ] || [ "x$1" = "xstart" ] || exit 0

/usr/sbin/alsactl -f /etc/asound.state restore rs90audio
