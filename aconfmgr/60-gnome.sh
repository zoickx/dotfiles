## Very basic GNOME desktop for the very occasional sway-incompatible action

AddPackage gnome-shell # Next generation desktop shell

# GNOME uses wayland by default, but I might want X for..something, right?
AddPackage xorg-server # Xorg X server


## Basic config for Xorg

# Keyboard: us,ru,ua; shifts_toggle; ctrl swapped with caps
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
# Touchpad: tapping; natural scrolling
CopyFile /etc/X11/xorg.conf.d/40-libinput.conf
# Mouse: flat acceleration profile
CopyFile /etc/X11/xorg.conf.d/50-mouse-acceleration.conf


