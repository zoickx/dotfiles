################
## CLI
################

# u want mah files? well come and get 'em!
AddPackage cryfs # Cryptographic filesystem for the cloud
AddPackage gocryptfs # Encrypted overlay filesystem written in Go.
AddPackage veracrypt # Disk encryption with strong security based on TrueCrypt
AddPackage --foreign srm # A secure replacement for rm(1) that overwrites data before unlinking

# # Mullvad kind of doesn't play well
AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop
IgnorePath '/etc/mullvad-vpn/account-history.json'
IgnorePath '/etc/mullvad-vpn/settings.json'
IgnorePath '/usr/bin/mullvad-exclude'
CreateLink /etc/systemd/system/mullvad-daemon.service /opt/Mullvad\ VPN/resources/mullvad-daemon.service
CreateLink /etc/systemd/system/multi-user.target.wants/mullvad-daemon.service /opt/Mullvad\ VPN/resources/mullvad-daemon.service
CreateLink /usr/bin/mullvad-problem-report /opt/Mullvad\ VPN/resources/mullvad-problem-report
CreateLink /usr/lib/systemd/system/mullvad-daemon.service /opt/Mullvad\ VPN/resources/mullvad-daemon.service

# cleanup/deduplication
AddPackage rmlint # Tool to remove duplicates and other lint, being much faster than fdupes
AddPackage --foreign findimagedupes # Tool to find visually similar or duplicate images

# etc
AddPackage rclone # Sync files to and from Google Drive, S3, Swift, Cloudfiles, Dropbox and Google Cloud Storage
AddPackage unarchiver # unar and lsar
AddPackage gitui # Blazing fast terminal-ui for git written in Rust
AddPackage just # A handy way to save and run project-specific commands
AddPackage --foreign pandoc-bin # Pandoc - executable only, without 750MB Haskell depends/makedepends
AddPackage --foreign librespeed-cli-bin # Command line interface for LibreSpeed speed test backends
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust
AddPackage --foreign jmtpfs # FUSE and libmtp based filesystem for accessing MTP (Media Transfer Protocol) devices
AddPackage --foreign inxi # Full featured CLI system information tool

# TODO: auto-submit?
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project



################
## Semi-GUI
################

AddPackage youtube-dl # A command-line program to download videos from YouTube.com and a few more sites

# languagetool appears to have a missing dependency for jdk
AddPackage languagetool # An open source language checker
AddPackage jdk-openjdk # OpenJDK Java 15 development kit
IgnorePath "/usr/lib/jvm/default*" # let jdk handle its defaults



################
## Proper GUI
################

# basics-101
AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator
AddPackage --foreign emacs-gcc-wayland-devel-bin # GNU Emacs. Development native-comp branch and pgtk branch combined, served as a binary.

# browsers
AddPackage firefox # Standalone web browser from mozilla.org
AddPackage midori # Lightweight web browser
AddPackage torbrowser-launcher # Securely and easily download, verify, install, and launch Tor Browser in Linux

# messengers
AddPackage signal-desktop # Signal Private Messenger for Linux
AddPackage telegram-desktop # Official Telegram Desktop client

# viewers of all sorts
AddPackage thunar # Modern file manager for Xfce
AddPackage imv # Image viewer for Wayland and X11
AddPackage tumbler # D-Bus service for applications to request thumbnails
AddPackage mpv # a free, open source, and cross-platform media player
AddPackage gthumb # Image browser and viewer for the GNOME Desktop
AddPackage abiword # Fully-featured word processor
AddPackage foliate # A simple and modern GTK eBook reader

# graphical editors
AddPackage gimp # GNU Image Manipulation Program
AddPackage inkscape # Professional vector graphics editor
AddPackage --foreign losslesscut-bin # Crossplatform GUI tool for lossless trimming/cutting of video/audio files

# files over networks
AddPackage syncthing # Open Source Continuous Replication / Cluster Synchronization Thing
AddPackage transmission-gtk # Fast, easy, and free BitTorrent client (GTK+ GUI)
