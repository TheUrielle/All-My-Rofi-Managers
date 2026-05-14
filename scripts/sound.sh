#!/bin/bash

while true; do
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
device=$(pactl list sinks | grep -A 1 "$(pactl get-default-sink)" | grep "Description" | awk '{sub(/^[ \t]*Description: /,""); print}')

choice=$(echo -e "󰝝 Volume Up\n󰝞 Volume Down\n󰕾 Volume 100%\n󰖀 Volume 50%\n󰝟 Mute\n󰾰 Output Device\n󰩈 Exit" | rofi -dmenu -mesg "Volume: $volume | $device | $(pactl get-sink-mute @DEFAULT_SINK@)")

case "$choice" in
  "󰝝 Volume Up") pactl set-sink-volume @DEFAULT_SINK@ +5% ;;
  "󰝞 Volume Down") pactl set-sink-volume @DEFAULT_SINK@ -5% ;;
  "󰕾 Volume 100%") pactl set-sink-volume @DEFAULT_SINK@ 100% ;;
  "󰖀 Volume 50%") pactl set-sink-volume @DEFAULT_SINK@ 50% ;;
  "󰝟 Mute") pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
  "󰾰 Output Device") ~/.config/rofi/scripts/sdevice.sh ;;
  "󰩈 Exit"|"") break ;;
esac
done
