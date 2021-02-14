## I don't understand these very well; figure out as we go
CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/system/multi-user.target.wants/dhcpcd.service /usr/lib/systemd/system/dhcpcd.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/user/sockets.target.wants/dirmngr.socket /usr/lib/systemd/user/dirmngr.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-browser.socket /usr/lib/systemd/user/gpg-agent-browser.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-extra.socket /usr/lib/systemd/user/gpg-agent-extra.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-ssh.socket /usr/lib/systemd/user/gpg-agent-ssh.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent.socket /usr/lib/systemd/user/gpg-agent.socket
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket

CreateDir /var/lib/systemd/coredump
CreateDir /var/lib/systemd/linger
CreateDir /var/lib/systemd/pstore

CreateFile /var/lib/systemd/timers/stamp-man-db.timer > /dev/null
CreateFile /var/lib/systemd/timers/stamp-shadow.timer > /dev/null

CopyFile /var/lib/systemd/backlight/pci-0000:00:02.0:backlight:intel_backlight
CopyFile /var/lib/systemd/rfkill/pci-0000:00:14.0-usb-0:5:1.0:bluetooth
CopyFile /var/lib/systemd/rfkill/pci-0000:05:00.0:wlan
CopyFile /var/lib/systemd/rfkill/platform-thinkpad_acpi:bluetooth
