{...}: {
  imports = [
    ./theme
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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
