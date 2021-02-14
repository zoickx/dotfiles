

# Sat Feb 13 23:06:34 EET 2021 - Unknown packages



AddPackage bison # The GNU general-purpose parser generator
AddPackage flex # A tool for generating text-scanning programs
AddPackage gettext # GNU internationalization library
AddPackage groff # GNU troff text-formatting system
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage texinfo # GNU documentation system for on-line information and printed output


# Sat Feb 13 23:06:34 EET 2021 - Unknown foreign packages


AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux


# Sat Feb 13 23:06:35 EET 2021 - New / changed files

CopyFile /etc/default/grub
CopyFile /etc/fstab
CopyFile /etc/hostname
CopyFile /etc/locale.gen
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/pacman.d/mirrorlist
CopyFile /etc/resolv.conf
CopyFile /etc/sudoers
CopyFile /etc/shells
CreateLink /etc/localtime /usr/share/zoneinfo/EET
CreateFile /var/db/sudo/lectured/zoickx 600 '' zoickx > /dev/null

CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/system/multi-user.target.wants/dhcpcd.service /usr/lib/systemd/system/dhcpcd.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/user/sockets.target.wants/dirmngr.socket /usr/lib/systemd/user/dirmngr.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-browser.socket /usr/lib/systemd/user/gpg-agent-browser.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-extra.socket /usr/lib/systemd/user/gpg-agent-extra.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-ssh.socket /usr/lib/systemd/user/gpg-agent-ssh.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent.socket /usr/lib/systemd/user/gpg-agent.socket
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket
CopyFile /var/lib/systemd/backlight/pci-0000:00:02.0:backlight:intel_backlight
CopyFile /var/lib/systemd/catalog/database
CreateDir /var/lib/systemd/coredump
CreateDir /var/lib/systemd/linger
CreateDir /var/lib/systemd/pstore
CopyFile /var/lib/systemd/random-seed 600
CopyFile /var/lib/systemd/rfkill/pci-0000:00:14.0-usb-0:5:1.0:bluetooth
CopyFile /var/lib/systemd/rfkill/pci-0000:05:00.0:wlan
CopyFile /var/lib/systemd/rfkill/platform-thinkpad_acpi:bluetooth
CreateFile /var/lib/systemd/timers/stamp-man-db.timer > /dev/null
CreateFile /var/lib/systemd/timers/stamp-shadow.timer > /dev/null


# Sat Feb 13 23:06:47 EET 2021 - New file properties


SetFileProperty /usr/bin/newgidmap mode 755
SetFileProperty /usr/bin/newuidmap mode 755
