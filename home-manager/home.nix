{pkgs, ...}: {
  imports = [
    ./programs

    ./hyprland.nix
    ./packages.nix
  ];

  home.username = "autumn";
  home.homeDirectory = "/home/autumn";
  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  catppuccin = {
    enable = true;
    flavor = "mocha";
  };

  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 12;
  };

  programs.home-manager.enable = true;
}
