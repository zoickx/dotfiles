# disable PC speaker (https://wiki.archlinux.org/index.php/PC_speaker#Globally)
CopyFile /etc/modprobe.d/nobeep.conf

# PipeWire for all sound
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
IgnorePath /usr/share/pipewire/pipewire.conf
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/pipewire-media-session.service
CreateLink /etc/systemd/user/pipewire.service.wants/pipewire-media-session.service /usr/lib/systemd/user/pipewire-media-session.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket

# Graphical audio control panel (pipewire is compatible with this)
AddPackage pavucontrol # PulseAudio Volume Control
