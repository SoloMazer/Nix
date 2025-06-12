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
    # ./programs/zen-browser.nix #wait till its in nixpkgs
  ];

  home.username = "solomazer";
  home.homeDirectory = "/home/solomazer";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [

    discord
    obsidian

    rnote
    vlc
    wike
    varia
    nerd-fonts.hurmit
    inkscape
    resources
    endeavour
    papers
    deja-dup
    cantarell-fonts

    typst
    restic
    wl-clip-persist

    gnomeExtensions.blur-my-shell
  ];

  home.sessionVariables = {
    EDITOR = "hx";
    # BROWSER = "flatpak run app.zen_browser.zen";
  };

  gtk = {
    enable = true;
    theme.name = "Adwaita-dark";
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };
  };

  #TODO: Add gnome desktop settings here
  # dconf.settings = {};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
