#!/bin/bash

PS3='Please select your Window Manager: '
options=("Hyprland" "Sway" "i3" "bspwm" "Exit")
select wm in "${options[@]}"
do
  case $wm in
	"Hyprland") echo "# All-Rofi-Managers-TheUrielle :)" >> /home/$USER/.config/hypr/hyprland.conf && echo "bind = SUPER, L, exec, /home/$USER/.config/rofi/scripts/sound.sh" >> /home/$USER/.config/hypr/hyprland.conf && echo "bind = SUPER, O, exec, /home/$USER/.config/rofi/scripts/blue.sh" >> /home/$USER/.config/hypr/hyprland.conf && echo "bind = SUPER, P, exec, /home/$USER/.config/rofi/scripts/power.sh" >> /home/$USER/.config/hypr/hyprland.conf && echo "Default Keybind is SUPER + L (Sound Manager), SUPER + P (Power Menu), SUPER + O (Bluez Manager) (you can change it in HOME/.config/hypr/hyprland.conf)" && break;;
	"Sway") echo "coming soon";;
	"i3") echo "coming soon";;
	"bspwm") echo "coming soon";;
	"Exit") break;;
	*) echo "invalid option";;
  esac
done
mkdir -p /home/$USER/.config/rofi
cp -r scripts /home/$USER/.config/rofi

