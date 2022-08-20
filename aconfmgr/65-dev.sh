AddPackage llvm # Collection of modular and reusable compiler and toolchain technologies

# Weird dependencies of (dependencies of) [Helix](https://github.com/vzaliva/helix)
AddPackage perl-ipc-system-simple # Run commands simply, with detailed diagnostics
AddPackage perl-string-shellquote # Quote strings for passing through the shell

# LaTeX: [texlive-most] group
AddPackageGroup texlive-most
IgnorePath '/etc/texmf/*'
IgnorePath '/usr/share/texmf-dist/*'
