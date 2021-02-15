## CLI utilities

# u want mah files? well come and get 'em!
AddPackage cryfs # Cryptographic filesystem for the cloud
AddPackage gocryptfs # Encrypted overlay filesystem written in Go.
AddPackage veracrypt # Disk encryption with strong security based on TrueCrypt
AddPackage --foreign srm # A secure replacement for rm(1) that overwrites data before unlinking

# CLI stuffs
AddPackage --foreign tealdeer-bin # A fast tldr client in Rust. Static binaries from GitHub.
AddPackage rmlint # Tool to remove duplicates and other lint, being much faster than fdupes

# semi-GUI stuffs
AddPackage xclip # Command line interface to the X11 clipboard
AddPackage scrot # Simple command-line screenshot utility for X
AddPackage youtube-dl # A command-line program to download videos from YouTube.com and a few more sites
AddPackage nextcloud-client # Nextcloud desktop client
AddPackage pasystray # PulseAudio system tray (a replacement for padevchooser)
AddPackage --foreign activitywatch-bin # Log what you do on your computer. Simple, extensible, no third parties.

## Actual proper GUI apps

AddPackage emacs # The extensible, customizable, self-documenting real-time display editor
AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator

AddPackage firefox # Standalone web browser from mozilla.org
AddPackage torbrowser-launcher # Securely and easily download, verify, install, and launch Tor Browser in Linux
CreateDir /var/lib/tor 700 tor tor

AddPackage signal-desktop # Signal Private Messenger for Linux
AddPackage telegram-desktop # Official Telegram Desktop client

AddPackage thunar # Modern file manager for Xfce
AddPackage gthumb # Image browser and viewer for the GNOME Desktop
AddPackage tumbler # D-Bus service for applications to request thumbnails
AddPackage vlc # Multi-platform MPEG, VCD/DVD, and DivX player
AddPackage transmission-gtk # Fast, easy, and free BitTorrent client (GTK+ GUI)

AddPackage syncthing # Open Source Continuous Replication / Cluster Synchronization Thing
AddPackage redshift # Adjusts the color temperature of your screen according to your surroundings.

AddPackage --foreign webtorrent-desktop-bin # Streaming torrent client.
AddPackage --foreign zoom # Video Conferencing and Web Conferencing Service
