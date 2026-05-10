{ pkgs, ... }:

{
  home.packages = with pkgs; [ rofi wofi ];

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

  wayland.windowManager.hyprland.settings.bind = [
    { key = "SUPER+D"; exec = "rofi -show drun -theme ~/.config/rofi/themes/matugen.rasi"; }
  ];
}