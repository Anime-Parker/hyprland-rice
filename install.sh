#!/bin/bash

# Save the absolute path of the repository root so cp commands work after cd
REPO_DIR=$(pwd)

# ==========================================
# Helper Function: Pause for Manual Action
# ==========================================
prompt_user() {
    local message="$1"
    local user_input=""
    
    echo -e "\n=================================================="
    echo -e " 🛑 MANUAL ACTION REQUIRED "
    echo -e "=================================================="
    echo -e "$message"
    echo -e "--------------------------------------------------"
    
    while [[ "$user_input" != "y" && "$user_input" != "continue" ]]; do
        read -p "Type 'y' or 'continue' to resume the script: " user_input
    done
    
    echo -e "Resuming script...\n"
}

echo "Starting EndeavourOS Ricing Script (Strict 1-to-1 Execution)..."

# 1. sudo pacman -Syu
sudo pacman -Syu --noconfirm

# 2. sudo pacman -S hyprland hyprlock awww matugen fish kitty rofi waybar tree nautilus fast fetch -noconfirm
sudo pacman -S hyprland hyprlock awww matugen fish kitty rofi waybar tree nautilus fastfetch --noconfirm

# 3. yay -S nmgui-bin [Clean Build (no)]
yay -S nmgui-bin --noconfirm --answerclean no --answerdiff none

# 4. chsh -s /usr/bin/fish
chsh -s /usr/bin/fish

# 5, 6, 7. Hyprland initialization
prompt_user "STEPS 5, 6, & 7:\n1. Type 'Hyprland' in this terminal.\n2. Press SUPER+M to exit.\n3. Type 'start-hyprland' and exit again."

# 8. Apply hyprland.lua
mkdir -p ~/.config/hypr/
cp "$HOME/hyprland-rice/hyprland.lua/Revision 1" ~/.config/hypr/hyprland.lua

# 9. sudo pacman -S btop(resources monitor)
sudo pacman -S btop --noconfirm

# 10. sudo pacman -S cava(audio visualizer)
sudo pacman -S cava --noconfirm

# 11. cd ~/.config/hypr/
cd ~/.config/hypr/ || exit

# 12, 13, 14. touch files
touch hyprlock.lua
touch hypridle.lua
touch colours.lua

# 15. mkdir configs
mkdir configs

# 16. cd configs
cd configs || exit

# 17 to 22. touch config files
touch input.lua
touch keybinds.lua
touch looknfeel.lua
touch tags.lua
touch UserAnimations.lua
touch windowrules.lua

# 23. mkdir scripts (backing out to hypr dir first)
cd ..
mkdir scripts

# 24. touch hyprplugins.lua
cd scripts || exit
touch hyprplugins.lua

# Returning to repo for installations
cd "$HOME/hyprland-rice" || exit

# 25. yay -S sublime-text {followed by 1, followed by no if asked for clean build}
yay -S sublime-text --noconfirm --answerclean no --answerdiff none
# 26. sudo pacman -S hypridle
sudo pacman -S hypridle --noconfirm

# 27. Apply hyprland.lua Revision 1
cp "$HOME/hyprland-rice/hyprland.lua/Revision 1" ~/.config/hypr/hyprland.lua 

# 28. Apply Hypridle.conf
cp "$HOME/hyprland-rice/hypr/scripts/Hypridle.conf" ~/.config/hypr/hypridle.conf

# 29. sudo pacman -S brightnessctl
sudo pacman -S brightnessctl --noconfirm

# 30. Apply Hyprlock.conf
cp "$HOME/hyprland-rice/hypr/scripts/Hyprlock.conf" ~/.config/hypr/hyprlock.conf

# 31. Apply configs/keybinds
cp "$HOME/hyprland-rice/hypr/configs/keybinds" ~/.config/hypr/configs/keybinds.lua

# 32. Apply scripts/screenshot.sh
cp "$HOME/hyprland-rice/hypr/scripts/screenshot.sh" ~/.config/hypr/scripts/screenshot.sh

