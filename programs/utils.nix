{ pkgs, ... }: {

  programs.git = {
    enable = true;
    userName = "SoloMazer";
    userEmail = "solomazer@gmail.com";
  };

  programs.fzf = {
    enable = true;
    colors = {
      fg = "#ebdbb2";
      bg = "#282828";
      hl = "#fabd2f";
      "fg+" = "#ebdbb2";
      "bg+" = "#3c3836";
      "hl+" = "#fabd2f";
      info = "#83a598";
      prompt = "#bdae93";
      spinner = "#fabd2f";
      pointer = "#83a598";
      marker = "#fe8019";
      header = "#665c54";
    };
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };

  programs.eza = {
    enable = true;
    theme = "gruvbox-dark";
    enableFishIntegration = true;
    enableBashIntegration = true;
  };

  programs.fd.enable = true;
  programs.ripgrep.enable = true;
  programs.gitui.enable = true;

}
