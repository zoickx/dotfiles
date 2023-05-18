################
## CLI
################

# u want muh files? well come n get em!
AddPackage cryfs # Cryptographic filesystem for the cloud
AddPackage gocryptfs # Encrypted overlay filesystem written in Go.
AddPackage veracrypt # Disk encryption with strong security based on TrueCrypt

# cleanup/deduplication
AddPackage rmlint # Tool to remove duplicates and other lint, being much faster than fdupes
AddPackage --foreign antidot-bin # Cleans up your $HOME from those pesky dotfiles
AddPackage --foreign czkawka-gui-bin # Multi functional app to find duplicates, empty folders, similar images etc (GUI)

# etc
AddPackage gitui # Blazing fast terminal-ui for git written in Rust
AddPackage git-delta # Syntax-highlighting pager for git and diff output
AddPackage inxi # Full featured CLI system information tool
AddPackage rclone # Sync files to and from Google Drive, S3, Swift, Cloudfiles, Dropbox and Google Cloud Storage
AddPackage unarchiver # unar and lsar
AddPackage pdfgrep # A tool to search text in PDF files
AddPackage libqalculate # Multi-purpose desktop calculator
AddPackage android-file-transfer # Android MTP client with minimalistic UI #(alternative to jmtpfs)
AddPackage --foreign pandoc-bin # Pandoc - executable only, without 750MB Haskell depends/makedepends
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust

# TODO: auto-submit?
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project

################
## Semi-GUI
################

AddPackage syncthing # Open Source Continuous Replication / Cluster Synchronization Thing
AddPackage yt-dlp # A youtube-dl fork with additional features and fixes
AddPackage --foreign noti # Monitor a process and trigger a notification

# Mullvad kind of doesn't play well
AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop
IgnorePath /etc/mullvad-vpn/account-history.json
IgnorePath /etc/mullvad-vpn/device.json
IgnorePath /etc/mullvad-vpn/settings.json
IgnorePath /etc/resolv.conf.mullvadbackup
IgnorePath /usr/bin/mullvad-exclude
CreateLink /etc/systemd/system/mullvad-daemon.service.wants/mullvad-early-boot-blocking.service /usr/lib/systemd/system/mullvad-early-boot-blocking.service
CreateLink /etc/systemd/system/multi-user.target.wants/mullvad-daemon.service /usr/lib/systemd/system/mullvad-daemon.service

################
## Proper GUI
################

# basics-101
AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator
AddPackage --foreign emacs-gcc-wayland-devel-bin # GNU Emacs. Development native-comp branch and pgtk branch combined, served as a binary.

# browsers
AddPackage firefox # Standalone web browser from mozilla.org

# messengers
AddPackage signal-desktop # Signal Private Messenger for Linux
AddPackage telegram-desktop # Official Telegram Desktop client

# viewers of all sorts
AddPackage thunar # Modern file manager for Xfce
AddPackage imv # Image viewer for Wayland and X11
AddPackage tumbler # D-Bus service for applications to request thumbnails
AddPackage mpv # a free, open source, and cross-platform media player
AddPackage gthumb # Image browser and viewer for the GNOME Desktop
AddPackage foliate # A simple and modern GTK eBook reader
AddPackage evince # Document viewer (PDF, PostScript, XPS, djvu, dvi, tiff, cbr, cbz, cb7, cbt)
AddPackage mupdf-gl # Lightweight PDF and XPS viewer with OpenGL backend
AddPackage --foreign sioyek # PDF viewer for research papers and technical books.

# graphical editors
AddPackage gimp # GNU Image Manipulation Program
AddPackage inkscape # Professional vector graphics editor
AddPackage --foreign losslesscut-bin # Crossplatform GUI tool for lossless trimming/cutting of video/audio files

# files over networks
AddPackage kubo # IPFS implementation in Go
# TODO: revert to official transmission eventually (GTK-4 currently broken),
# see [https://github.com/transmission/transmission/issues/4749]
AddPackage --foreign transmission-gtk3 # Fast, easy, and free BitTorrent client (GTK+ GUI)
AddPackage miniserve # Tool to serve files via HTTP

# etc
AddPackage remmina # remote desktop client written in GTK+
AddPackage --foreign dsda-doom # Fork of PrBoom+ with extra tooling for demo recording and playback, with a focus on speedrunning
