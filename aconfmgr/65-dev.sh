AddPackage rustup # The Rust toolchain installer
AddPackage opam # OCaml package manager
AddPackage --foreign ghcup-hs-bin # an installer for the general purpose language Haskell

# Weird dependencies of (dependencies of) [Helix](https://github.com/vzaliva/helix)
AddPackage perl-ipc-system-simple # Run commands simply, with detailed diagnostics
AddPackage perl-string-shellquote # Quote strings for passing through the shell

AddPackage openssh # Premier connectivity tool for remote login with the SSH protocol
