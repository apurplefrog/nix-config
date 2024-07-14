{pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };

  stylix = let
    font = {
      name = "0xProto";
      package = pkgs.nerdfonts.override {fonts = ["0xProto"];};
    };
  in {
    enable = true;
    polarity = "dark";
    image = ./background-images/maria-flowers.jpg;
    fonts = {
      serif = font;
      sansSerif = font;
      emoji = font;
    };

    cursor.size = 24;

    base16Scheme = {
      base00 = "26113b";
      base01 = "3d1348";
      base02 = "571052";
      base03 = "730757";
      base04 = "d50084";
      base05 = "fffafa";
      base06 = "c1004c";
      base07 = "d60040";
      base08 = "ff0000";
      base09 = "ffa500";
      base0A = "ffff00";
      base0B = "00ff00";
      base0C = "00ffff";
      base0D = "d50084";
      base0E = "a500ff";
      base0F = "ff00ff";
    };
  };
} 
