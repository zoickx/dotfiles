# [systemctl enable dhcpcd]
CreateLink /etc/systemd/system/multi-user.target.wants/dhcpcd.service /usr/lib/systemd/system/dhcpcd.service

# [systemctl enable wpa_supplicant@wlp5s0.service]
CreateLink /etc/systemd/system/multi-user.target.wants/wpa_supplicant@wlp5s0.service /usr/lib/systemd/system/wpa_supplicant@.service
## configuration file with sensitive network data, not committed to git; manage manually
IgnorePath '/etc/wpa_supplicant/wpa_supplicant-wlp5s0.conf'

AddPackage traceroute # Tracks the route taken by packets over an IP network
AddPackage wireguard-tools # next generation secure network tunnel - tools for configuration
