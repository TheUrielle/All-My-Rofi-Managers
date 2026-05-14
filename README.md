# All-My-Rofi-Managers
Just a clean install including all of my simple but usable rofi managers. :3

Dependencies:<br>
> rofi<br>
> git<br>
> bluez<br>
> pipewire<br>
> pipewire-pulse<br>
> wireplumber<br>

<h1>Installation:</h1>

Installing Dependecies:<br>
> Arch:<br>
```
sudo pacman -Syu rofi git bluez pipewire pipewire-pulse wireplumber
```
```
systemctl --user enable --now pipewire pipewire-pulse wireplumber
```
```
sudo systemctl enable --now bluez
```
> Ubuntu:<br>
```
sudo apt update && sudo apt upgrade && sudo apt install rofi git bluez pipewire pipewire-pulse wireplumber
```
```
systemctl --user enable --now pipewire pipewire-pulse wireplumber
```
```
sudo systemctl enable --now bluez
```
Adjust for your package manager<br>

Installing the manager:<br>
```
git clone https://github.com/TheUrielle/All-My-Rofi-Managers.git
cd All-My-Rofi-Managers
chmod +x install.sh
./install.sh
```
<h1>IMPORTANT!!!</h1>

The installer fully supports only hyprland for now. The scripts get installed in the ```$home/.config/rofi/scripts``` folder and you need to assign the keybinds for the script manually.<br>

Planned Adittions:<br>
> - Multi WM and DE support out of the box.<br>
> - Selecting Keyboard shortcut during installation.<br>
> - All known bugs stated in root repositories.<br>
