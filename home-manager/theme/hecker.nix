{pkgs, ...}: {
  stylix = let
    font = {
      name = "CaskaydiaCove Nerd Font";
      package = pkgs.nerdfonts.override {fonts = ["CascadiaCode"];};
    };
  in {
    enable = true;
    image = ./background-images/black-pixel.jpg;
    fonts = {
      serif = font;
      sansSerif = font;
      emoji = font;
      monospace = font;
    };
    base16Scheme = {
      base00 = "000000";
      base01 = "000000";
      base02 = "000000";
      base03 = "00ff00";
      base04 = "00ff00";
      base05 = "000000";
      base06 = "000000";
      base07 = "000000";
      base08 = "00ff00";
      base09 = "00ff00";
      base0A = "00ff00";
      base0B = "00ff00";
      base0C = "00ff00";
      base0D = "00ff00";
      base0E = "00ff00";
      base0F = "00ff00";
    };
  };
}
