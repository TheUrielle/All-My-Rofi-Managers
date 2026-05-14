#!/bin/bash

choice=$(echo -e "󰂯 Power On\n󰂲 Power Off\n󰂰 Scan\n󰾰 Devices\n󰩈 Exit" | if pgrep -x "bluetoothctl" > /dev/null; then rofi -dmenu -mesg "Bluetooth | Scanning..."; else rofi -dmenu -mesg "Bluetooth"; fi)

case "$choice" in
  "󰂯 Power On") bluetoothctl power on ;;
  "󰂲 Power Off") bluetoothctl power off ;;
  "󰂰 Scan") bluetoothctl --timeout 30 scan on & ~/.config/rofi/scripts/btdevice.sh ;;
  "󰾰 Devices") ~/.config/rofi/scripts/btdevice.sh ;;
  "󰩈 Exit") exit ;;
  "") exit ;;
esac
