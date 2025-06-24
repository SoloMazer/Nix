{ pkgs, ... }: {

  home.packages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.tactile
    gnomeExtensions.just-perfection
  ];

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita Dark";
      package = pkgs.gnome-themes-extra;
    };

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

    gtk3.extraConfig.Settings = ''gtk-application-prefer-dark-theme=1'';
    gtk4.extraConfig.Settings = ''gtk-application-prefer-dark-theme=1'';
  };
}
