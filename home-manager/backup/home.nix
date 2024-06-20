{
  config,
  pkgs,
  nix-colors,
  ...
}: {
  imports = [
    nix-colors.homeManagerModules.default
  ];

  colorScheme = nix-colors.colorSchemes.catppuccin-mocha;

  home.pointerCursor = {
    package = pkgs.catppuccin-cursors.mochaMauve;
    name = "Catppuccin-Mocha-Mauve-Cursors";
  };

  home.username = "autumn";
  home.homeDirectory = "/home/autumn";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    cmatrix
    cowsay
    rofi-screenshot
    rofi-power-menu

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    ".icons/default/index.theme".text = ''
      [icon theme]
      Inherits=Catppuccin-Mocha-Mauve-Cursors
    '';

    ".config/rofi/theme.rasi".text = ''
      * {
        width: 600;
        font: "CaskaydiaCove Nerd Font Regular 14";
      }

      element-text, element-icon , mode-switcher {
        background-color: inherit;
        text-color:       inherit;
      }

      window {
        height: 360px;
        border: 3px;
        border-color: #${config.colorScheme.palette.base00};
        background-color: #${config.colorScheme.palette.base00};
      }

      mainbox {
        background-color: #${config.colorScheme.palette.base00};
      }

      inputbar {
        children: [prompt,entry];
        background-color: #${config.colorScheme.palette.base00};
        border-radius: 5px;
        padding: 2px;
      }

      prompt {
        background-color: #${config.colorScheme.palette.base0D};
        padding: 6px;
        text-color: #${config.colorScheme.palette.base00};
        border-radius: 3px;
        margin: 20px 0px 0px 20px;
      }
 
      textbox-prompt-colon {
        expand: false;
        str: ":";
      }

      entry {
        padding: 6px;
        margin: 20px 0px 0px 10px;
        text-color: #${config.colorScheme.palette.base05};
        background-color: #${config.colorScheme.palette.base00};
      }

      listview {
        border: 0px 0px 0px;
        padding: 6px 0px 0px;
        margin: 10px 0px 0px 20px;
        columns: 2;
        lines: 5;
        background-color: #${config.colorScheme.palette.base00};
      }

      element {
        padding: 5px;
        background-color: #${config.colorScheme.palette.base00};
        text-color: #${config.colorScheme.palette.base05}  ;
      }

      element-icon {
        size: 25px;
      }

      element selected {
        background-color:  #${config.colorScheme.palette.base00} ;
        text-color: #${config.colorScheme.palette.base08}  ;
      }

      mode-switcher {
        spacing: 0;
      }

      button {
        padding: 10px;
        background-color: #${config.colorScheme.palette.base00};
        text-color: #${config.colorScheme.palette.base04};
        vertical-align: 0.5;
        horizontal-align: 0.5;
      }
  
      button selected {
        background-color: #${config.colorScheme.palette.base00};
        text-color: #${config.colorScheme.palette.base0D};
      }

      message {
        background-color: #${config.colorScheme.palette.base00};
        margin: 2px;
        padding: 2px;
        border-radius: 5px;
      }
    
      textbox {
        padding: 6px;
        margin: 20px 0px 0px 20px;
        text-color: #${config.colorScheme.palette.base0D};
        background-color: #${config.colorScheme.palette.base00};
      }
    '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/autumn/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.bat = {
    enable = true;
    themes = {
      catppuccin-mocha-mauve = {
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "bat";
          rev = "d714cc1d358ea51bfc02550dabab693f70cccea0";
          sha256 = "sha256-Q5B4NDrfCIK3UAMs94vdXnR42k4AXCqZz6sRn8bzmf4=";
        };
        file = "themes/Catppuccin Mocha.tmTheme";
      };
    };
    config = {
      theme = "catppuccin-mocha-mauve";
    };
  };

  gtk = {
    enable = true;

    font = {
      name = "CaskaydiaCove Nerd Font Mono Regular";
      size = 12;
    };

    theme = {
      name = "Catppuccin-Mocha-Standard-Mauve";
      package = pkgs.catppuccin-gtk.override {
        accents = ["mauve"];
        size = "standard";
        tweaks = [];
        variant = "mocha";
      };
    };

    cursorTheme = {
      package = pkgs.catppuccin-cursors.mochaMauve;
      name = "Catppuccin-Mocha-Mauve-Cursors";
    };

    iconTheme = {
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "mauve";
      };
      name = "Papirus-Dark";
    };
  };

  programs.fastfetch = {
    enable = true;
    settings = {
      modules = [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "display"
        "wm"
        "wmtheme"
        "theme"
        "icons"
        "font"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "disk"
        "battery"
        "break"
        "colors"
      ];
    };
  };

  programs.fzf = {
    enable = true;
  };

  programs.eza = {
    enable = true;
  };

  programs.cava = {
    enable = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
      theme_background = false;
    };
  };

  programs.lf = {
    enable = true;
  };

  programs.nixvim = {
    enable = true;
    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = "mocha";
    };
    globals.mapleader = " ";
    opts = {
      number = true;
      relativenumber = true;

      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;
      breakindent = true;

      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;

      splitbelow = true;
      splitright = true;

      mouse = "a";

      updatetime = 50;

      swapfile = false;
      backup = false;
      undofile = true;

      scrolloff = 10;

      cursorline = true;
    };
    keymaps = [
      {
        mode = ["n" "i" "v" "t"];
        key = "<c-n>";
        action = "<cmd>NvimTreeToggle<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-\\>";
        action = "<cmd>ToggleTerm<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-tab>";
        action = "<cmd>BufferLineCycleNext<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-s-tab>";
        action = "<cmd>BufferLineCyclePrev<cr>";
      }
    ];
    plugins = {
      toggleterm = {
        enable = true;
        settings.direction = "horizontal";
      };
      nvim-tree = {
        enable = true;
      };
      bufferline = {
        enable = true;
        separatorStyle = "thick";
      };
      lualine = {
        enable = true;
      };
      nvim-autopairs = {
        enable = true;
      };
      comment = {
        enable = true;
      };
      treesitter = {
        enable = true;
      };
      telescope = {
        enable = true;
        extensions = {
          file-browser.enable = true;
          fzf-native.enable = true;
        };
        settings = {
          defaults = {
            layout_config = {
              horizontal = {
                prompt_position = "bottom";
              };
            };
            sorting_strategy = "descending";
          };
        };
        keymaps = {
          "<leader><space>" = {
            action = "find_files";
            options.desc = "Find Project Files";
          };
          "<leader>fg" = {
            action = "live_grep";
            options.desc = "Find Text";
          };
        };
      };
    };
  };

  programs.rofi = {
    enable = true;
    extraConfig = {
      modi = "run,drun,window";
      icon-theme = "Oranchelo";
      show-icons = true;
      terminal = "kitty";
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      display-run = "   Run ";
      display-window = " ⊞  Window ";
      sidebar-mode = true;
    };
    theme = "./theme.rasi";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
