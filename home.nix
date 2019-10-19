{ pkgs, ... }:

{

  home.file.".emacs.d/init.el".source = ~/dotfiles/emacsd.el;
  home.file.".xinitrc".source = ~/dotfiles/xinitrc;

  gtk = {
    enable = true;
    font = {
      name = "Iosevka 11";
      package = pkgs.iosevka;
    };
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
    theme = {
      name = "Arc";
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
    enableAutosuggestions = true;
    history.extended = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "lambda";
    };

    shellAliases = {
      # cool ls
      l  = "exa --all --long --time-style=long-iso --sort=type";
      ls = "exa --sort=type";
      lt = "exa --all --tree";

      # aux
      du = "du -h";
      tmpfs = "sudo mount -t tmpfs -o size=128m tmpfs";
      ydlmp3 = "youtube-dl --extract-audio --audio-format mp3";
    };

    initExtra = ''
      cd() { builtin cd $1 && exa --sort=type }
    '';

    profileExtra = ''
      if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        exec startx
      fi
    '';
  };
}
