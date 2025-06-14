{ pkgs, ... }: {

  home.packages = with pkgs; [
    wl-clip-persist
  ];

  programs.fish = {
    enable = true;
    preferAbbrs = true;
    shellAbbrs = {
      ":q" = "exit";
      c = "clear";
      ls = "eza";
      cd = "z";
      tree = "eza --tree";
    };
    interactiveShellInit = ''
      set fish_greeting
    '';
    plugins = [
      {
        name = "pure";
        src = pkgs.fishPlugins.pure.src;
      }
    ];
  };

  programs.git = {
    enable = true;
    userName = "SoloMazer";
    userEmail = "solomazer@gmail.com";
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
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

  programs.eza = {
    enable = true;
    theme = "gruvbox-dark";
    enableFishIntegration = true;
  };

  programs.fd.enable = true;
  programs.ripgrep.enable = true;
  programs.gitui.enable = true;

}
