{inputs, ...}: {
  programs.nixvim.plugins.telescope = {
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
}