# 33. sudo pacman -S hyprshot
sudo pacman -S hyprshot --noconfirm

# 34. mkdir ~/Pictures
mkdir -p ~/Pictures

# 35. cd Pictures
cd ~/Pictures || exit

# 36. mkdir screenshots
mkdir screenshots

# 37. cd ~/.config/hypr/scripts/
cd ~/.config/hypr/scripts/ || exit

# 38. chmod +x screenshot.sh
chmod +x screenshot.sh

# 39. Apply hyprland.lua Revision 2
cp "$HOME/hyprland-rice/hyprland.lua/Revision 2" ~/.config/hypr/hyprland.lua

# 40. cd ~/.config/hypr/configs
cd ~/.config/hypr/configs || exit

# 41. touch tags.lua
touch tags.lua

# 42. apply tags.lua
cp "$HOME/hyprland-rice/hypr/configs/tags.lua" tags.lua

# 43. apply hyprland.lua revision 3
cp "$HOME/hyprland-rice/hyprland.lua/Revision 3" ~/.config/hypr/hyprland.lua

# 44. cd ~/.config/hypr/scripts/
cd ~/.config/hypr/scripts/ || exit

# 45. touch hyprlock.sh
touch hyprlock.sh

# 46. apply hyprlock.sh
cp "$HOME/hyprland-rice/hypr/scripts/hyprlock.sh" hyprlock.sh

# 47. chmod +x hyprlock.sh
chmod +x hyprlock.sh

# 48. sudo pacman -S zsh
sudo pacman -S zsh --noconfirm

# 49. yay -S snappy-switcher(clean build not required)
yay -S snappy-switcher --noconfirm --answerclean no --answerdiff none

# 50. apply hyprland revision 4
cp "$HOME/hyprland-rice/hyprland.lua/Revision 4" ~/.config/hypr/hyprland.lua

# 51. cd ~/.config/
cd ~/.config/ || exit

# 52. mkdir snappy-switcher
mkdir snappy-switcher

# 53. cd snappy-switcher
cd snappy-switcher || exit

# 54. touch config.ini
touch config.ini
cp "$HOME/hyprland-rice/snappy-switcher/config.ini" config.ini

# 55. touch ~/.config/hypr/scripts/wppicker.sh
touch ~/.config/hypr/scripts/wppicker.sh

# 56. chmod +x ~/.config/hypr/scripts/wppicker.sh
chmod +x ~/.config/hypr/scripts/wppicker.sh

# 57. apply wppicker.sh
cp "$HOME/hyprland-rice/hypr/scripts/wppicker.sh" ~/.config/hypr/scripts/wppicker.sh

# 58. {add wallpapers to Pictures/wallpapers/ directory}
echo "Automating Step 58: Copying wallpapers..."
mkdir -p ~/Pictures/wallpapers/
cp -r "$HOME/hyprland-rice/wallpapers/"* ~/Pictures/wallpapers/

# 59. cd ~/.config/
cd ~/.config/ || exit

# 60. mkdir rofi
mkdir rofi

# 61. cd rofi
cd rofi || exit

# 62. touch config.rasi
touch config.rasi

# 63. apply config.rasi
cp "$HOME/hyprland-rice/rofi/config.rasi" config.rasi

# 64. sudo pacman -S swaync
sudo pacman -S swaync --noconfirm

# 65. cd ~/.config/hypr/scripts/
cd ~/.config/hypr/scripts/ || exit

# 66. touch wbrestart.sh
touch wbrestart.sh

# 67. apply wbrestart.sh
cp "$HOME/hyprland-rice/hypr/scripts/wbrestart.sh" wbrestart.sh

# 68. chmod +x wbrestart.sh
chmod +x wbrestart.sh

# 69. cd ~/.config/hypr/scripts/
cd ~/.config/hypr/scripts/ || exit

# 70. touch KillActive Process.sh
touch KillActiveProcess.sh

