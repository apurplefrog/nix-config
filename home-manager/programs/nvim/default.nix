{...}: {

  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins.nix
    ./lsp.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}
