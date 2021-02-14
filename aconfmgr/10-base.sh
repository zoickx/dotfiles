## The Barest Of Bones - Basically Firmware

AddPackage linux-zen # The Linux ZEN kernel and modules
AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
AddPackage linux-firmware # Firmware files for Linux
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage grub # GNU GRand Unified Bootloader (2)
AddPackage pacman # A library-based package manager with dependency support

## A machine is unimaginable without these

AddPackage make # GNU make utility to maintain groups of programs
AddPackage gcc # The GNU Compiler Collection - C and C++ frontends
AddPackage binutils # A set of programs to assemble and manipulate binary and object files

## ... and these

AddPackage man-db # A utility for reading man pages
AddPackage sudo # Give certain users the ability to run some commands as root

AddPackage grep # A string search utility
AddPackage which # A utility to show the full path of commands
AddPackage sed # GNU stream editor
AddPackage gawk # GNU version of awk
AddPackage file # File type identification utility
AddPackage findutils # GNU utilities to locate files
AddPackage gzip # GNU compression utility
AddPackage git # the fast distributed version control system

AddPackage wpa_supplicant # A utility providing key negotiation for WPA wireless networks
AddPackage dhcpcd # RFC2131 compliant DHCP client daemon

## These from base-devel I don't quite understand, but whatever

AddPackage autoconf # A GNU tool for automatically configuring source code
AddPackage automake # A GNU tool for automatically creating Makefiles
AddPackage fakeroot # Tool for simulating superuser privileges
AddPackage libtool # A generic library support script
AddPackage m4 # The GNU macro processor
AddPackage patch # A utility to apply patch files to original sources
AddPackage pkgconf # Package compiler and linker metadata toolkit