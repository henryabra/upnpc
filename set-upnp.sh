#!/usr/bin/env bash
trap 'upnpc -d 8123 TCP' SIGTERM
upnpc -e "Docker upnpc HA" -a `upnpc -l | grep "Local LAN ip address" | cut -d: -f2` 8123 8123 TCP
tail -f /dev/null & wait
