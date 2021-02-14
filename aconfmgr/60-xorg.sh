## Basic Xorg
AddPackage xorg-server # Xorg X server
AddPackage xorg-xinit # X.Org initialisation program # (startx)

## Xorg config

# Keyboard: us,ru,ua; shifts_toggle; ctrl swapped with caps
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
# Touchpad: tapping; natural scrolling
CopyFile /etc/X11/xorg.conf.d/40-libinput.conf
# Mouse: flat acceleration profile
CopyFile /etc/X11/xorg.conf.d/50-mouse-acceleration.conf

## DWM

# build deps
AddPackage libx11 # X11 client-side library
AddPackage libxft # FreeType-based font drawing library for X
AddPackage libxinerama # X11 Xinerama extension library

# related packages
AddPackage xorg-xsetroot # dwm status bar text with [xsetroot]
AddPackage xorg-xset # keyboard params in [.xinitrc] with [xset]
AddPackage dmenu # the fancy app launcher
AddPackage --foreign ttf-iosevka # the main font
