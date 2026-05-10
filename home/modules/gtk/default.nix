# home/modules/gtk/default.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GTK tools you might want, e.g.
    gtk3
    gtk4
    gnome-themes-standard
  ];
}