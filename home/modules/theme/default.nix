{ pkgs, ... }:

{
  home.packages = with pkgs; [ matugen swww ];

  home.file.".local/bin/set-wallpaper".text = ''
    #!/usr/bin/env bash
    set -euo pipefail

    WALLPAPER="$1"

    swww img "$WALLPAPER" \
      --transition-type grow \
      --transition-duration 1 \
      --transition-fps 60

    matugen image "$WALLPAPER"

    pkill waybar || true
    waybar & disown
    makoctl reload || true
  '';

  home.file.".local/bin/set-wallpaper".executable = true;
}