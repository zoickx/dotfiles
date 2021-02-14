## No viruses exist on linux C:

AddPackage clamav # Anti-virus toolkit for Unix
# automatic virus definition updates 
CreateLink /etc/systemd/system/multi-user.target.wants/clamav-freshclam.service /usr/lib/systemd/system/clamav-freshclam.service
# I trust ClamAV to manage itself nicely
IgnorePath '/var/lib/clamav/*'

## Sandboxing

AddPackage firejail # Linux namespaces sandbox program
#TODO: might want to additionally keep track of profiles here

## AppArmor

AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
CreateLink /etc/systemd/system/multi-user.target.wants/apparmor.service /usr/lib/systemd/system/apparmor.service
