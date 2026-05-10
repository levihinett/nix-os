{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    rofi
    wofi
    matugen
  ];

  xdg.configFile."rofi/config.rasi".text = ''
    configuration {
      modi: "drun,run,window";
      font: "JetBrains Mono 10";
      show-icons: true;
      lines: 10;
      fixed-num-lines: true;
      padding: 10;
      border-radius: 14;
      opacity: 0.85;
      selected-background: @background;
      selected-foreground: @foreground;
      background: rgba(30,30,30,0.5);
      foreground: rgba(255,255,255,0.9);
    }
  '';

  home.file.".local/bin/set-launcher".text = ''
    #!/usr/bin/env bash
    matugen image ~/Pictures/Wallpapers/current.png
    rofi -show drun -theme ~/.config/rofi/themes/matugen.rasi
  '';

  home.file.".local/bin/set-launcher".executable = true;
}