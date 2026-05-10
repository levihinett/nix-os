# home/modules/spicetify/default.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    spicetify
  ];

  programs.spicetify = {
    enable = true;
    theme = "catppuccin";
    colorScheme = "mocha";
    enabledExtensions = [ "adblock" "hidePodcasts" "shuffle" ];
  };
}