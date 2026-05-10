{ pkgs, lib, inputs, ... }:
{
  home.packages = with pkgs; [
    inputs.spicetify-nix.packages.${pkgs.system}.spicetify
  ];

  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];

  programs.spicetify = {
    enable = true;
    theme = "catppuccin";
    colorScheme = "mocha";
    enabledExtensions = [ "adblock" "hidePodcasts" "shuffle" ];
  };
}