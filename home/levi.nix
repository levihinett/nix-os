{ spicetify-nix, ... }:

{
  imports = [
    ./packages.nix
    ./hyprland.nix
    ./shell.nix
    ./hypridle.nix
    ./modules/hyprland
    ./modules/waybar
    ./modules/rofi
    ./modules/kitty
    ./modules/gtk
    ./modules/theme
    ./modules/launcher
    ./modules/spicetify
  ];

  home.username      = "levih";
  home.homeDirectory = "/home/levih";
  home.stateVersion  = "25.11";

  programs.home-manager.enable = true;
}