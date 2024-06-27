{...}: {
  programs.cava = {
    enable = true;
    catppuccin = {
      enable = true;
      flavor = "mocha";
      transparent = true;
    };
  };
}
