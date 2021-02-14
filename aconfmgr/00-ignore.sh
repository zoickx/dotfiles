IgnorePath '/boot/*' # completely auto-generated junk, should neither change, nor influence much
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/ssl/*'
IgnorePath '/var/lib/pacman/*' # I don't actually know what this is, but it doesn't look meaningful C:
IgnorePath '/var/log/*'
IgnorePath '/var/tmp/*'
IgnorePath '/etc/pacmand/gnupg/*'
IgnorePath '/usr/lib/modules/*'

# some password-related stuff best left private
IgnorPath /etc/.pwd.lock
IgnorPath /etc/passwd
IgnorPath /etc/passwd-
IgnorPath /etc/shadow
IgnorPath /etc/shadow-
IgnorPath /etc/gshadow
IgnorPath /etc/gshadow-
IgnorPath /etc/group
IgnorPath /etc/group-
