{pkgs, ... }: {
  imports = [
    ./programs
    ./wm
    ./gtk.nix
    ./packages.nix
  ];

  home.username = "autumn";
  home.homeDirectory = "/home/autumn";
  home.stateVersion = "24.05";

  home.pointerCursor = {
    name = "catppuccin-mocha-mauve-cursors";
    package = pkgs.catppuccin-cursors.mochaMauve;
  };

  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
