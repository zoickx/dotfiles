## Very basic Xorg for the occasional wayland-incompatible action

AddPackage i3-wm # Improved dynamic tiling window manager
AddPackage dmenu # the fancy app launcher

AddPackage xorg-server # Xorg X server
AddPackage xorg-xinit # X.Org initialisation program # (startx)

## Xorg config

# Keyboard: us,ru,ua; shifts_toggle; ctrl swapped with caps
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
# Touchpad: tapping; natural scrolling
CopyFile /etc/X11/xorg.conf.d/40-libinput.conf
# Mouse: flat acceleration profile
CopyFile /etc/X11/xorg.conf.d/50-mouse-acceleration.conf


