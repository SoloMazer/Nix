{
  programs.kitty = {
    enable = true;
    enableGitIntegration = true;
    font.name = "Hurmit Nerd Font";
    shellIntegration.enableBashIntegration = true;
    shellIntegration.enableFishIntegration = true;
    themeFile = "gruvbox-dark";
    settings = {
      cursor_trails = 10;
      hide_window_decorations = true;
      background_opacity = 0.925;
    };
  };
}
