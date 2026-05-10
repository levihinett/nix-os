# home/modules/launcher/default.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi-wayland
    swww
    matugen
  ];

  # Rofi theme for glassy, wallpaper-synced launcher
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

  # Rofi config
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

  # Hyprland keybind for SUPER+D
  wayland.windowManager.hyprland.keybinds = [
    { key = "SUPER+D"; exec = "rofi -show drun -theme ~/.config/rofi/themes/matugen.rasi"; }
  ];
}