# home/modules/gtk/default.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GTK tools you might want, e.g.
    gtk3
    gtk4
    gnome-themes-extra
  ];

  home.pointerCursor = {
  gtk.enable  = true;
  x11.enable  = true;
  name        = "Catppuccin-Mocha-Dark-Cursors";
  size        = 24;
  package     = pkgs.catppuccin-cursors.mochaDark;
  };

  wayland.windowManager.hyprland.settings.env = [
    "XCURSOR_THEME,Catppuccin-Mocha-Dark-Cursors"
    "XCURSOR_SIZE,24"
  ];
}