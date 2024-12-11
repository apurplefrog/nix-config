{
  description = "Home Manager configuration of autumn";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:nix-community/nixvim";
#    stylix.url = "github:danth/stylix";
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    spicetify-nix,
    ...
  }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."autumn" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./home.nix
          inputs.nixvim.homeManagerModules.nixvim
          inputs.catppuccin.homeManagerModules.catppuccin
#          inputs.stylix.homeManagerModules.stylix
          inputs.spicetify-nix.homeManagerModules.default
        ];

        extraSpecialArgs = {inherit inputs;};
      };
    };
}
