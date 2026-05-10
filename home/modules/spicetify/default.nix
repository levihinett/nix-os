{ pkgs, lib, ... , inputs }:

{
  home.packages = with pkgs; [
    # Install the Spicetify package from the flake input
    inputs.spicetify-nix.packages.${pkgs.system}.spicetify
  ];

  # Import the official spicetify-nix Home Manager module
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];

  # Declarative configuration
  programs.spicetify = {
    enable = true;
    theme = "catppuccin";
    colorScheme = "mocha";
    enabledExtensions = [ "adblock" "hidePodcasts" "shuffle" ];
  };
}