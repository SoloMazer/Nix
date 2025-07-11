{pkgs, ...}: {
  programs.fish = {
    enable = true;
    preferAbbrs = true;
    shellAbbrs = {
      ":q" = "exit";
      c = "clear";
      ls = "eza";
      cd = "z";
      tree = "eza --tree";
      nxsh = "nix-shell --run fish -p";
      glog = "git log --graph --decorate --all --oneline";
    };
    interactiveShellInit =
      #fish
      ''
        if test -n "$IN_NIX_SHELL"
          echo -e "\n Booted into nix-shell!! ฅ^•ﻌ•^ฅ \n"
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
