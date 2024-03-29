IgnorePath '/boot/*' # completely auto-generated junk, should neither change, nor influence much
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/ssl/*'
IgnorePath '/var/lib/*'
IgnorePath '/var/log/*'
IgnorePath '/var/tmp/*'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/usr/lib/modules/*'
IgnorePath '/usr/local/bin/*' # should be manageable like $HOME
IgnorePath '/etc/resolv.conf' # managed by dhcpcd
IgnorePath '/etc/fstab' # UUIDs

# some password-related stuff best left private
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/passwd'
IgnorePath '/etc/passwd-'
IgnorePath '/etc/shadow'
IgnorePath '/etc/shadow-'
IgnorePath '/etc/gshadow'
IgnorePath '/etc/gshadow-'
IgnorePath '/etc/group'
IgnorePath '/etc/group-'

# these things are kind of meaningless / should be steadily generated
# might want to remove this altogether as opposed to ignoring
IgnorePath '/etc/.updated'
IgnorePath '/var/.updated'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/mkinitcpio.d/linux.preset'
IgnorePath '/etc/os-release'
IgnorePath '/lost+found'
IgnorePath '/etc/passwd.OLD'
IgnorePath '/usr/local/man/*'
IgnorePath '/usr/share/terminfo/*'
IgnorePath '/usr/share/mime/*'
IgnorePath '*.cache' # ambitious

# I really don't know what these are, airing on the side of caution
IgnorePath '/usr/lib/locale/locale-archive' # looks to be generated by `locale-gen` from /etc/locale.gen
IgnorePath '/usr/lib/udev/hwdb.bin'
IgnorePath '/usr/share/info/dir'

IgnorePath '/usr/bin/newgidmap' # these two have weird mode changes for some reason
IgnorePath '/usr/bin/newuidmap' #

IgnorePath '/usr/share/glib-2.0/*' #

IgnorePath '/etc/NetworkManager/*'
