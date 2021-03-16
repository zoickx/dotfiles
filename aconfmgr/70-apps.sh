## CLI utilities

# u want mah files? well come and get 'em!
AddPackage cryfs # Cryptographic filesystem for the cloud
AddPackage gocryptfs # Encrypted overlay filesystem written in Go.
AddPackage veracrypt # Disk encryption with strong security based on TrueCrypt
AddPackage --foreign srm # A secure replacement for rm(1) that overwrites data before unlinking

# CLI stuffs
AddPackage rmlint # Tool to remove duplicates and other lint, being much faster than fdupes
AddPackage unarchiver # unar and lsar
AddPackage --foreign librespeed-cli-bin # Command line interface for LibreSpeed speed test backends
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust

## Semi-GUI stuffs
AddPackage languagetool # An open source language checker
AddPackage youtube-dl # A command-line program to download videos from YouTube.com and a few more sites
AddPackage nextcloud-client # Nextcloud desktop client
AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop

## Actual proper GUI apps

AddPackage emacs # The extensible, customizable, self-documenting real-time display editor
AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator

AddPackage firefox # Standalone web browser from mozilla.org
AddPackage torbrowser-launcher # Securely and easily download, verify, install, and launch Tor Browser in Linux
CreateDir /var/lib/tor 700 tor tor

AddPackage signal-desktop # Signal Private Messenger for Linux
AddPackage telegram-desktop # Official Telegram Desktop client

AddPackage thunar # Modern file manager for Xfce
AddPackage imv # Image viewer for Wayland and X11
AddPackage tumbler # D-Bus service for applications to request thumbnails
AddPackage transmission-gtk # Fast, easy, and free BitTorrent client (GTK+ GUI)

AddPackage gimp # GNU Image Manipulation Program
AddPackage inkscape # Professional vector graphics editor
AddPackage --foreign losslesscut-bin # Crossplatform GUI tool for lossless trimming/cutting of video/audio files

AddPackage syncthing # Open Source Continuous Replication / Cluster Synchronization Thing

AddPackage --foreign zoom # Video Conferencing and Web Conferencing Service
