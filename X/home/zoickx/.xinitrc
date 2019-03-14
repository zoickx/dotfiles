# basic status bar loop
sh ~/.status.sh &

# set keyboard repeat delay and speed
xset r rate 290 30 &

# (Swap Ctrl and CapsLock buttons)
xmodmap ~/.Xmodmap &

exec owncloud &
exec rslsync &
exec dwm
