{ pkgs, ... }:

{

  home.packages = with pkgs; [
    # utils
    pandoc
    gnome3.dconf # [home-manager switch] does not work without this for some reason
    
    # these will not hurt
    git scrot xclip htop srm file killall p7zip ntfs3g

    # better utils
    zsh ripgrep fd bat exa dua

    # use zsh in nix-shell
    any-nix-shell

    # editors
    neovim emacs

    # gui apps
    firefox vlc pavucontrol tdesktop signal-desktop gthumb
    transmission-gtk nextcloud-client xarchiver
    redshift anki

    # cli apps
    youtube-dl gnupg sshfs bind jmtpfs ffmpeg
    exercism

    # encryption
    gocryptfs veracrypt cryfs

    # OPAM
    opam gnum4 glibc_multi

    # misc dev
    gcc gnumake
    graphviz
    stack

    # DOOM
    gzdoom
  ];

  programs.git = {
    enable = true;
    userName = "Ilia Zaichuk";
    userEmail = "zoickx@ztld.org";
    extraConfig = { pull.rebase = true; };
  };

  home.file.".emacs.d/init.el".source = ~/dotfiles/emacsd.el;

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
      gocryptfs -passfile ~/.config/org-passfile 'NX/[C]org' 'org'

      if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        startx $HOME/dotfiles/xinitrc &> $HOME/.local/share/startx.log
      fi
    '';
  };

  services.syncthing.enable = true;

}
