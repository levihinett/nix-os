# home/modules/spicetify/default.nix
{ pkgs, spicetify-nix, lib, ... }:

let
  # Reference system-specific packages from the flake input
  spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  # Install Spicetify package for your system
  home.packages = [
    spicePkgs.spicetify
  ];

  # Import the official Spicetify-Nix Home Manager module
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