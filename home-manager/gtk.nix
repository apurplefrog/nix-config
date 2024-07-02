{pkgs, ...}: {
  gtk = {
    enable = true;

    font = {
      name = "CaskaydiaCove Nerd Font Mono Regular";
      size = 12;
    };

    theme = {
      name = "Catppuccin-Mocha-Standard-Mauve-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = ["mauve"];
        size = "standard";
        tweaks = [];
        variant = "mocha";
      };
    };
  };
}
