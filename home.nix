{pkgs, ...}: {
  imports = [
    ./programs/helix.nix
    ./programs/ghostty.nix
    ./programs/git.nix
    ./programs/zoxide.nix
    ./programs/fzf.nix
    ./programs/eza.nix
    ./programs/gitui.nix
    ./programs/fd.nix
    ./programs/ripgrep.nix
    ./programs/fish.nix
    ./programs/zk.nix
    ./programs/yazi.nix
    # ./programs/kitty.nix
    ./programs/librewolf.nix
    ./programs/steam.nix
    ./programs/sioyek.nix
    ./programs/retroarch.nix
    ./programs/gnome.nix
  ];

  home.username = "solomazer";
  home.homeDirectory = "/home/solomazer";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    # Closed Sourced
    google-chrome
    # GUIs
    rnote
    vlc
    loupe
    wike
    varia
    resources
    deja-dup
    errands
    gapless
    localsend
    parabolic
    tor-browser
    mailspring
    ardour
    libreoffice-fresh
    libresprite
    # CLIs/TUIs
    typst
    bottom
    # Others
    nerd-fonts.hurmit
    cantarell-fonts
    newcomputermodern
    libertinus
  ];

  home.sessionVariables = {
    BROWSER = "librewolf";
    TERMINAL = "ghostty";
    EDITOR = "hx";
    VISUAL = "hx";
  };

  # Enable flakes
  nix = {
    package = pkgs.nix;
    settings.experimental-features = ["nix-command" "flakes"];
  };

  # Set fonts at user level
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
