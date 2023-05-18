# Package managers
AddPackage opam # OCaml package manager
AddPackage python-pipx # Install and Run Python Applications in Isolated Environments

# LaTeX: [texlive-most] group
AddPackageGroup texlive-most
IgnorePath '/etc/texmf/*'
IgnorePath '/usr/share/texmf-dist/*'

# Dependencies of [dependencies of] [Helix](https://github.com/vzaliva/helix)
AddPackage perl-ipc-system-simple # Run commands simply, with detailed diagnostics
AddPackage perl-string-shellquote # Quote strings for passing through the shell

# etc
AddPackage llvm # Collection of modular and reusable compiler and toolchain technologies
AddPackage drone-cli # Command line interface for Drone CI
