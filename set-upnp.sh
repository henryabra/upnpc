#!/usr/bin/env sh
trap "upnpc -d $1 TCP" TERM
upnpc -e "Docker upnpc HA" -a `upnpc -l | grep "Local LAN ip address" | cut -d: -f2` $1 $1 TCP
tail -f /dev/null & wait
