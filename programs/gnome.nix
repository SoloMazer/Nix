{ pkgs, ... }: {
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

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    
  };
}
