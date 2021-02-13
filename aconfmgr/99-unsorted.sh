

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
CreateFile /etc/pacman.d/gnupg/.gpg-v21-migrated > /dev/null
CopyFile /etc/pacman.d/gnupg/gpg-agent.conf
CopyFile /etc/pacman.d/gnupg/gpg.conf
CopyFile /etc/pacman.d/gnupg/openpgp-revocs.d/A298F36E8E1E9F34F2EF21CBD92582A00A513606.rev 600
CopyFile /etc/pacman.d/gnupg/private-keys-v1.d/296EF16A5BD35EA0BEB9CA90E152BA693C587206.key 600
CopyFile /etc/pacman.d/gnupg/pubring.gpg
CopyFile /etc/pacman.d/gnupg/pubring.gpg~
CreateFile /etc/pacman.d/gnupg/secring.gpg 600 > /dev/null
CopyFile /etc/pacman.d/gnupg/tofu.db
CopyFile /etc/pacman.d/gnupg/trustdb.gpg
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
CopyFile /var/lib/pacman/local/ALPM_DB_VERSION
CopyFile /var/lib/pacman/local/acl-2.2.53-3/desc
CopyFile /var/lib/pacman/local/acl-2.2.53-3/files
CopyFile /var/lib/pacman/local/acl-2.2.53-3/mtree
CopyFile /var/lib/pacman/local/aconfmgr-git-r709.c3bf8cb-1/desc
CopyFile /var/lib/pacman/local/aconfmgr-git-r709.c3bf8cb-1/files
CopyFile /var/lib/pacman/local/aconfmgr-git-r709.c3bf8cb-1/mtree
CopyFile /var/lib/pacman/local/apparmor-3.0.1-1/desc
CopyFile /var/lib/pacman/local/apparmor-3.0.1-1/files
CopyFile /var/lib/pacman/local/apparmor-3.0.1-1/mtree
CopyFile /var/lib/pacman/local/archlinux-keyring-20210110-1/desc
CopyFile /var/lib/pacman/local/archlinux-keyring-20210110-1/files
CopyFile /var/lib/pacman/local/archlinux-keyring-20210110-1/install
CopyFile /var/lib/pacman/local/archlinux-keyring-20210110-1/mtree
CopyFile /var/lib/pacman/local/argon2-20190702-3/desc
CopyFile /var/lib/pacman/local/argon2-20190702-3/files
CopyFile /var/lib/pacman/local/argon2-20190702-3/mtree
CopyFile /var/lib/pacman/local/attr-2.4.48-3/desc
CopyFile /var/lib/pacman/local/attr-2.4.48-3/files
CopyFile /var/lib/pacman/local/attr-2.4.48-3/mtree
CopyFile /var/lib/pacman/local/audit-3.0-1/desc
CopyFile /var/lib/pacman/local/audit-3.0-1/files
CopyFile /var/lib/pacman/local/audit-3.0-1/mtree
CopyFile /var/lib/pacman/local/autoconf-2.71-1/desc
CopyFile /var/lib/pacman/local/autoconf-2.71-1/files
CopyFile /var/lib/pacman/local/autoconf-2.71-1/mtree
CopyFile /var/lib/pacman/local/automake-1.16.3-1/desc
CopyFile /var/lib/pacman/local/automake-1.16.3-1/files
CopyFile /var/lib/pacman/local/automake-1.16.3-1/mtree
CopyFile /var/lib/pacman/local/base-2-2/desc
CreateFile /var/lib/pacman/local/base-2-2/files > /dev/null
CopyFile /var/lib/pacman/local/base-2-2/mtree
CopyFile /var/lib/pacman/local/bash-5.1.004-1/desc
CopyFile /var/lib/pacman/local/bash-5.1.004-1/files
CopyFile /var/lib/pacman/local/bash-5.1.004-1/mtree
CopyFile /var/lib/pacman/local/binutils-2.36-3/desc
CopyFile /var/lib/pacman/local/binutils-2.36-3/files
CopyFile /var/lib/pacman/local/binutils-2.36-3/mtree
CopyFile /var/lib/pacman/local/bison-3.7.3-1/desc
CopyFile /var/lib/pacman/local/bison-3.7.3-1/files
CopyFile /var/lib/pacman/local/bison-3.7.3-1/mtree
CopyFile /var/lib/pacman/local/bzip2-1.0.8-4/desc
CopyFile /var/lib/pacman/local/bzip2-1.0.8-4/files
CopyFile /var/lib/pacman/local/bzip2-1.0.8-4/mtree
CopyFile /var/lib/pacman/local/ca-certificates-20181109-4/desc
CreateFile /var/lib/pacman/local/ca-certificates-20181109-4/files > /dev/null
CopyFile /var/lib/pacman/local/ca-certificates-20181109-4/mtree
CopyFile /var/lib/pacman/local/ca-certificates-mozilla-3.61-1/desc
CopyFile /var/lib/pacman/local/ca-certificates-mozilla-3.61-1/files
CopyFile /var/lib/pacman/local/ca-certificates-mozilla-3.61-1/mtree
CopyFile /var/lib/pacman/local/ca-certificates-utils-20181109-4/desc
CopyFile /var/lib/pacman/local/ca-certificates-utils-20181109-4/files
CopyFile /var/lib/pacman/local/ca-certificates-utils-20181109-4/mtree
CopyFile /var/lib/pacman/local/coreutils-8.32-1/desc
CopyFile /var/lib/pacman/local/coreutils-8.32-1/files
CopyFile /var/lib/pacman/local/coreutils-8.32-1/mtree
CopyFile /var/lib/pacman/local/cryptsetup-2.3.4-2/desc
CopyFile /var/lib/pacman/local/cryptsetup-2.3.4-2/files
CopyFile /var/lib/pacman/local/cryptsetup-2.3.4-2/mtree
CopyFile /var/lib/pacman/local/curl-7.75.0-1/desc
CopyFile /var/lib/pacman/local/curl-7.75.0-1/files
CopyFile /var/lib/pacman/local/curl-7.75.0-1/mtree
CopyFile /var/lib/pacman/local/db-5.3.28-5/desc
CopyFile /var/lib/pacman/local/db-5.3.28-5/files
CopyFile /var/lib/pacman/local/db-5.3.28-5/mtree
CopyFile /var/lib/pacman/local/dbus-1.12.20-1/desc
CopyFile /var/lib/pacman/local/dbus-1.12.20-1/files
CopyFile /var/lib/pacman/local/dbus-1.12.20-1/mtree
CopyFile /var/lib/pacman/local/device-mapper-2.03.11-4/desc
CopyFile /var/lib/pacman/local/device-mapper-2.03.11-4/files
CopyFile /var/lib/pacman/local/device-mapper-2.03.11-4/mtree
CopyFile /var/lib/pacman/local/dhcpcd-9.4.0-1/desc
CopyFile /var/lib/pacman/local/dhcpcd-9.4.0-1/files
CopyFile /var/lib/pacman/local/dhcpcd-9.4.0-1/install
CopyFile /var/lib/pacman/local/dhcpcd-9.4.0-1/mtree
CopyFile /var/lib/pacman/local/diffutils-3.7-3/desc
CopyFile /var/lib/pacman/local/diffutils-3.7-3/files
CopyFile /var/lib/pacman/local/diffutils-3.7-3/mtree
CopyFile /var/lib/pacman/local/e2fsprogs-1.46.1-1/desc
CopyFile /var/lib/pacman/local/e2fsprogs-1.46.1-1/files
CopyFile /var/lib/pacman/local/e2fsprogs-1.46.1-1/mtree
CopyFile /var/lib/pacman/local/efibootmgr-17-2/desc
CopyFile /var/lib/pacman/local/efibootmgr-17-2/files
CopyFile /var/lib/pacman/local/efibootmgr-17-2/mtree
CopyFile /var/lib/pacman/local/efivar-37-4/desc
CopyFile /var/lib/pacman/local/efivar-37-4/files
CopyFile /var/lib/pacman/local/efivar-37-4/mtree
CopyFile /var/lib/pacman/local/elfutils-0.182-1/desc
CopyFile /var/lib/pacman/local/elfutils-0.182-1/files
CopyFile /var/lib/pacman/local/elfutils-0.182-1/mtree
CopyFile /var/lib/pacman/local/expat-2.2.10-2/desc
CopyFile /var/lib/pacman/local/expat-2.2.10-2/files
CopyFile /var/lib/pacman/local/expat-2.2.10-2/mtree
CopyFile /var/lib/pacman/local/fakeroot-1.25.3-1/desc
CopyFile /var/lib/pacman/local/fakeroot-1.25.3-1/files
CopyFile /var/lib/pacman/local/fakeroot-1.25.3-1/install
CopyFile /var/lib/pacman/local/fakeroot-1.25.3-1/mtree
CopyFile /var/lib/pacman/local/file-5.39-1/desc
CopyFile /var/lib/pacman/local/file-5.39-1/files
CopyFile /var/lib/pacman/local/file-5.39-1/mtree
CopyFile /var/lib/pacman/local/filesystem-2021.01.19-1/desc
CopyFile /var/lib/pacman/local/filesystem-2021.01.19-1/files
CopyFile /var/lib/pacman/local/filesystem-2021.01.19-1/mtree
CopyFile /var/lib/pacman/local/findutils-4.8.0-1/desc
CopyFile /var/lib/pacman/local/findutils-4.8.0-1/files
CopyFile /var/lib/pacman/local/findutils-4.8.0-1/mtree
CopyFile /var/lib/pacman/local/flex-2.6.4-3/desc
CopyFile /var/lib/pacman/local/flex-2.6.4-3/files
CopyFile /var/lib/pacman/local/flex-2.6.4-3/mtree
CopyFile /var/lib/pacman/local/gawk-5.1.0-1/desc
CopyFile /var/lib/pacman/local/gawk-5.1.0-1/files
CopyFile /var/lib/pacman/local/gawk-5.1.0-1/mtree
CopyFile /var/lib/pacman/local/gc-8.0.4-4/desc
CopyFile /var/lib/pacman/local/gc-8.0.4-4/files
CopyFile /var/lib/pacman/local/gc-8.0.4-4/mtree
CopyFile /var/lib/pacman/local/gcc-10.2.0-6/desc
CopyFile /var/lib/pacman/local/gcc-10.2.0-6/files
CopyFile /var/lib/pacman/local/gcc-10.2.0-6/mtree
CopyFile /var/lib/pacman/local/gcc-libs-10.2.0-6/desc
CopyFile /var/lib/pacman/local/gcc-libs-10.2.0-6/files
CopyFile /var/lib/pacman/local/gcc-libs-10.2.0-6/mtree
CopyFile /var/lib/pacman/local/gdbm-1.19-2/desc
CopyFile /var/lib/pacman/local/gdbm-1.19-2/files
CopyFile /var/lib/pacman/local/gdbm-1.19-2/mtree
CopyFile /var/lib/pacman/local/gettext-0.21-1/desc
CopyFile /var/lib/pacman/local/gettext-0.21-1/files
CopyFile /var/lib/pacman/local/gettext-0.21-1/mtree
CopyFile /var/lib/pacman/local/git-2.30.1-1/desc
CopyFile /var/lib/pacman/local/git-2.30.1-1/files
CopyFile /var/lib/pacman/local/git-2.30.1-1/install
CopyFile /var/lib/pacman/local/git-2.30.1-1/mtree
CopyFile /var/lib/pacman/local/glib2-2.66.7-1/desc
CopyFile /var/lib/pacman/local/glib2-2.66.7-1/files
CopyFile /var/lib/pacman/local/glib2-2.66.7-1/mtree
CopyFile /var/lib/pacman/local/glibc-2.33-3/desc
CopyFile /var/lib/pacman/local/glibc-2.33-3/files
CopyFile /var/lib/pacman/local/glibc-2.33-3/install
CopyFile /var/lib/pacman/local/glibc-2.33-3/mtree
CopyFile /var/lib/pacman/local/gmp-6.2.1-1/desc
CopyFile /var/lib/pacman/local/gmp-6.2.1-1/files
CopyFile /var/lib/pacman/local/gmp-6.2.1-1/mtree
CopyFile /var/lib/pacman/local/gnupg-2.2.27-1/desc
CopyFile /var/lib/pacman/local/gnupg-2.2.27-1/files
CopyFile /var/lib/pacman/local/gnupg-2.2.27-1/install
CopyFile /var/lib/pacman/local/gnupg-2.2.27-1/mtree
CopyFile /var/lib/pacman/local/gnutls-3.7.0-1/desc
CopyFile /var/lib/pacman/local/gnutls-3.7.0-1/files
CopyFile /var/lib/pacman/local/gnutls-3.7.0-1/mtree
CopyFile /var/lib/pacman/local/gpgme-1.15.1-1/desc
CopyFile /var/lib/pacman/local/gpgme-1.15.1-1/files
CopyFile /var/lib/pacman/local/gpgme-1.15.1-1/mtree
CopyFile /var/lib/pacman/local/grep-3.6-1/desc
CopyFile /var/lib/pacman/local/grep-3.6-1/files
CopyFile /var/lib/pacman/local/grep-3.6-1/mtree
CopyFile /var/lib/pacman/local/groff-1.22.4-4/desc
CopyFile /var/lib/pacman/local/groff-1.22.4-4/files
CopyFile /var/lib/pacman/local/groff-1.22.4-4/mtree
CopyFile /var/lib/pacman/local/grub-2:2.04-9/desc
CopyFile /var/lib/pacman/local/grub-2:2.04-9/files
CopyFile /var/lib/pacman/local/grub-2:2.04-9/install
CopyFile /var/lib/pacman/local/grub-2:2.04-9/mtree
CopyFile /var/lib/pacman/local/guile-2.2.6-2/desc
CopyFile /var/lib/pacman/local/guile-2.2.6-2/files
CopyFile /var/lib/pacman/local/guile-2.2.6-2/mtree
CopyFile /var/lib/pacman/local/gzip-1.10-3/desc
CopyFile /var/lib/pacman/local/gzip-1.10-3/files
CopyFile /var/lib/pacman/local/gzip-1.10-3/mtree
CopyFile /var/lib/pacman/local/hwids-20201207-1/desc
CopyFile /var/lib/pacman/local/hwids-20201207-1/files
CopyFile /var/lib/pacman/local/hwids-20201207-1/mtree
CopyFile /var/lib/pacman/local/iana-etc-20210202-1/desc
CopyFile /var/lib/pacman/local/iana-etc-20210202-1/files
CopyFile /var/lib/pacman/local/iana-etc-20210202-1/mtree
CopyFile /var/lib/pacman/local/icu-68.2-1/desc
CopyFile /var/lib/pacman/local/icu-68.2-1/files
CopyFile /var/lib/pacman/local/icu-68.2-1/mtree
CopyFile /var/lib/pacman/local/intel-ucode-20201118-1/desc
CopyFile /var/lib/pacman/local/intel-ucode-20201118-1/files
CopyFile /var/lib/pacman/local/intel-ucode-20201118-1/mtree
CopyFile /var/lib/pacman/local/iproute2-5.10.0-2/desc
CopyFile /var/lib/pacman/local/iproute2-5.10.0-2/files
CopyFile /var/lib/pacman/local/iproute2-5.10.0-2/mtree
CopyFile /var/lib/pacman/local/iptables-1:1.8.7-1/desc
CopyFile /var/lib/pacman/local/iptables-1:1.8.7-1/files
CopyFile /var/lib/pacman/local/iptables-1:1.8.7-1/mtree
CopyFile /var/lib/pacman/local/iputils-20200821-1/desc
CopyFile /var/lib/pacman/local/iputils-20200821-1/files
CopyFile /var/lib/pacman/local/iputils-20200821-1/mtree
CopyFile /var/lib/pacman/local/json-c-0.15-1/desc
CopyFile /var/lib/pacman/local/json-c-0.15-1/files
CopyFile /var/lib/pacman/local/json-c-0.15-1/mtree
CopyFile /var/lib/pacman/local/kbd-2.3.0-2/desc
CopyFile /var/lib/pacman/local/kbd-2.3.0-2/files
CopyFile /var/lib/pacman/local/kbd-2.3.0-2/mtree
CopyFile /var/lib/pacman/local/keyutils-1.6.3-1/desc
CopyFile /var/lib/pacman/local/keyutils-1.6.3-1/files
CopyFile /var/lib/pacman/local/keyutils-1.6.3-1/mtree
CopyFile /var/lib/pacman/local/kmod-28-1/desc
CopyFile /var/lib/pacman/local/kmod-28-1/files
CopyFile /var/lib/pacman/local/kmod-28-1/mtree
CopyFile /var/lib/pacman/local/krb5-1.18.3-1/desc
CopyFile /var/lib/pacman/local/krb5-1.18.3-1/files
CopyFile /var/lib/pacman/local/krb5-1.18.3-1/mtree
CopyFile /var/lib/pacman/local/less-563-1/desc
CopyFile /var/lib/pacman/local/less-563-1/files
CopyFile /var/lib/pacman/local/less-563-1/mtree
CopyFile /var/lib/pacman/local/libarchive-3.5.1-1/desc
CopyFile /var/lib/pacman/local/libarchive-3.5.1-1/files
CopyFile /var/lib/pacman/local/libarchive-3.5.1-1/mtree
CopyFile /var/lib/pacman/local/libassuan-2.5.4-2/desc
CopyFile /var/lib/pacman/local/libassuan-2.5.4-2/files
CopyFile /var/lib/pacman/local/libassuan-2.5.4-2/mtree
CopyFile /var/lib/pacman/local/libcap-2.48-1/desc
CopyFile /var/lib/pacman/local/libcap-2.48-1/files
CopyFile /var/lib/pacman/local/libcap-2.48-1/mtree
CopyFile /var/lib/pacman/local/libcap-ng-0.8.2-1/desc
CopyFile /var/lib/pacman/local/libcap-ng-0.8.2-1/files
CopyFile /var/lib/pacman/local/libcap-ng-0.8.2-1/mtree
CopyFile /var/lib/pacman/local/libcroco-0.6.13-2/desc
CopyFile /var/lib/pacman/local/libcroco-0.6.13-2/files
CopyFile /var/lib/pacman/local/libcroco-0.6.13-2/mtree
CopyFile /var/lib/pacman/local/libelf-0.182-1/desc
CopyFile /var/lib/pacman/local/libelf-0.182-1/files
CopyFile /var/lib/pacman/local/libelf-0.182-1/mtree
CopyFile /var/lib/pacman/local/libffi-3.3-4/desc
CopyFile /var/lib/pacman/local/libffi-3.3-4/files
CopyFile /var/lib/pacman/local/libffi-3.3-4/mtree
CopyFile /var/lib/pacman/local/libgcrypt-1.9.1-1/desc
CopyFile /var/lib/pacman/local/libgcrypt-1.9.1-1/files
CopyFile /var/lib/pacman/local/libgcrypt-1.9.1-1/mtree
CopyFile /var/lib/pacman/local/libgpg-error-1.41-1/desc
CopyFile /var/lib/pacman/local/libgpg-error-1.41-1/files
CopyFile /var/lib/pacman/local/libgpg-error-1.41-1/mtree
CopyFile /var/lib/pacman/local/libidn2-2.3.0-1/desc
CopyFile /var/lib/pacman/local/libidn2-2.3.0-1/files
CopyFile /var/lib/pacman/local/libidn2-2.3.0-1/mtree
CopyFile /var/lib/pacman/local/libksba-1.4.0-2/desc
CopyFile /var/lib/pacman/local/libksba-1.4.0-2/files
CopyFile /var/lib/pacman/local/libksba-1.4.0-2/mtree
CopyFile /var/lib/pacman/local/libldap-2.4.57-1/desc
CopyFile /var/lib/pacman/local/libldap-2.4.57-1/files
CopyFile /var/lib/pacman/local/libldap-2.4.57-1/mtree
CopyFile /var/lib/pacman/local/libluv-1.36.0-1/desc
CopyFile /var/lib/pacman/local/libluv-1.36.0-1/files
CopyFile /var/lib/pacman/local/libluv-1.36.0-1/mtree
CopyFile /var/lib/pacman/local/libmicrohttpd-0.9.72-1/desc
CopyFile /var/lib/pacman/local/libmicrohttpd-0.9.72-1/files
CopyFile /var/lib/pacman/local/libmicrohttpd-0.9.72-1/mtree
CopyFile /var/lib/pacman/local/libmnl-1.0.4-3/desc
CopyFile /var/lib/pacman/local/libmnl-1.0.4-3/files
CopyFile /var/lib/pacman/local/libmnl-1.0.4-3/mtree
CopyFile /var/lib/pacman/local/libmpc-1.2.1-1/desc
CopyFile /var/lib/pacman/local/libmpc-1.2.1-1/files
CopyFile /var/lib/pacman/local/libmpc-1.2.1-1/mtree
CopyFile /var/lib/pacman/local/libnetfilter_conntrack-1.0.8-1/desc
CopyFile /var/lib/pacman/local/libnetfilter_conntrack-1.0.8-1/files
CopyFile /var/lib/pacman/local/libnetfilter_conntrack-1.0.8-1/mtree
CopyFile /var/lib/pacman/local/libnfnetlink-1.0.1-4/desc
CopyFile /var/lib/pacman/local/libnfnetlink-1.0.1-4/files
CopyFile /var/lib/pacman/local/libnfnetlink-1.0.1-4/mtree
CopyFile /var/lib/pacman/local/libnftnl-1.1.9-1/desc
CopyFile /var/lib/pacman/local/libnftnl-1.1.9-1/files
CopyFile /var/lib/pacman/local/libnftnl-1.1.9-1/mtree
CopyFile /var/lib/pacman/local/libnghttp2-1.41.0-1/desc
CopyFile /var/lib/pacman/local/libnghttp2-1.41.0-1/files
CopyFile /var/lib/pacman/local/libnghttp2-1.41.0-1/mtree
CopyFile /var/lib/pacman/local/libnl-3.5.0-2/desc
CopyFile /var/lib/pacman/local/libnl-3.5.0-2/files
CopyFile /var/lib/pacman/local/libnl-3.5.0-2/mtree
CopyFile /var/lib/pacman/local/libnsl-1.3.0-1/desc
CopyFile /var/lib/pacman/local/libnsl-1.3.0-1/files
CopyFile /var/lib/pacman/local/libnsl-1.3.0-1/mtree
CopyFile /var/lib/pacman/local/libp11-kit-0.23.22-1/desc
CopyFile /var/lib/pacman/local/libp11-kit-0.23.22-1/files
CopyFile /var/lib/pacman/local/libp11-kit-0.23.22-1/mtree
CopyFile /var/lib/pacman/local/libpcap-1.10.0-1/desc
CopyFile /var/lib/pacman/local/libpcap-1.10.0-1/files
CopyFile /var/lib/pacman/local/libpcap-1.10.0-1/mtree
CopyFile /var/lib/pacman/local/libpipeline-1.5.3-1/desc
CopyFile /var/lib/pacman/local/libpipeline-1.5.3-1/files
CopyFile /var/lib/pacman/local/libpipeline-1.5.3-1/mtree
CopyFile /var/lib/pacman/local/libpsl-0.21.1-1/desc
CopyFile /var/lib/pacman/local/libpsl-0.21.1-1/files
CopyFile /var/lib/pacman/local/libpsl-0.21.1-1/mtree
CopyFile /var/lib/pacman/local/libsasl-2.1.27-3/desc
CopyFile /var/lib/pacman/local/libsasl-2.1.27-3/files
CopyFile /var/lib/pacman/local/libsasl-2.1.27-3/mtree
CopyFile /var/lib/pacman/local/libseccomp-2.5.1-2/desc
CopyFile /var/lib/pacman/local/libseccomp-2.5.1-2/files
CopyFile /var/lib/pacman/local/libseccomp-2.5.1-2/mtree
CopyFile /var/lib/pacman/local/libsecret-0.20.4-1/desc
CopyFile /var/lib/pacman/local/libsecret-0.20.4-1/files
CopyFile /var/lib/pacman/local/libsecret-0.20.4-1/mtree
CopyFile /var/lib/pacman/local/libssh2-1.9.0-2/desc
CopyFile /var/lib/pacman/local/libssh2-1.9.0-2/files
CopyFile /var/lib/pacman/local/libssh2-1.9.0-2/mtree
CopyFile /var/lib/pacman/local/libtasn1-4.16.0-1/desc
CopyFile /var/lib/pacman/local/libtasn1-4.16.0-1/files
CopyFile /var/lib/pacman/local/libtasn1-4.16.0-1/mtree
CopyFile /var/lib/pacman/local/libtermkey-0.22-2/desc
CopyFile /var/lib/pacman/local/libtermkey-0.22-2/files
CopyFile /var/lib/pacman/local/libtermkey-0.22-2/mtree
CopyFile /var/lib/pacman/local/libtirpc-1.3.1-1/desc
CopyFile /var/lib/pacman/local/libtirpc-1.3.1-1/files
CopyFile /var/lib/pacman/local/libtirpc-1.3.1-1/mtree
CopyFile /var/lib/pacman/local/libtool-2.4.6+42+gb88cebd5-14/desc
CopyFile /var/lib/pacman/local/libtool-2.4.6+42+gb88cebd5-14/files
CopyFile /var/lib/pacman/local/libtool-2.4.6+42+gb88cebd5-14/mtree
CopyFile /var/lib/pacman/local/libunistring-0.9.10-3/desc
CopyFile /var/lib/pacman/local/libunistring-0.9.10-3/files
CopyFile /var/lib/pacman/local/libunistring-0.9.10-3/mtree
CopyFile /var/lib/pacman/local/libuv-1.40.0-1/desc
CopyFile /var/lib/pacman/local/libuv-1.40.0-1/files
CopyFile /var/lib/pacman/local/libuv-1.40.0-1/mtree
CopyFile /var/lib/pacman/local/libvterm-0.1.3.git1.65dbda-1/desc
CopyFile /var/lib/pacman/local/libvterm-0.1.3.git1.65dbda-1/files
CopyFile /var/lib/pacman/local/libvterm-0.1.3.git1.65dbda-1/mtree
CopyFile /var/lib/pacman/local/libxcrypt-4.4.17-1/desc
CopyFile /var/lib/pacman/local/libxcrypt-4.4.17-1/files
CopyFile /var/lib/pacman/local/libxcrypt-4.4.17-1/mtree
CopyFile /var/lib/pacman/local/libxml2-2.9.10-8/desc
CopyFile /var/lib/pacman/local/libxml2-2.9.10-8/files
CopyFile /var/lib/pacman/local/libxml2-2.9.10-8/mtree
CopyFile /var/lib/pacman/local/licenses-20200427-1/desc
CopyFile /var/lib/pacman/local/licenses-20200427-1/files
CopyFile /var/lib/pacman/local/licenses-20200427-1/mtree
CopyFile /var/lib/pacman/local/linux-api-headers-5.10.13-1/desc
CopyFile /var/lib/pacman/local/linux-api-headers-5.10.13-1/files
CopyFile /var/lib/pacman/local/linux-api-headers-5.10.13-1/mtree
CopyFile /var/lib/pacman/local/linux-firmware-20210208.b79d239-1/desc
CopyFile /var/lib/pacman/local/linux-firmware-20210208.b79d239-1/files
CopyFile /var/lib/pacman/local/linux-firmware-20210208.b79d239-1/mtree
CopyFile /var/lib/pacman/local/linux-zen-5.10.15.zen2-1/desc
CopyFile /var/lib/pacman/local/linux-zen-5.10.15.zen2-1/files
CopyFile /var/lib/pacman/local/linux-zen-5.10.15.zen2-1/mtree
CopyFile /var/lib/pacman/local/luajit-2.0.5-3/desc
CopyFile /var/lib/pacman/local/luajit-2.0.5-3/files
CopyFile /var/lib/pacman/local/luajit-2.0.5-3/mtree
CopyFile /var/lib/pacman/local/lz4-1:1.9.3-1/desc
CopyFile /var/lib/pacman/local/lz4-1:1.9.3-1/files
CopyFile /var/lib/pacman/local/lz4-1:1.9.3-1/mtree
CopyFile /var/lib/pacman/local/m4-1.4.18-3/desc
CopyFile /var/lib/pacman/local/m4-1.4.18-3/files
CopyFile /var/lib/pacman/local/m4-1.4.18-3/mtree
CopyFile /var/lib/pacman/local/make-4.3-3/desc
CopyFile /var/lib/pacman/local/make-4.3-3/files
CopyFile /var/lib/pacman/local/make-4.3-3/mtree
CopyFile /var/lib/pacman/local/man-db-2.9.4-1/desc
CopyFile /var/lib/pacman/local/man-db-2.9.4-1/files
CopyFile /var/lib/pacman/local/man-db-2.9.4-1/install
CopyFile /var/lib/pacman/local/man-db-2.9.4-1/mtree
CopyFile /var/lib/pacman/local/mkinitcpio-29-1/desc
CopyFile /var/lib/pacman/local/mkinitcpio-29-1/files
CopyFile /var/lib/pacman/local/mkinitcpio-29-1/install
CopyFile /var/lib/pacman/local/mkinitcpio-29-1/mtree
CopyFile /var/lib/pacman/local/mkinitcpio-busybox-1.32.1-2/desc
CopyFile /var/lib/pacman/local/mkinitcpio-busybox-1.32.1-2/files
CopyFile /var/lib/pacman/local/mkinitcpio-busybox-1.32.1-2/mtree
CopyFile /var/lib/pacman/local/mpfr-4.1.0-1/desc
CopyFile /var/lib/pacman/local/mpfr-4.1.0-1/files
CopyFile /var/lib/pacman/local/mpfr-4.1.0-1/mtree
CopyFile /var/lib/pacman/local/msgpack-c-3.3.0-2/desc
CopyFile /var/lib/pacman/local/msgpack-c-3.3.0-2/files
CopyFile /var/lib/pacman/local/msgpack-c-3.3.0-2/mtree
CopyFile /var/lib/pacman/local/ncurses-6.2-1/desc
CopyFile /var/lib/pacman/local/ncurses-6.2-1/files
CopyFile /var/lib/pacman/local/ncurses-6.2-1/mtree
CopyFile /var/lib/pacman/local/neovim-0.4.4-1/desc
CopyFile /var/lib/pacman/local/neovim-0.4.4-1/files
CopyFile /var/lib/pacman/local/neovim-0.4.4-1/mtree
CopyFile /var/lib/pacman/local/nettle-3.7-1/desc
CopyFile /var/lib/pacman/local/nettle-3.7-1/files
CopyFile /var/lib/pacman/local/nettle-3.7-1/mtree
CopyFile /var/lib/pacman/local/npth-1.6-3/desc
CopyFile /var/lib/pacman/local/npth-1.6-3/files
CopyFile /var/lib/pacman/local/npth-1.6-3/mtree
CopyFile /var/lib/pacman/local/openssl-1.1.1.i-2/desc
CopyFile /var/lib/pacman/local/openssl-1.1.1.i-2/files
CopyFile /var/lib/pacman/local/openssl-1.1.1.i-2/mtree
CopyFile /var/lib/pacman/local/p11-kit-0.23.22-1/desc
CopyFile /var/lib/pacman/local/p11-kit-0.23.22-1/files
CopyFile /var/lib/pacman/local/p11-kit-0.23.22-1/install
CopyFile /var/lib/pacman/local/p11-kit-0.23.22-1/mtree
CopyFile /var/lib/pacman/local/pacman-5.2.2-2/desc
CopyFile /var/lib/pacman/local/pacman-5.2.2-2/files
CopyFile /var/lib/pacman/local/pacman-5.2.2-2/mtree
CopyFile /var/lib/pacman/local/pacman-mirrorlist-20210206-1/desc
CopyFile /var/lib/pacman/local/pacman-mirrorlist-20210206-1/files
CopyFile /var/lib/pacman/local/pacman-mirrorlist-20210206-1/mtree
CopyFile /var/lib/pacman/local/pacutils-0.10.0-1/desc
CopyFile /var/lib/pacman/local/pacutils-0.10.0-1/files
CopyFile /var/lib/pacman/local/pacutils-0.10.0-1/mtree
CopyFile /var/lib/pacman/local/pam-1.5.1-1/desc
CopyFile /var/lib/pacman/local/pam-1.5.1-1/files
CopyFile /var/lib/pacman/local/pam-1.5.1-1/mtree
CopyFile /var/lib/pacman/local/pambase-20200721.1-2/desc
CopyFile /var/lib/pacman/local/pambase-20200721.1-2/files
CopyFile /var/lib/pacman/local/pambase-20200721.1-2/mtree
CopyFile /var/lib/pacman/local/patch-2.7.6-8/desc
CopyFile /var/lib/pacman/local/patch-2.7.6-8/files
CopyFile /var/lib/pacman/local/patch-2.7.6-8/mtree
CopyFile /var/lib/pacman/local/pciutils-3.7.0-1/desc
CopyFile /var/lib/pacman/local/pciutils-3.7.0-1/files
CopyFile /var/lib/pacman/local/pciutils-3.7.0-1/mtree
CopyFile /var/lib/pacman/local/pcre-8.44-1/desc
CopyFile /var/lib/pacman/local/pcre-8.44-1/files
CopyFile /var/lib/pacman/local/pcre-8.44-1/mtree
CopyFile /var/lib/pacman/local/pcre2-10.36-1/desc
CopyFile /var/lib/pacman/local/pcre2-10.36-1/files
CopyFile /var/lib/pacman/local/pcre2-10.36-1/mtree
CopyFile /var/lib/pacman/local/perl-5.32.0-3/desc
CopyFile /var/lib/pacman/local/perl-5.32.0-3/files
CopyFile /var/lib/pacman/local/perl-5.32.0-3/mtree
CopyFile /var/lib/pacman/local/perl-error-0.17029-2/desc
CopyFile /var/lib/pacman/local/perl-error-0.17029-2/files
CopyFile /var/lib/pacman/local/perl-error-0.17029-2/mtree
CopyFile /var/lib/pacman/local/perl-mailtools-2.21-4/desc
CopyFile /var/lib/pacman/local/perl-mailtools-2.21-4/files
CopyFile /var/lib/pacman/local/perl-mailtools-2.21-4/mtree
CopyFile /var/lib/pacman/local/perl-timedate-2.33-2/desc
CopyFile /var/lib/pacman/local/perl-timedate-2.33-2/files
CopyFile /var/lib/pacman/local/perl-timedate-2.33-2/mtree
CopyFile /var/lib/pacman/local/pinentry-1.1.0-5/desc
CopyFile /var/lib/pacman/local/pinentry-1.1.0-5/files
CopyFile /var/lib/pacman/local/pinentry-1.1.0-5/mtree
CopyFile /var/lib/pacman/local/pkgconf-1.7.3-1/desc
CopyFile /var/lib/pacman/local/pkgconf-1.7.3-1/files
CopyFile /var/lib/pacman/local/pkgconf-1.7.3-1/mtree
CopyFile /var/lib/pacman/local/popt-1.18-1/desc
CopyFile /var/lib/pacman/local/popt-1.18-1/files
CopyFile /var/lib/pacman/local/popt-1.18-1/mtree
CopyFile /var/lib/pacman/local/procps-ng-3.3.16-3/desc
CopyFile /var/lib/pacman/local/procps-ng-3.3.16-3/files
CopyFile /var/lib/pacman/local/procps-ng-3.3.16-3/mtree
CopyFile /var/lib/pacman/local/psmisc-23.4-1/desc
CopyFile /var/lib/pacman/local/psmisc-23.4-1/files
CopyFile /var/lib/pacman/local/psmisc-23.4-1/mtree
CopyFile /var/lib/pacman/local/python-3.9.1-2/desc
CopyFile /var/lib/pacman/local/python-3.9.1-2/files
CopyFile /var/lib/pacman/local/python-3.9.1-2/mtree
CopyFile /var/lib/pacman/local/readline-8.1.0-2/desc
CopyFile /var/lib/pacman/local/readline-8.1.0-2/files
CopyFile /var/lib/pacman/local/readline-8.1.0-2/mtree
CopyFile /var/lib/pacman/local/sed-4.8-1/desc
CopyFile /var/lib/pacman/local/sed-4.8-1/files
CopyFile /var/lib/pacman/local/sed-4.8-1/mtree
CopyFile /var/lib/pacman/local/shadow-4.8.1-4/desc
CopyFile /var/lib/pacman/local/shadow-4.8.1-4/files
CopyFile /var/lib/pacman/local/shadow-4.8.1-4/install
CopyFile /var/lib/pacman/local/shadow-4.8.1-4/mtree
CopyFile /var/lib/pacman/local/sqlite-3.34.1-1/desc
CopyFile /var/lib/pacman/local/sqlite-3.34.1-1/files
CopyFile /var/lib/pacman/local/sqlite-3.34.1-1/mtree
CopyFile /var/lib/pacman/local/sudo-1.9.5.p2-1/desc
CopyFile /var/lib/pacman/local/sudo-1.9.5.p2-1/files
CopyFile /var/lib/pacman/local/sudo-1.9.5.p2-1/install
CopyFile /var/lib/pacman/local/sudo-1.9.5.p2-1/mtree
CopyFile /var/lib/pacman/local/systemd-247.3-1/desc
CopyFile /var/lib/pacman/local/systemd-247.3-1/files
CopyFile /var/lib/pacman/local/systemd-247.3-1/install
CopyFile /var/lib/pacman/local/systemd-247.3-1/mtree
CopyFile /var/lib/pacman/local/systemd-libs-247.3-1/desc
CopyFile /var/lib/pacman/local/systemd-libs-247.3-1/files
CopyFile /var/lib/pacman/local/systemd-libs-247.3-1/mtree
CopyFile /var/lib/pacman/local/systemd-sysvcompat-247.3-1/desc
CopyFile /var/lib/pacman/local/systemd-sysvcompat-247.3-1/files
CopyFile /var/lib/pacman/local/systemd-sysvcompat-247.3-1/mtree
CopyFile /var/lib/pacman/local/tar-1.33-1/desc
CopyFile /var/lib/pacman/local/tar-1.33-1/files
CopyFile /var/lib/pacman/local/tar-1.33-1/mtree
CopyFile /var/lib/pacman/local/texinfo-6.7-3/desc
CopyFile /var/lib/pacman/local/texinfo-6.7-3/files
CopyFile /var/lib/pacman/local/texinfo-6.7-3/mtree
CopyFile /var/lib/pacman/local/tzdata-2021a-1/desc
CopyFile /var/lib/pacman/local/tzdata-2021a-1/files
CopyFile /var/lib/pacman/local/tzdata-2021a-1/mtree
CopyFile /var/lib/pacman/local/unibilium-2.1.0-2/desc
CopyFile /var/lib/pacman/local/unibilium-2.1.0-2/files
CopyFile /var/lib/pacman/local/unibilium-2.1.0-2/mtree
CopyFile /var/lib/pacman/local/util-linux-2.36.1-4/desc
CopyFile /var/lib/pacman/local/util-linux-2.36.1-4/files
CopyFile /var/lib/pacman/local/util-linux-2.36.1-4/mtree
CopyFile /var/lib/pacman/local/util-linux-libs-2.36.1-4/desc
CopyFile /var/lib/pacman/local/util-linux-libs-2.36.1-4/files
CopyFile /var/lib/pacman/local/util-linux-libs-2.36.1-4/mtree
CopyFile /var/lib/pacman/local/which-2.21-5/desc
CopyFile /var/lib/pacman/local/which-2.21-5/files
CopyFile /var/lib/pacman/local/which-2.21-5/mtree
CopyFile /var/lib/pacman/local/wpa_supplicant-2:2.9-8/desc
CopyFile /var/lib/pacman/local/wpa_supplicant-2:2.9-8/files
CopyFile /var/lib/pacman/local/wpa_supplicant-2:2.9-8/install
CopyFile /var/lib/pacman/local/wpa_supplicant-2:2.9-8/mtree
CopyFile /var/lib/pacman/local/xz-5.2.5-1/desc
CopyFile /var/lib/pacman/local/xz-5.2.5-1/files
CopyFile /var/lib/pacman/local/xz-5.2.5-1/mtree
CopyFile /var/lib/pacman/local/zlib-1:1.2.11-4/desc
CopyFile /var/lib/pacman/local/zlib-1:1.2.11-4/files
CopyFile /var/lib/pacman/local/zlib-1:1.2.11-4/mtree
CopyFile /var/lib/pacman/local/zstd-1.4.8-1/desc
CopyFile /var/lib/pacman/local/zstd-1.4.8-1/files
CopyFile /var/lib/pacman/local/zstd-1.4.8-1/mtree
CopyFile /var/lib/pacman/sync/community.db
CopyFile /var/lib/pacman/sync/core.db
CopyFile /var/lib/pacman/sync/extra.db
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
CreateFile /var/log/btmp 660 '' utmp > /dev/null
CopyFile /var/log/journal/9ac108f80a5745e59467f75e5bd8537b/system.journal 640 '' systemd-journal
CopyFile /var/log/journal/9ac108f80a5745e59467f75e5bd8537b/user-1000.journal 640 '' systemd-journal
CreateDir /var/log/journal/remote 2755 '' systemd-journal-remote
CopyFile /var/log/lastlog 664 '' utmp
CopyFile /var/log/pacman.log
CreateDir /var/log/private 700
CopyFile /var/log/wtmp 664 '' utmp
CreateDir /var/tmp/systemd-private-9810e3bd4c87447fa1041a33d05dd45c-systemd-logind.service-gZz8uq/tmp 1777


# Sat Feb 13 23:06:47 EET 2021 - New file properties


SetFileProperty /etc/pacman.d/gnupg/openpgp-revocs.d mode 700
SetFileProperty /etc/pacman.d/gnupg/private-keys-v1.d mode 700
SetFileProperty /usr/bin/newgidmap mode 755
SetFileProperty /usr/bin/newuidmap mode 755
SetFileProperty /var/log/journal/9ac108f80a5745e59467f75e5bd8537b group systemd-journal
SetFileProperty /var/log/journal/9ac108f80a5745e59467f75e5bd8537b mode 2755
SetFileProperty /var/log/journal group systemd-journal
SetFileProperty /var/tmp/systemd-private-9810e3bd4c87447fa1041a33d05dd45c-systemd-logind.service-gZz8uq mode 700
