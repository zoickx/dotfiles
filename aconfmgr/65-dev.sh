AddPackage llvm # Collection of modular and reusable compiler and toolchain technologies

# Weird dependencies of (dependencies of) [Helix](https://github.com/vzaliva/helix)
AddPackage perl-ipc-system-simple # Run commands simply, with detailed diagnostics
AddPackage perl-string-shellquote # Quote strings for passing through the shell



# LaTeX: [texlive-most] group. (groups not supported by aconfmgr it seems)
AddPackage texlive-bibtexextra # TeX Live - Additional BibTeX styles and bibliography databases
AddPackage texlive-core # TeX Live core distribution
AddPackage texlive-fontsextra # TeX Live - all sorts of extra fonts
AddPackage texlive-formatsextra # TeX Live - collection of extra TeX 'formats'
AddPackage texlive-games # TeX Live - Setups for typesetting various board games, including chess
AddPackage texlive-humanities # TeX Live - LaTeX packages for law, linguistics, social sciences, and humanities
AddPackage texlive-latexextra # TeX Live - Large collection of add-on packages for LaTeX
AddPackage texlive-music # TeX Live - Music typesetting packages
AddPackage texlive-pictures # TeX Live - Packages for drawings graphics
AddPackage texlive-pstricks # TeX Live - Additional PSTricks packages
AddPackage texlive-publishers # TeX Live - LaTeX classes and packages for specific publishers
AddPackage texlive-science # TeX Live - Typesetting for mathematics, natural and computer sciences
IgnorePath '/etc/texmf/*'
IgnorePath '/usr/share/texmf-dist/*'
