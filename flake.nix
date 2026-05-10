{
  description = "Levi NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {

      hp-envy = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./hosts/hp-envy/configuration.nix

          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.levih =
              import ./home/levi.nix;
          }
        ];
      };

      desktop = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./hosts/desktop/configuration.nix

          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.levih =
              import ./home/levi.nix;
          }
        ];
      };

    };
  };
}
