AddPackage networkmanager # Network connection manager and user applications
# Note: WiFi is managed by [wpa_supplicant], installed as a dependency of networkmanager
#       DHCP is managed by networkmanager's internal client (no need for [dhcpcd] or [dhclient])

## [systemctl enable NetworkManager.service] ?
# CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service.
# CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service.
# CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service.

AddPackage traceroute # Tracks the route taken by packets over an IP network
AddPackage wireguard-tools # next generation secure network tunnel - tools for configuration
