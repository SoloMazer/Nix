{ pkgs, ... }: {
  programs.fish = {
    enable = true;
    preferAbbrs = true;
    shellAbbrs = {
      ":q" = "exit";
      c = "clear";
      ls = "eza";
      cd = "z";
      tree = "eza --tree";
      nxsh = "nix-shell --run fish";
    };
    interactiveShellInit = #fish
      ''
        if test -n "$IN_NIX_SHELL"
          echo -e "\n>> ENTERED NIX-SHELL <<\n"
        end
      '';
    plugins = [
      {
        name = "pure";
        src = pkgs.fishPlugins.pure.src;
      }
      {
        name = "sudope";
        src = pkgs.fishPlugins.plugin-sudope;
      }
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair;
      }
    ];
  };
}
