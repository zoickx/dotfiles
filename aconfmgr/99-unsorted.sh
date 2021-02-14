

# Sat Feb 13 23:06:34 EET 2021 - Unknown packages


AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
AddPackage autoconf # A GNU tool for automatically configuring source code
AddPackage automake # A GNU tool for automatically creating Makefiles
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage binutils # A set of programs to assemble and manipulate binary and object files
AddPackage bison # The GNU general-purpose parser generator
AddPackage dhcpcd # RFC2131 compliant DHCP client daemon
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage fakeroot # Tool for simulating superuser privileges
AddPackage file # File type identification utility
AddPackage findutils # GNU utilities to locate files
AddPackage flex # A tool for generating text-scanning programs
AddPackage gawk # GNU version of awk
AddPackage gcc # The GNU Compiler Collection - C and C++ frontends
AddPackage gettext # GNU internationalization library
AddPackage grep # A string search utility
AddPackage groff # GNU troff text-formatting system
AddPackage grub # GNU GRand Unified Bootloader (2)
AddPackage gzip # GNU compression utility
AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage libtool # A generic library support script
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-zen # The Linux ZEN kernel and modules
AddPackage m4 # The GNU macro processor
AddPackage make # GNU make utility to maintain groups of programs
AddPackage man-db # A utility for reading man pages
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage pacman # A library-based package manager with dependency support
AddPackage patch # A utility to apply patch files to original sources
AddPackage pkgconf # Package compiler and linker metadata toolkit
AddPackage sed # GNU stream editor
AddPackage sudo # Give certain users the ability to run some commands as root
AddPackage texinfo # GNU documentation system for on-line information and printed output
AddPackage which # A utility to show the full path of commands
AddPackage wpa_supplicant # A utility providing key negotiation for WPA wireless networks


# Sat Feb 13 23:06:34 EET 2021 - Unknown foreign packages


AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux


# Sat Feb 13 23:06:35 EET 2021 - New / changed files


CreateFile /etc/.pwd.lock 600 > /dev/null
CopyFile /etc/.updated
CopyFile /etc/adjtime
CopyFile /etc/default/grub
CopyFile /etc/fstab
CopyFile /etc/group
CopyFile /etc/group-
CopyFile /etc/gshadow
CopyFile /etc/gshadow- 600
CopyFile /etc/hostname
CopyFile /etc/ld.so.cache
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/EET
CopyFile /etc/machine-id 444
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux-zen.preset
CreateLink /etc/os-release ../usr/lib/os-release
CopyFile /etc/pacman.d/mirrorlist
CopyFile /etc/passwd
CopyFile /etc/passwd-
CopyFile /etc/resolv.conf
CopyFile /etc/shadow
CopyFile /etc/shadow- 600
CopyFile /etc/shells
CopyFile /etc/sudoers
CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/system/multi-user.target.wants/dhcpcd.service /usr/lib/systemd/system/dhcpcd.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/user/sockets.target.wants/dirmngr.socket /usr/lib/systemd/user/dirmngr.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-browser.socket /usr/lib/systemd/user/gpg-agent-browser.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-extra.socket /usr/lib/systemd/user/gpg-agent-extra.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-ssh.socket /usr/lib/systemd/user/gpg-agent-ssh.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent.socket /usr/lib/systemd/user/gpg-agent.socket
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket
CreateDir /lost+found 700
CopyFile /usr/lib/locale/locale-archive
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.alias
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.alias.bin
CreateFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.builtin.alias.bin > /dev/null
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.builtin.bin
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.dep
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.dep.bin
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.devname
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.softdep
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.symbols
CopyFile /usr/lib/modules/5.10.15-zen2-1-zen/modules.symbols.bin
CopyFile /usr/lib/udev/hwdb.bin 444
CopyFile /usr/local/bin/stack 755
CopyFile /usr/share/info/dir
CopyFile /var/.updated
CreateFile /var/db/sudo/lectured/zoickx 600 '' zoickx > /dev/null
CreateLink /var/lib/dbus/machine-id /etc/machine-id
CopyFile /var/lib/dhcpcd/secret 400
CopyFile /var/lib/dhcpcd/wlp5s0-HeimrTMP.lease 640
CreateDir /var/lib/machines 700
CreateDir /var/lib/portables 700
CreateDir /var/lib/private 700
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
