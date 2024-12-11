{pkgs, ...}: {
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
      base01 = "010101";
      base02 = "020202";
      base03 = "45475a";
      base04 = "585b70";
      base05 = "cdd6f4";
      base06 = "cba6f7";
      base07 = "b4befe";
      base08 = "f38ba8";
      base09 = "fab387";
      base0A = "f9e2af";
      base0B = "a6e3a1";
      base0C = "94e2d5";
      base0D = "89b4fa";
      base0E = "f5e0dc";
      base0F = "f2cdcd";
    };
  };
}
