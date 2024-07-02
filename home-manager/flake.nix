{
  description = "Home Manager configuration of autumn";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix = {
      url = "github:the-argus/spicetify-nix";
    };
  };

  outputs = {
    nixpkgs,
    catppuccin,
    home-manager,
    nixvim,
    spicetify-nix,
    ...}:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."autumn" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [
          ./home.nix
          nixvim.homeManagerModules.nixvim
          catppuccin.homeManagerModules.catppuccin
        ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
        extraSpecialArgs = {inherit spicetify-nix;};
      };
    };
}
