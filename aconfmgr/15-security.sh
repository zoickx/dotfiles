## No viruses exist on linux C:

AddPackage clamav # Anti-virus toolkit for Unix
# automatic virus definition updates 
CreateLink /etc/systemd/system/multi-user.target.wants/clamav-freshclam.service /usr/lib/systemd/system/clamav-freshclam.service

## Sandboxing

AddPackage firejail # Linux namespaces sandbox program
#TODO: might want to additionally keep track of profiles here

## AppArmor

AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
CreateLink /etc/systemd/system/multi-user.target.wants/apparmor.service /usr/lib/systemd/system/apparmor.service

CopyFile /etc/apparmor.d/firejail-default # this is actually auto-generated
CopyFile /etc/firejail/default.profile # enable apparmor by default

# zoom
CopyFile /etc/firejail/zoom.profile # enable apparmor, restring access to $HOME
CopyFile /usr/bin/zoom 755 # /usr/bin/zoom calls zoom in firejail
CreateDir /opt/zoom/home 700 zoickx zoickx # the directory zoom shall believe to be $HOME
CreateDir /opt/zoom/home/.zoom/data 700 zoickx zoickx
SetFileProperty /opt/zoom/home/.zoom group zoickx
SetFileProperty /opt/zoom/home/.zoom mode 700
SetFileProperty /opt/zoom/home/.zoom owner zoickx
