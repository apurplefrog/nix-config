{pkgs, ...}: 
let
  betterfox = pkgs.fetchFromGitHub {
    owner = "yokoffing";
    repo = "Betterfox";
    rev = "116.1";
    hash = "sha256-Ai8Szbrk/4FhGhS4r5gA2DqjALFRfQKo2a/TwWCIA6g=";
  };
in
{
  programs.firefox = {
    enable = true;
    profiles.default = {
      id = 0;
      isDefault = true;
      extraConfig = builtins.concatStringsSep "\n" [
        (builtins.readFile "${betterfox}/Securefox.js")
        (builtins.readFile "${betterfox}/Fastfox.js")
        (builtins.readFile "${betterfox}/Peskyfox.js")
      ];
    };
  };
}
