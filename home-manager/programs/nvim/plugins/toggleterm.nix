{...}: {
  programs.nixvim.plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "horizontal";
      float_opts = {
        border = "curved";
      };
      shell = "zsh";
    };
  };
}
