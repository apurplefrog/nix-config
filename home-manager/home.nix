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

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "mauve";
    pointerCursor = {
      enable = true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
