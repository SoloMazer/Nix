{pkgs, ...}: {
  imports = [
    ./programs/helix.nix
    ./programs/ghostty.nix
    ./programs/git.nix
    ./programs/zoxide.nix
    ./programs/fzf.nix
    ./programs/eza.nix
    ./programs/lazygit.nix
    ./programs/fd.nix
    ./programs/ripgrep.nix
    ./programs/fish.nix

    ./programs/librewolf.nix
    ./programs/steam.nix
    ./programs/retroarch.nix
    ./programs/gnome.nix
  ];

  home.username = "solomazer";
  home.homeDirectory = "/home/solomazer";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    rnote
    vlc
    loupe
    wike
    varia
    inkscape
    resources
    papers
    deja-dup
    errands
    gapless
    ente-auth
    localsend
    parabolic

    manix
    shellcheck

    nerd-fonts.hurmit
    cantarell-fonts
    newcomputermodern
    libertinus
  ];

  home.sessionVariables = {
    BROWSER = "librewolf";
    TERMINAL = "ghostty";
  };

  # Enable Automatic Updates
  services.home-manager.autoUpgrade = {
    enable = true;
    frequency = "daily";
  };

  # Enable Autoexpire in home manager
  services.home-manager.autoExpire = {
    enable = true;
    frequency = "weekly";
    store.cleanup = true;
    timestamp = "-7days";
  };

  # Enable flakes
  nix = {
    package = pkgs.nix;
    settings.experimental-features = ["nix-command" "flakes"];
  };

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = ["Cantarell"];
      sansSerif = ["Cantarell"];
      monospace = ["Hurmit Nerd Font Mono"];
    };
  };

  programs.home-manager.enable = true;
}
