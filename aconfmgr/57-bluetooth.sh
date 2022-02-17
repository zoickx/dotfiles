## Bluetooth stuffs

# note: bluetooth is actually managed by the [bluez] package,
# automatically installed as a dependency of [blueman], the manager
AddPackage blueman # GTK+ Bluetooth Manager

# [systemctl enable bluetooth.service]
CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service

# I believe these are responsible for keeping track of actual connections
# I'm fine with doing that imperatively
IgnorePath '/var/lib/blueman/*'
IgnorePath '/var/lib/bluetooth/*'
