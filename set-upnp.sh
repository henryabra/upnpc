#!/usr/bin/env sh
trap "upnpc -d $1 TCP" TERM

while true
do
	upnpc -e "Docker upnpc HA" -r $1 TCP
	sleep 300
done
