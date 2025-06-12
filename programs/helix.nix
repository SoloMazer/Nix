{ pkgs, ... }:
{
  programs.helix = {

    enable = true;
    defaultEditor = true;
    
    extraPackages = with pkgs; [
      rust-analyzer
      blueprint-compiler
      nixd
    ];

    settings = {

      theme = "nord_transparent";

      # keys.normal = {
      #   left = ":echo 'Use h instead!'";
      #   down = ":echo 'Use j instead!'";
      #   up = ":echo 'Use k instead!'";
      #   right = ":echo 'Use l instead!'";
      # };

      editor = {

        mouse = false;
        line-number = "relative";
        gutters = [ "diagnostics" "line-numbers" "spacer" "diff" ];
        completion-replace = true;
        whitespace.render.space = "all";

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
          snippets = true;
        };

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        indent-guides = {
          render = true;
          character = "│";
          skip-levels = 1;
        };

        soft-wrap = {
          enable = true;
          wrap-indicator = "";
        };
      };
    };

    themes = {
      nord_transparent = {
        "inherits" = "nord";
        "ui.background" = { };
      };
    };

  };
}
