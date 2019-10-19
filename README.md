### About
* [NixOS](https://nixos.org/) + [home-manager](https://github.com/rycee/home-manager)
* [dwm](https://dwm.suckless.org/) + [st](https://st.suckless.org/)
* Emacs

### Encryption
[Transcrypt](https://github.com/elasticdog/transcrypt) is used for encrypting sensitive data here.

Quick reminder:
```bash
nix-shell -p transcrypt  # get an environment with transcrypt
transcrypt -c aes-256-cbc -p '<encryption_password>' # initialize transcrypt
```

### TODO
* Make a clear separation between local and global stuff
* Improve `libinput` config (distinguish between mouse and touchpad)
* Automate `bin`
* Put things where they belong automatically
* Add a script for easy `transcrypt` :)
* Remove some hardcoded suckless configs (specifically the themes)
