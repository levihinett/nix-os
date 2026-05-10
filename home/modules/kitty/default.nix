# home/modules/kitty/default.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [ kitty ];
}