## No viruses exist on linux C:

AddPackage clamav # Anti-virus toolkit for Unix
# automatic virus definition updates 
CreateLink /etc/systemd/system/multi-user.target.wants/clamav-freshclam.service /usr/lib/systemd/system/clamav-freshclam.service
# I trust ClamAV to manage itself nicely
IgnorePath '/var/lib/clamav/*'
