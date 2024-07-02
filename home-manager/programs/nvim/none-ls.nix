{...}: {
  programs.nixvim.plugins = {
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = true;
    };
  };
}
