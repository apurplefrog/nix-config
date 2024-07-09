{pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };

  stylix = let
    fontSet = {
      name = "0xProto";
      package = pkgs.nerdfonts.override {fonts = ["0xProto"];};
    };
  in {
    polarity = "dark";
    enable = true;
    image = ./background-images/bgimage.jpg;
    fonts = {
      serif = fontSet;
      sansSerif = fontSet;
      emoji = fontSet;
    };

    cursor.size = 24;
  
    base16Scheme = {
      base00 = "1e0528";
      base01 = "1A092D";
      base02 = "331354";
      base03 = "873582";
      base04 = "873582";
      base05 = "ffeeff";
      base06 = "ffeeff";
      base07 = "f8c0ff";
      base08 = "00d9e9";
      base09 = "aa00a3";
      base0A = "955ae7";
      base0B = "05cb0d";
      base0C = "b900b1";
      base0D = "aa00d0";
      base0E = "8991bb";
      base0F = "4d6fff";
    };
  };
}
