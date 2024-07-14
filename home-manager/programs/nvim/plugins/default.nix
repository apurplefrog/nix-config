{...}: {
  imports = [
    ./telescope.nix
    ./toggleterm.nix
  ];

  programs.nixvim.plugins = {
    bufferline.enable = true;
    comment.enable = true;
    image.enable = true;
    lualine.enable = true;
    nvim-tree.enable = true;
    nvim-autopairs.enable = true;
    treesitter.enable = true;
  };
}