# 71. chmod +x KillActiveProcess.sh
chmod +x KillActiveProcess.sh

# 72. apply KillActiveProcess.sh
cp "$HOME/hyprland-rice/hypr/scripts/KillActiveProcess.sh" KillActiveProcess.sh

# 73. cd ~/.config/
cd ~/.config/ || exit

# 74. mkdir waybar
mkdir waybar

# 75. cd waybar
cd waybar || exit

# 76. yay -S python-pywalfox
yay -S python-pywalfox --noconfirm --answerclean no --answerdiff none

# 77. {Install Pywalfox Extension...}
prompt_user "STEP 77:\nInstall the Pywalfox Extension in Firefox, open it and try to fetch colors [it wont work but attempt is mandatory]."

# 78. mkdir configs
mkdir configs

# 79 to 83. touch Modules... style.css
touch Modules ModulesCustom ModulesGroups ModulesWorkspaces style.css

# 84. cd configs
cd configs || exit

# 85, 86. touch taskbar, window middle
touch taskbar "window middle"

# 87. Apply all files respectivly...
cp "$HOME/hyprland-rice/Waybar/Modules" ../Modules
cp "$HOME/hyprland-rice/Waybar/ModulesCustom" ../ModulesCustom
cp "$HOME/hyprland-rice/Waybar/ModulesGroups" ../ModulesGroups
cp "$HOME/hyprland-rice/Waybar/ModulesWorkspaces" ../ModulesWorkspaces
cp "$HOME/hyprland-rice/Waybar/style.css" ../style.css
cp "$HOME/hyprland-rice/Waybar/configs/taskbar" ./taskbar
cp "$HOME/hyprland-rice/Waybar/configs/window middle" "./window middle"

# 88. Apply Keybinds Revision at ~/.config/hypr/configs/keybinds.lua4
cp "$HOME/hyprland-rice/hypr/configs/keybinds" ~/.config/hypr/configs/keybinds.lua4

# 89. cd ~/.config/kitty
mkdir -p ~/.config/kitty
cd ~/.config/kitty || exit

# 90. touch kitty.conf
touch kitty.conf

# 91. Apply kitty.conf
cp "$HOME/hyprland-rice/kitty/kitty.conf" kitty.conf

# 92. cd..
cd .. || exit

# 93. sudo pacman -S cava
sudo pacman -S cava --noconfirm

# 94. mkdir cava
mkdir cava

# 95. cd cava
cd cava || exit

# 96. touch config
touch config

# 97. apply config
cp "$HOME/hyprland-rice/cava/config" config

# 98. cava {after 5 seconds close the terminal}
echo "Automating Step 98: Initializing Cava for 5 seconds..."
timeout 5 cava
stty sane || reset


# 99. mkdir ~/.cache/wal/
mkdir -p ~/.cache/wal/

# 100. cd ~/.config/gtk-3.0/
mkdir -p ~/.config/gtk-3.0/
cd ~/.config/gtk-3.0/ || exit

# 101. touch settings.ini
touch settings.ini

# 102. apply settings.ini
cp "$HOME/hyprland-rice/gtk-3.0/settings.ini" settings.ini

# 103. yay -S ttf-google-sans
yay -S ttf-google-sans --noconfirm --answerclean no --answerdiff none

# 104. cd..
cd .. || exit

# 105. mkdir gtk-4.0
mkdir gtk-4.0

# 106. mkdir qt5ct
mkdir qt5ct

# 107. cd qt5ct
cd qt5ct || exit

# 108. mkdir colors
mkdir colors

# 109. touch qt5ct.conf
touch qt5ct.conf

# 110. cd..
cd .. || exit

# 111. cd ~/.config/
cd ~/.config/ || exit

# 112. mkdir matugen
mkdir matugen

# 113. cd matugen
cd matugen || exit

# 114. touch config.toml
touch config.toml

# 115. mkdir templates
mkdir templates

# 116. cd templates
cd templates || exit

