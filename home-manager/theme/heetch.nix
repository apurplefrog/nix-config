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
    polarity = "dark";
    enable = true;
    image = ./background-images/bgimage.jpg;
    fonts = {
      serif = font;
      sansSerif = font;
      emoji = font;
    };

    cursor.size = 24;

    base16Scheme = {
      base00 = "190134";
      base01 = "392551";
      base02 = "5A496E";
      base03 = "7B6D8B";
      base04 = "9C92A8";
      base05 = "BDB6C5";
      base06 = "DEDAE2";
      base07 = "FEFFFF";
      base08 = "27D9D5";
      base09 = "5BA2B6";
      base0A = "8F6C97";
      base0B = "C33678";
      base0C = "F80059";
      base0D = "BD0152";
      base0E = "82034C";
      base0F = "470546";
    };
  };
                     }
