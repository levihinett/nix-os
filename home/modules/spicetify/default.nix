{ pkgs, spicetify-nix, lib, ... }:

let
  # Reference system-specific packages from the flake input
  spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  # Install Spicetify package
  home.packages = [
    spicePkgs.spicetify
  ];

  # Import the official Home Manager module from the flake
  imports = [
    spicetify-nix.homeManagerModules.default
  ];

  # Declarative configuration
  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
      shuffle
    ];
  };
}