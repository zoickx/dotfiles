AddPackage pulseaudio # A featureful, general-purpose sound server
AddPackage pulseaudio-alsa # ALSA Configuration for PulseAudio
AddPackage pavucontrol # PulseAudio Volume Control

# this was created by Arch; according to ArchWiki, pulseaudio is enabled by default
CreateLink /etc/systemd/user/sockets.target.wants/pulseaudio.socket /usr/lib/systemd/user/pulseaudio.socket

# disable PC speaker (https://wiki.archlinux.org/index.php/PC_speaker#Globally)
CopyFile /etc/modprobe.d/nobeep.conf
