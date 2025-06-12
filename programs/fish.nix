{ pkgs, ... }:
{

  programs.fish = {

    enable = true;
    preferAbbrs = true;

    shellAbbrs = {
      ":q" = "exit";
      c = "clear";
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
}
