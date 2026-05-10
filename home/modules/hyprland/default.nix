{ pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprland
    hyprpicker
    swww
  ];

  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 14;

      blur = {
        enabled = true;
        size = 8;
        passes = 3;
        new_optimizations = true;
        xray = true;
        ignore_opacity = true;
      };

      shadow = {
        enabled = true;
        range = 20;
        render_power = 3;
        color = "rgba(0,0,0,0.4)";
      };
    };

    animations = {
      enabled = true;
      animation = [
        "windows, 1, 5, overshot, slide"
        "windowsOut, 1, 4, smoothOut, slide"
        "border, 1, 8, default"
        "fade, 1, 6, smoothIn"
        "workspaces, 1, 5, overshot"
      ];
    };

    general = {
      gaps_in = 5;
      gaps_out = 10;
      border_size = 2;
    };

    layerrule = [
      "blur, waybar"
      "blur, rofi"
      "blur, notifications"
    ];
  };
}