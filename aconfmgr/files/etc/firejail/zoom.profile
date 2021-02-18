# Firejail profile for zoom
# Description: Video Conferencing and Web Conferencing Service
# This file is overwritten after every install/update
# Persistent local customizations
include zoom.local
# Persistent global definitions
include globals.local

# Disabled until someone reported positive feedback
#Z#ignore apparmor
ignore novideo
#Z#ignore dbus-user none
#Z#ignore dbus-system none

# nogroups breaks webcam access on non-systemd systems (see #3711).
# If you use such a system uncomment the line below or put 'ignore nogroups' in your zoom.local
#ignore nogroups

#Z#noblacklist ${HOME}/.config/zoomus.conf
#Z#noblacklist ${HOME}/.zoom

nowhitelist ${DOWNLOADS}

#Z#mkdir ${HOME}/.cache/zoom
#Z#mkfile ${HOME}/.config/zoomus.conf
#Z#mkdir ${HOME}/.zoom
#Z#whitelist ${HOME}/.cache/zoom
#Z#whitelist ${HOME}/.config/zoomus.conf
#Z#whitelist ${HOME}/.zoom

#Z#
private-etc alternatives,ca-certificates,crypto-policies,fonts,group,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,machine-id,nsswitch.conf,pki,resolv.conf,ssl
#/Z#

# Redirect
include electron.profile
