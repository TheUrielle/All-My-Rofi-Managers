#!/bin/bash

choice=$(echo -e "󰐥 shutdown\n󰤁 reboot\n󰤄 sleep" | rofi -dmenu -mesg "Power")

case "$choice" in
  "") break ;;
  "󰐥 shutdown") shutdown -h 0 ;;
  "󰤁 reboot") systemctl reboot ;;
  "󰤄 sleep") systemctl suspend ;;
  "󰩈 Exit") break ;;
esac
