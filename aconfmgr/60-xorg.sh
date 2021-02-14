AddPackage xorg-server # Xorg X server

# [startx]
AddPackage xorg-xinit # X.Org initialisation program
# dwm status bar text with [xsetroot]
AddPackage xorg-xsetroot # Classic X utility to set your root window background to a given pattern or color
# keyboard params in [.xinitrc] with [xset]
AddPackage xorg-xset # User preference utility for X

# dependencies of dmw
AddPackage libx11 # X11 client-side library
AddPackage libxft # FreeType-based font drawing library for X
AddPackage libxinerama # X11 Xinerama extension library

# the fancy app launcher
AddPackage dmenu # Generic menu for X
# the font
AddPackage --foreign ttf-iosevka # Typeface family designed for coding, terminal use and technical documents.
