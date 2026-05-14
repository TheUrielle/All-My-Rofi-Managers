#!/bin/bash

while true; do
id="$1"
choice="$(echo -e "󱘖 Connect\n Disconnect\n Pair\n󰆴 Remove" | rofi -dmenu -mesg "$(bluetoothctl devices | awk '{sub(/^Device /,""); print}'| grep "$id" | awk '{print $1, " | ", substr($0, index($0,$2))}')")"
case "$choice" in
	"󱘖 Connect") bluetoothctl connect "$id" ;;
	" Disconnect") bluetoothctl disconnect "$id" ;;
	" Pair") echo -e "power on\nagent on\ndefault-agent\npair "$id"" | bluetoothctl ;;
	"󰆴 Remove") bluetoothctl remove "$id" ;;
	"") exit ;;
esac
done
