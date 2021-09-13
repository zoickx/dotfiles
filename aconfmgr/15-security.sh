## No viruses exist on linux C:

AddPackage clamav # Anti-virus toolkit for Unix
# automatic virus definition updates 
CreateLink /etc/systemd/system/multi-user.target.wants/clamav-freshclam.service /usr/lib/systemd/system/clamav-freshclam.service

## AppArmor

AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
CreateLink /etc/systemd/system/multi-user.target.wants/apparmor.service /usr/lib/systemd/system/apparmor.service
