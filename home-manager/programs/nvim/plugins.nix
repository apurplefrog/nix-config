{inputs, ...}: {
  imports = [
    ./plugins/telescope.nix
  ];

  programs.nixvim.plugins = {
    toggleterm.enable = true;
    nvim-tree.enable = true;
    bufferline.enable = true;
    lualine.enable = true;
    nvim-autopairs.enable = true;
    comment.enable = true;
    treesitter.enable = true;
    hardtime.enable = true;
  };
}
