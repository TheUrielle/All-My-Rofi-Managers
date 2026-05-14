#!/bin/bash

while true; do
devices=$(pactl list sinks | awk '/Sink #/ {id=substr($2,2)} /Description:/ {sub(/^[ \t]*Description: /,""); print id " | " $0}')
defdevice=$(pactl list sinks | grep -A 1 "$(pactl get-default-sink)" | grep "Description" | awk '{sub(/^[ \t]*Description: /,""); print}')
choice=$(echo "$devices" | rofi -dmenu -mesg "Select Device | $defdevice")

case "$choice" in
  "") break ;;
esac

id=$(echo "$choice" | awk '{print $1}')
pactl set-default-sink $id
done
