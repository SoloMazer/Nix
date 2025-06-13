{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    cantarell-fonts
    gnome-tweaks
    gnomeExtensions.blur-my-shell
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
