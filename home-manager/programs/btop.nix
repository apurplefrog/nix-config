{...}: {
  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
      theme_background = false;
    };
    catppuccin = {
      enable = true;
      flavor = "mocha";
    };
  };
}
