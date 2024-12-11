{...}: {
  programs.nixvim.plugins = {
    lsp = {
      enable = true;
      servers = {
        clangd.enable = true;
        eslint.enable = true;
        jsonls.enable = true;
        lua_ls = {
          enable = true;
          settings.telemetry.enable = false;
        };
        nil_ls.enable = true;
        pyright.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
        zls.enable = true;
      };
      keymaps.lspBuf = {
        gd = "definition";
      };
    };
    cmp-emoji = {enable = true;};
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = {ghost_text = true;};
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
        };
        snippet = {expand = "luasnip";};
        formatting = {fields = ["kind" "abbr" "menu"];};
        sources = [
          {name = "nvim_lsp";}
          {name = "emoji";}
          
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }

          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
        ];

        window = {
          completion = {border = "solid";};
          documentation = {border = "solid";};
        };

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
  cmp-nvim-lsp = {enable = true;}; # lsp
  cmp-buffer = {enable = true;};
  cmp-path = {enable = true;}; # file system paths
    cmp_luasnip = {enable = true;}; # snippets
    cmp-cmdline = {enable = false;}; # autocomplete for cmdline
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
    };
  };
}
