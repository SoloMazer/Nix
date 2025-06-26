{pkgs, ...}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      wl-clip-persist
      rust-analyzer
      nixd
      nil
      alejandra
      tinymist
      typstyle
      marksman
      markdown-oxide
      texlab
      bash-language-server
    ];

    languages = {
      language = [
        {
          name = "typst";
          auto-format = true;
          formatter.command = "typstyle";
        }
        {
          name = "nix";
          auto-format = true;
          formatter.command = "alejandra";
        }
      ];
    };

    settings = {
      theme = "gruvbox_transparent";

      keys.normal = {
        "up" = "no_op";
        "down" = "no_op";
        "left" = "no_op";
        "right" = "no_op";
        X = "select_line_above";
        A = "insert_at_line_start";
        I = "append_mode";
      };

      editor = {
        mouse = false;
        line-number = "relative";
        gutters = ["diagnostics" "line-numbers" "spacer" "diff"];
        completion-replace = true;
        whitespace.render.space = "all";

        lsp = {
          display-messages = true;
          auto-signature-help = false;
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
      gruvbox_transparent = {
        "inherits" = "gruvbox";
        "ui.background" = {};
      };
    };
  };
}
