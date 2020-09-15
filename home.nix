{ pkgs, ... }:

let nixpkgs-master = import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/master") {}; in
{

  home.packages = with pkgs; [

    # utils
    gnome3.dconf # [home-manager switch] does not work without this for some reason

    # use zsh in nix-shell
    any-nix-shell

    # these will not hurt
    scrot xclip srm file ntfs3g
    
    # compression
    p7zip zip

    # the Rust fleet
    ripgrep fd bat exa dua ytop sd tealdeer procs

    # editors
    neovim emacs

    # gui apps
    firefox vlc pavucontrol 
    nextcloud-client
    redshift 
    signal-desktop gthumb
    transmission-gtk 
    torbrowser
    libreoffice
    nixpkgs-master.tdesktop

    # cli apps
    youtube-dl gnupg sshfs jmtpfs ffmpeg exercism

    # encryption
    gocryptfs veracrypt cryfs

    # OPAM
    opam gnum4 glibc_multi

    # misc dev
    gcc gnumake graphviz

    # the haskell ecosystem is killing me
    stack hlint ghc

    # UNFREE
    unrar
    nixpkgs-master.zoom-us
    nixpkgs-master.ripcord

    # unused / superseded
    # pandoc anki inkscape gzdoom

  ];

  programs.git = {
    enable = true;
    userName = "Ilia Zaichuk";
    userEmail = "zoickx@ztld.org";
    extraConfig = {
      pull.rebase = true;
      core.editor = "nvim";
    };
  };

  home.file.".emacs.d/init.el".source = ~/dotfiles/emacsd.el;

  ## TODO (1): this simply doesn't work - can't install unfree before this, but can't run this w/o installing unfree
  ## TODO (2): allow on a per-package basis, not globally
  #home.file.".config/nixpkgs/config.nix".text = "{ allowUnfree = true; }";

  # bat syntaxes
  home.file.".config/bat/syntaxes/Coq.sublime-syntax" = {
    source = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/whitequark/Sublime-Coq/master/Coq.sublime-syntax";
      sha256 = "989c7f48c88867f0080f1458df5949f98af1f1ee8c23c8a7e2b256fb15e3243b";
    };
    onChange = "bat cache --build";
  };

  gtk = {
    enable = true;
    font.package = pkgs.fira;
    font.name = "Fira Sans 11";
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    theme = {
      name = "Arc-Dark";
      package = pkgs.arc-theme;
    };
  };

  xsession.pointerCursor = {
    name = "Paper";
    size = 16;
    package = pkgs.paper-icon-theme;
  };

  ## TODO: this can't work - the tarball needs to be fetched before it can be fetched
  #programs.home-manager = {
  #  enable = true;
  #  path = fetchTarball "https://github.com/rycee/home-manager/tarball/release-20.03";
  #};

  programs.zsh = {
    enable = true;
    history.extended = true;
    dotDir = ".config/zsh";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "colored-man-pages" ];
      theme = "lambda";
    };

    envExtra = ''
      export EDITOR="emacs-nox";
      export LESSHISTFILE="/dev/null"; # do not create ~/.lesshst

      export PATH="$HOME/dotfiles/bin:$PATH";

      # OPAM configuration
      test -r $HOME/.opam/opam-init/init.zsh && . $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
    '';

    shellAliases = {
      # cool ls
      l  = "exa --all --long --time-style=long-iso --sort=type";
      ls = "exa --sort=type";
      lt = "exa --all --tree";

      # aux
      du = "du -h";
      ed = "emacs-nox";
      tmpfs = "sudo mount -t tmpfs -o size=128m tmpfs";
      ydlmp3 = "youtube-dl --extract-audio --audio-format mp3";
      killall = "echo 'No. Use pkill instead.'";

      now = ''
        date +\(%a\)\ %Y-%m-%d\ %H:%M\ %Z;
        TZ=":America/Los_Angeles" date +\(%a\)\ %Y-%m-%d\ %H:%M\ %Z;
        echo ;
        cal
      '';
    };

    initExtra = ''
      # complex aliases
      cd() { builtin cd $1 && exa --sort=type }
    '';

    profileExtra = ''
      gocryptfs -passfile ~/.config/org-passfile 'NX/[C]org' 'Syncthing/org'

      if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        startx $HOME/dotfiles/xinitrc &> $HOME/.local/share/startx.log
      fi
    '';
  };

  services.syncthing.enable = true;

}
