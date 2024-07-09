{...}: {
  imports = [
    ./telescope.nix
    ./toggleterm.nix
  ];

  programs.nixvim.plugins = {
    nvim-tree.enable = true;
    bufferline.enable = true;
    lualine.enable = true;
    nvim-autopairs.enable = true;
    comment.enable = true;
    treesitter.enable = true;
  };
}
