CopyFile /etc/default/grub # grub config. used by `grub-install` (?) and `grub-mkconfig`
CopyFile /etc/fstab # what to mount where
CopyFile /etc/hostname # hostname
CopyFile /etc/locale.gen # basically language support
CopyFile /etc/mkinitcpio.conf # kernel modules
CopyFile /etc/pacman.d/mirrorlist # mirrors pacman downloads packages from
CopyFile /etc/resolv.conf # idk..resolvconf
CopyFile /etc/sudoers # sudo settings
CopyFile /etc/shells # viable shell files
CreateLink /etc/localtime /usr/share/zoneinfo/EET # timezone setting
CreateFile /var/db/sudo/lectured/zoickx 600 '' zoickx > /dev/null # yes, lectured I was
