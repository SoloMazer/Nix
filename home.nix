{ pkgs
, ...
}:
{
  imports = [
    ./programs/helix.nix
    ./programs/ghostty.nix
    ./programs/firefox.nix
    ./programs/steam.nix
    ./programs/utils.nix
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
    amberol

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


