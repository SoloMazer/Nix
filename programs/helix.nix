{pkgs, ...}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      wl-clip-persist
      nixd
      alejandra
      tinymist
      typstyle
      marksman
    ];

    languages = {
      language-server = {
        nixd = {
          command = "nixd";
          formatting.command = ["alejandra"];
          nixpkgs.expr = "import (builtins.getFlake \"$HOME/.config/nixos\").inputs.nixpkgs { }";
          options.nixos.expr = "(builtins.getFlake \"$HOME/.config/nixos\").nixosConfigurations.voidheart.options";
          options.home-manager.expr = "(builtins.getFlake \"$HOME/.config/home-manager\").homeConfigurations.solomazer.options";
        };
        tinymist = {
          command = "tinymist";
          config = {
            exportPDF = "onType";
            preview.background = {
              enabled = true;
              args = ["--open"];
            };
          };
        };
        zk-lsp = {
          command = "zk";
          args = ["lsp"];
        };
      };
      language = [
        {
          name = "typst";
          language-servers = ["tinymist"];
          auto-format = true;
          formatter.command = "typstyle";
        }
        {
          name = "nix";
          auto-format = true;
          formatter.command = "alejandra";
        }
        {
          name = "rust";
          auto-format = true;
          formatter.command = "rustfmt";
        }
        {
          name = "markdown";
          roots = [".zk"];
          language-servers = ["zk-lsp"];
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
        rulers = [125];

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
          character = "┊";
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
