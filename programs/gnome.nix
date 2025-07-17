{pkgs, ...}: {
  home.packages = with pkgs; [
    gnomeExtensions.blur-my-shell
    # gnomeExtensions.appindicator
    gnomeExtensions.tactile
    gnomeExtensions.just-perfection
  ];

  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "latte";
        accent = "sapphire";
      };
    };
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };
  };
}
