{
  description = "Home Manager configuration of solomazer";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";
    ghostty.url = "github:ghostty-org/ghostty"; # Use project flake directly for rapid bugfixes
  };

  outputs = {
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    ghostty,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    homeConfigurations."solomazer" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [./home.nix];
      extraSpecialArgs = {inherit inputs;};
    };
  };
}
