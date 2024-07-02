{ pkgs, lib, spicetify-nix, ... }:
let
  spicePkgs = spicetify-nix.packages.${pkgs.system}.default;
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];

  imports = [ spicetify-nix.homeManagerModule ];

  programs.spicetify ={
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      fullAppDisplay
      keyboardShortcut
      loopyLoop
      popupLyrics
      shuffle
      lastfm
    ];
  };
}
