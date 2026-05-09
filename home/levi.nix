{ ... }:

{
  imports = [
    ./packages.nix
    ./hyprland.nix
    ./shell.nix
  ];

  home.username = "levih";
  home.homeDirectory = "/home/levih";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}