# 117 to 124. touch colors.css ... qtct-colors.conf
touch colors.css kitty-colors.conf hyprland-colors.conf rofi-colors.rasi matugen-cava pywalfox-colors.json gtk-colors.css qtct-colors.conf

# 125. apply all files from 116 to 123
cp "$HOME/hyprland-rice/Matugen/config.toml" ../config.toml
cp "$HOME/hyprland-rice/Templates/colors.css" ./colors.css
cp "$HOME/hyprland-rice/Templates/kitty-colors.conf" ./kitty-colors.conf
cp "$HOME/hyprland-rice/Templates/hyprland-colors.conf" ./hyprland-colors.conf
cp "$HOME/hyprland-rice/Templates/rofi-colors.rasi" ./rofi-colors.rasi
cp "$HOME/hyprland-rice/Templates/matugen-cava" ./matugen-cava
cp "$HOME/hyprland-rice/Templates/pywalfox-colors.json" ./pywalfox-colors.json
cp "$HOME/hyprland-rice/Templates/gtk-colors.css" ./gtk-colors.css
cp "$HOME/hyprland-rice/Templates/qtct-colors.conf" ./qtct-colors.conf

# 126. cd ~/.config/hypr/scripts/
cd ~/.config/hypr/scripts/ || exit

# 127. touch WaybarLayout.sh
touch WaybarLayout.sh

# 128. apply WaybarLayout.sh
cp "$HOME/hyprland-rice/hypr/scripts/WaybarLayout.sh" WaybarLayout.sh

# 129. chmod +x WaybarLayout.sh
chmod +x WaybarLayout.sh

# 130. sudo pacman -S blueman
sudo pacman -S blueman --noconfirm

# 131. sudo pacman -S otf-font-awesome ttf-font-awesome
sudo pacman -S otf-font-awesome ttf-font-awesome --noconfirm

# 132. set -U fish_greeting ""
fish -c 'set -U fish_greeting ""'

# 133. sudo systemctl enable --now bluetooth
sudo systemctl enable --now bluetooth

# 134. cd ~/.config/hypr/scripts/
cd ~/.config/hypr/scripts/ || exit

# 135, 136. touch volume.sh, brightness.sh
touch volume.sh brightness.sh

# 137. apply volume&brightness.sh respectivly
cp "$HOME/hyprland-rice/hypr/scripts/volume.sh" volume.sh
cp "$HOME/hyprland-rice/hypr/scripts/brightness.sh" brightness.sh

# 138, 139. chmod +x volume.sh, brightness.sh
chmod +x volume.sh
chmod +x brightness.sh

# 140. sudo pacman -S pamixer
sudo pacman -S pamixer --noconfirm

# 141. sudo pacman -S ttf-jetbrains-mono-nerd
sudo pacman -S ttf-jetbrains-mono-nerd --noconfirm

# 142. sudo systemctl edit getty@tty1.service
echo "Automating Step 142: Injecting TTY1 Auto-login for user $USER..."
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d/
echo -e "[Service]\nExecStart=\nExecStart=-/sbin/agetty --autologin $USER --noclear %I \$TERM" | sudo tee /etc/systemd/system/getty@tty1.service.d/override.conf > /dev/null

# 143. printf "\nif status is-login...
printf "\nif status is-login\n if test (tty) = \"/dev/tty1\"\n exec start-hyprland\n end\nend\n" >> ~/.config/fish/config.fish

# 144. sudo pacman -S sof-firmware...
sudo pacman -S sof-firmware alsa-firmware alsa-utils wireplumber pipewire-audio pipewire-alsa pipewire-pulse --noconfirm

# Final Implied Step: Apply Revision 5 (Required for final setup)
cp "$HOME/hyprland-rice/hyprland.lua/Revision 5" ~/.config/hypr/hyprland.lua

# 145. sudo reboot
prompt_user "Script execution is 100% complete. Ready to reboot into your new setup?"
sudo reboot

