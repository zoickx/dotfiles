# basic status bar loop
exec sh ~/.status.sh &

# set keyboard repeat delay and speed
exec xset r rate 290 30 &

# (Swap Ctrl and CapsLock buttons)
xmodmap ~/.Xmodmap &

exec owncloud &
exec rslsync &
exec dwm
