IgnorePath '/boot/*' # completely auto-generated junk, should neither change, nor influence much
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/ssl/*'
IgnorePath '/var/lib/pacman/*' # I don't actually know what this is, but it doesn't look meaningful C:
IgnorePath '/var/log/*'
IgnorePath '/var/tmp/*'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/usr/lib/modules/*'
IgnorePath '/usr/local/bin/*' # should be manageable like $HOME

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
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/var/lib/dbus/machine-id'
IgnorePath '/etc/mkinitcpio.d/linux-zen.preset'
IgnorePath '/etc/os-release'
IgnorePath '/lost+found'

# I really don't know what these are, airing on the side of caution
IgnorePath '/usr/lib/locale/locale-archive' # looks to be generated by `locale-gen` from /etc/locale.gen
IgnorePath '/usr/lib/udev/hwdb.bin'
IgnorePath '/usr/share/info/dir'
IgnorePath '/var/lib/dhcpcd/*' # seemed to contain private information about my networks
IgnorePath '/var/lib/machines'
IgnorePath '/var/lib/portables'
IgnorePath '/var/lib/private'

IgnorePath '/var/lib/systemd/catalog/database'
IgnorePath '/var/lib/systemd/random-seed'
