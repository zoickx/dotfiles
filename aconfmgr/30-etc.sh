CopyFile /etc/default/grub # grub config. used by `grub-install` (?) and `grub-mkconfig`
CopyFile /etc/hostname # hostname
CopyFile /etc/locale.gen # basically language support
CopyFile /etc/mkinitcpio.conf # kernel modules
CopyFile /etc/shells # viable shell files
CopyFile /etc/locale.conf # set default locale

IgnorePath "/etc/sudoers"

CreateLink /etc/localtime /usr/share/zoneinfo/EET # timezone setting
CreateFile /var/db/sudo/lectured/zoickx 600 '' zoickx > /dev/null # yes, lectured I was

## Auto-update pacman mirrorlist with reasonable mirrors using [reflector]
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
CopyFile /etc/xdg/reflector/reflector.conf # reflector config
IgnorePath /etc/pacman.d/mirrorlist # will be auto-generated
IgnorePath /etc/pacman.d/mirrorlist.pacnew # same
CreateLink /etc/systemd/system/multi-user.target.wants/reflector.service /usr/lib/systemd/system/reflector.service # not sure if this is necessary at all
CreateLink /etc/systemd/system/timers.target.wants/reflector.timer /usr/lib/systemd/system/reflector.timer # runs reflector weekly
