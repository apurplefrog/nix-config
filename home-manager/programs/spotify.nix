{pkgs, inputs, ...}:
{
  programs.spicetify =
   let
     spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
   in
   {
     enable = true;
     enabledExtensions = with spicePkgs.extensions; [
       fullAppDisplay
       hidePodcasts
       keyboardShortcut
       loopyLoop
       popupLyrics
       shuffle
       lastfm
     ];
     theme = spicePkgs.themes.catppuccin;
     colorScheme = "mocha";
   };
}
