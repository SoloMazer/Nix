{ config
, pkgs
, inputs
, ...
}:
{
  imports = [
    ./programs/helix.nix
    ./programs/fish.nix
    ./programs/ghostty.nix
    ./programs/firefox.nix
    ./programs/steam.nix
    ./programs/git.nix
    ./programs/gnome.nix
  ];

  home.username = "solomazer";
  home.homeDirectory = "/home/solomazer";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [

    discord
    obsidian
    google-chrome

    rnote
    vlc
    loupe
    wike
    varia
    nerd-fonts.hurmit
    inkscape
    resources
    endeavour
    papers
    deja-dup
    libertinus


    typst
    restic
    wl-clip-persist

  ];

  home.sessionVariables = {
    EDITOR = "hx";
    BROWSER = "firefox";
    TERMINAL = "ghostty";
  };

  programs.home-manager.enable = true;
}

