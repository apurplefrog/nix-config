{...}: {
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions = {
#      file-browser.enable = true;
      fzf-native.enable = true;
#      media-files.enable = true;
    };
    settings = {
      pickers.colorscheme.enable_preview = true;

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
#      "<leader><space>" = {
#        action = "find_files";
#        options.desc = "Find Project Files";
#      };
      "<leader>f" = {
        action = "live_grep";
        options.desc = "Find Text";
      };
    };
  };
}
