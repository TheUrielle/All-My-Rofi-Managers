#!/bin/bash

PS3='Please select your Window Manager: '
options=("Hyprland" "Sway" "i3" "bspwm/compatibility" "Exit")
select wm in "${options[@]}"
do
  case $wm in
	"Hyprland")
		echo "# Bluetooth-Manager-Rofi :)" >> /home/$USER/.config/hypr/hyprland.conf
		echo "bind = SUPER, O, exec, /home/$USER/.config/rofi/scripts/blue.sh" >> /home/$USER/.config/hypr/hyprland.conf
		echo "# Pipewire-Manager-Rofi :)" >> /home/$USER/.config/hypr/hyprland.conf
		echo "bind = SUPER, L, exec, /home/$USER/.config/rofi/scripts/sound.sh" >> /home/$USER/.config/hypr/hyprland.conf
		echo "# Power-Manager-Rofi :)" >> /home/$USER/.config/hypr/hyprland.conf
		echo "bind = SUPER, P, exec, /home/$USER/.config/rofi/scripts/power.sh" >> /home/$USER/.config/hypr/hyprland.conf
		echo "Default keybind is SUPER + O (Bluez manager) SUPER + L (Pipewire/Sound manager) SUPER + P (Power manager) (you can change it in ~/.config/hypr/hyprland.conf)"
		break;;
	"Sway")
		mkdir -p /home/$USER/.config/sway
		echo "# Bluetooth-Manager-Rofi :)" >> /home/$USER/.config/sway/config
		echo "bindsym \$mod+o exec /home/$USER/.config/rofi/scripts/blue.sh" >> /home/$USER/.config/sway/config
		echo "# Pipewire-Manager-Rofi :)" >> /home/$USER/.config/sway/config
		echo "bindsym \$mod+l exec /home/$USER/.config/rofi/scripts/sound.sh" >> /home/$USER/.config/sway/config
		echo "# Power-Manager-Rofi :)" >> /home/$USER/.config/sway/config
		echo "bindsym \$mod+p exec /home/$USER/.config/rofi/scripts/power.sh" >> /home/$USER/.config/sway/config
		echo "Default keybind is SUPER + O (Bluez manager) SUPER + L (Pipewire/Sound manager) SUPER + P (Power manager) (you can change it in ~/.config/sway/config)"
		break;;
	"i3")
		mkdir -p /home/$USER/.config/i3
		echo "# Bluetooth-Manager-Rofi :)" >> /home/$USER/.config/i3/config
		echo "bindsym \$mod+o exec /home/$USER/.config/rofi/scripts/blue.sh" >> /home/$USER/.config/i3/config
		echo "# Pipewire-Manager-Rofi :)" >> /home/$USER/.config/i3/config
		echo "bindsym \$mod+l exec /home/$USER/.config/rofi/scripts/sound.sh" >> /home/$USER/.config/i3/config
		echo "# Power-Manager-Rofi :)" >> /home/$USER/.config/i3/config
		echo "bindsym \$mod+p exec /home/$USER/.config/rofi/scripts/power.sh" >> /home/$USER/.config/i3/config
		echo "Default keybind is SUPER + O (Bluez manager) SUPER + L (Pipewire/Sound manager) SUPER + P (Power manager) (you can change it in ~/.config/i3/config)"
		break;;
	"bspwm/compatibility")
    	echo "coming soon";;
	"Exit") 
		break;;
	*) 
		echo "invalid option";;
  esac
done
mkdir -p /home/$USER/.config/rofi
cp -r scripts /home/$USER/.config/rofi
