AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign aura-bin # A secure package manager for Arch Linux and the AUR - Prebuilt binary

## Basics not included in base-devel for some reason

AddPackage wget # Network utility to retrieve files from the Web
AddPackage zip # Compressor/archiver for creating and modifying zipfiles
AddPackage unzip # For extracting and viewing files in .zip archives

## The everpresent Rust fleet

AddPackage bat # Cat clone with syntax highlighting and git integration
AddPackage dua-cli # A tool to conveniently learn about the disk usage of directories, fast!
AddPackage exa # ls replacement
AddPackage fd # Simple, fast and user-friendly alternative to find
AddPackage ripgrep # A search tool that combines the usability of ag with the raw speed of grep
AddPackage hyperfine # A command-line benchmarking tool
AddPackage procs # A modern replacement for ps written in Rust

AddPackage --foreign tealdeer-bin # A fast tldr client in Rust. Static binaries from GitHub.
AddPackage --foreign bottom-bin # A cross-platform graphical process/system monitor with a customizable interface and a multitude of features.

## unfortunately really lacks integration
#AddPackage skim # Fuzzy Finder in rust!

## QOL

AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX
AddPackage vis # modern, legacy free, simple yet efficient vim-like editor
AddPackage fzf # Command-line fuzzy finder
