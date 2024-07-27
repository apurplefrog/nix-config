{pkgs, ...}: {
#  gtk = {
#    enable = true;
#    iconTheme = {
#      package = pkgs.catppuccin-papirus-folders.override {
#        flavor = "mocha";
#        accent = "mauve";
#      };
#      name = "Papirus-Dark";
#    };
#  };

  stylix = let
    font = {
      name = "CaskaydiaCove Nerd Font";
      package = pkgs.nerdfonts.override {fonts = ["CascadiaCode"];};
    };
  in {
    enable = true;
    image = ./background-images/maria-flowers.jpg;
    fonts = {
      serif = font;
      sansSerif = font;
      emoji = font;
      monospace = font;
    };
    cursor = {
      name = "catppuccin-mocha-mauve-cursors";
      package = pkgs.catppuccin-cursors.mochaMauve;
      size = 24;
    };
    base16Scheme = {
      base00 = "000000";
      base01 = "282828";
      base02 = "585858";
      base03 = "888888";
      base04 = "c8c8c8";
      base05 = "ffffff";
      base06 = "ffffff";
      base07 = "ffffff";
      base08 = "fa7883";
      base09 = "ffc387";
      base0A = "ff9470";
      base0B = "98c379";
      base0C = "8af5ff";
      base0D = "6bb8ff";
      base0E = "e799ff";
      base0F = "b3684f";
    };
  };
}
