# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix # hardware scan
      ./networks.nix               # wireless networks+passwords
    ];

  # supposedly better for SSDs
  fileSystems."/".options = [ "noatime" "nodiratime" "discard" ];

  boot = {
    loader.grub = {
      enable = true;
      version = 2;
      device = "nodev";
      efiSupport = true;
    };

    loader.efi.canTouchEfiVariables = true;

    initrd.luks.devices = [
      {
        name = "rootfs";
        device = "/dev/nvme0n1p2";
        preLVM = true;
        allowDiscards = true;
      }
    ];
  };

  networking = {
    hostName = "nameless";

    # wireless via wpa_supplicant
    wireless.enable = true;
    wireless.interfaces = [ "wlp5s0" ];

    # DHCP
    useDHCP = false; # this is deprecated, so set to false
    interfaces.enp3s0.useDHCP = true;
    interfaces.wlp5s0.useDHCP = true;
  };

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "zoickx" ];

  time.timeZone = "EET";

  environment.systemPackages = with pkgs; [
     dwm st dmenu home-manager
  ];

  fonts = {
    enableDefaultFonts = false;
    fonts = with pkgs; [ iosevka-bin fira ];
    fontconfig.defaultFonts = {
      monospace = [ "Iosevka" ];
      sansSerif = [ "Fira Sans" ];
      serif     = [ "Fira Sans" ];
    };
  };

  nixpkgs.config.st.patches =
    let
      scrollback = pkgs.fetchurl {
        url = "https://st.suckless.org/patches/scrollback/st-scrollback-0.8.2.diff";
        sha256 = "9c5aedce2ff191437bdb78aa70894c3c91a47e1be48465286f42d046677fd166";
      };
      scrollback-mouse = pkgs.fetchurl {
        url = "https://st.suckless.org/patches/scrollback/st-scrollback-mouse-0.8.2.diff";
        sha256 = "6103a650f62b5d07672eee9e01e3f4062525083da6ba063e139ca7d9fd58a1ba";
      };
      appearance = ./suckless/st-appearance.diff;
    in [scrollback scrollback-mouse appearance];

  nixpkgs.config.dwm.patches =
    let
      systray = pkgs.fetchurl {
        url = "https://dwm.suckless.org/patches/systray/dwm-systray-20190208-cb3f58a.diff";
	      sha256 = "2d1047ff0c5863f4188140ca1f405a558e94611e4eff2ff0fb5f70e32fddd44a";
      };
      noborder = pkgs.fetchurl {
        url = "https://dwm.suckless.org/patches/noborder/dwm-noborder-6.2.diff";
	      sha256 = "9bbf5f963e5a2d23ae4b8731f0c179a8615de5715a2dbf683fbe02115e24efe0";
      };
      appearance = ./suckless/dwm-appearance.diff;
      layout     = ./suckless/dwm-layout.diff;
      behavior   = ./suckless/dwm-behavior.diff;
    in [systray noborder appearance layout behavior];

  # backlight buttons
  programs.light.enable = true;
  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 224 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -U 10"; }
      { keys = [ 225 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -A 10"; }
    ];
  };

  # CUPS
  services.printing.enable = true;

  # sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.extraModules = [ pkgs.pulseaudio-modules-bt ];

  # bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # X11
  services.xserver = {
    enable = true;

    layout = "us,ru,ua";
    xkbOptions = "ctrl:swapcaps,grp:shifts_toggle";

    libinput.enable = true;
    libinput.tapping = true;
    libinput.naturalScrolling = true;

    libinput.accelProfile = "flat";

    windowManager.dwm.enable = true;
    windowManager.default = "dwm";
    desktopManager.xterm.enable = false;
    desktopManager.default = "none";
    displayManager.startx.enable = true;
  };

  # users
  programs.zsh.enable = true;
  programs.zsh.promptInit = "any-nix-shell zsh --info-right | source /dev/stdin"; # start nix-shell with zsh
  users.users.zoickx = {
    isNormalUser = true;
    shell = pkgs.zsh;
  };
  # sudo on all commands for zoickx
  security.sudo.extraRules = [ { commands = [ "ALL" ]; users = [ "zoickx" ]; } ];

  # autologin (encrypted anyway)
  services.mingetty.autologinUser = "zoickx";

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?

}
