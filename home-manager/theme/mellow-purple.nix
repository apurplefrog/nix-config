{pkgs, config, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "mauve";
      };
      name = "Papirus-Dark";
    };
  };

  stylix = {
    polarity = "dark";
    enable = true;
    image = ./background-images/bgimage.jpg;
    fonts = {
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "noto-fonts-emoji";
      };
    };
    cursor = {
      name = "catppuccin-mocha-mauve-cursors";
      package = pkgs.catppuccin-cursors.mochaMauve;
      size = 24;
    };
    base16Scheme = {
      base00 = "1e0528";
      base01 = "1A092D";
      base02 = "331354";
      base03 = "320f55";
      base04 = "873582";
      base05 = "ffeeff";
      base06 = "ffeeff";
      base07 = "f8c0ff";
      base08 = "00d9e9";
      base09 = "aa00a3";
      base0A = "955ae7";
      base0B = "05cb0d";
      base0C = "b900b1";
      base0D = "550068";
      base0E = "8991bb";
      base0F = "4d6fff";
    };
  };
}
