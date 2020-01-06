{ pkgs, ... }:

{

  home.packages = with pkgs; [
    gnome3.dconf # [home-manager switch] does not work without this for some reason
    
    # these will not hurt
    git scrot xclip htop srm bc file ffmpeg killall zip unzip

    # better utils
    zsh ripgrep fd bat exa

    # use zsh in nix-shell
    any-nix-shell

    # editors
    neovim emacs

    # gui apps
    firefox vlc pavucontrol tdesktop signal-desktop bleachbit gthumb
    inkscape libreoffice transmission-gtk owncloud-client xarchiver
    libreoffice redshift

    # cli apps
    youtube-dl lf

    # encryption
    gocryptfs veracrypt cryfs

    # OPAM
    opam gnum4 glibc_multi               # OPAM

    # misc dev
    gcc gnumake stack
  ];

  home.file.".emacs.d/init.el".source = ~/dotfiles/emacsd.el;

  # bat syntaxes
  home.file.".config/bat/syntaxes/Coq.sublime-syntax" = {
    source = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/whitequark/Sublime-Coq/master/Coq.sublime-syntax";
      sha256 = "84da58d74b7a44353324afe3a6d10e6266e3438698984916a5de47e1b4c23ea2";
    };
    onChange = "bat cache --build";
  };

  gtk = {
    enable = true;
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

  programs.zsh = {
    enable = true;
    history.extended = true;
    dotDir = ".config/zsh";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
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
      calc() { echo $1 | bc }
    '';

    profileExtra = ''
      if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        startx $HOME/dotfiles/xinitrc &> $HOME/.local/share/startx.log
      fi
    '';
  };

  services.syncthing.enable = true;

}
