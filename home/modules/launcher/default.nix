{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    rofi
    wofi      # optional Wayland-native launcher
    matugen
  ];

  # Rofi theme (glassy / blur / wallpaper-synced)
  xdg.configFile."rofi/themes/matugen.rasi".text = ''
    * {
      background: rgba(30,30,30,0.6);
      border: 2px solid rgba(255,255,255,0.1);
      border-radius: 14px;
      padding: 12px;
      element-background: rgba(30,30,30,0.6);
      element-border: 0;
      element-border-radius: 12px;
      element-padding: 6px;
      highlight: @accent;
      text-color: @foreground;
    }
  '';

  # Rofi configuration
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

  # Launcher script that updates Matugen colors and launches Rofi
  home.file.".local/bin/set-launcher".text = ''
    #!/usr/bin/env bash
    # Update wallpaper colors
    matugen image ~/Pictures/Wallpapers/current.png

    # Launch Rofi with theme
    rofi -show drun -theme ~/.config/rofi/themes/matugen.rasi
  '';
  home.file.".local/bin/set-launcher".executable = true;
}