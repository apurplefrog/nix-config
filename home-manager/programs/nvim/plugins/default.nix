{...}: {
  imports = [
    ./rustaceanvim.nix
    ./telescope.nix
    ./toggleterm.nix
  ];

  programs.nixvim.plugins = {
    aerial.enable = true;
    bufferline.enable = true;
    comment.enable = true;
    fidget.enable = true;
    image.enable = true;
    lazygit.enable = true;
    lualine.enable = true;
    nvim-tree.enable = true;
    nvim-autopairs.enable = true;
    quickmath.enable = true;
    render-markdown.enable = true;
    treesitter.enable = true;
    treesj.enable = true;
    visual-multi.enable = true;
    web-devicons.enable = true;
    yazi.enable = true;
  };
}
