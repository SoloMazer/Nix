{pkgs, ...}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      wl-clip-persist
      bash-language-server
      shfmt
      lldb
      nixd
      alejandra
      tinymist
      typstyle
      marksman
      texlab
      tex-fmt
      rust-analyzer
      rustfmt
    ];

    languages = {
      language-server.nixd = {
        command = "nixd";
        formatting.command = ["alejandra"];
        nixpkgs.expr = "import (builtins.getFlake \"/etc/nixos\").inputs.nixpkgs { }";
        options.nixos.expr = "(builtins.getFlake \"/etc/nixos\").nixosConfigurations.bld0.options";
      };
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
        {
          name = "bash";
          auto-format = true;
          formatter.command = "shfmt";
        }
        {
          name = "latex";
          auto-format = true;
          formatter.command = "tex-fmt";
        }
        {
          name = "rust";
          auto-format = true;
          formatter.command = "rustfmt";
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
