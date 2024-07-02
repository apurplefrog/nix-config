{...}: {

  imports = [
    ./none-ls.nix
    ./options.nix
    ./keymaps.nix
    ./plugins.nix
    ./lsp.nix
    ./telescope.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}
