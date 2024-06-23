{pkgs, ... }: {
  imports = [
    ./programs
    ./packages.nix
    ./gtk.nix
    ./wm
  ];

  home.username = "autumn";
  home.homeDirectory = "/home/autumn";
  home.stateVersion = "24.05";

  home.pointerCursor = {
    name = "catppuccin-mocha-mauve-cursors";
    package = pkgs.catppuccin-cursors.mochaMauve;
    size = 12;
  };

  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
