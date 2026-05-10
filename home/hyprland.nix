{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    systemd.enable = false;

    settings = {
      "$mod" = "SUPER";
      "$terminal" = "kitty";

      monitor = [
        ",preferred,auto,1"
      ];

      exec-once = [
        "waybar"
        "mako"
        "swww init"
        "swww img /home/levih/Pictures/wallpapers/wallpaper.jpg"
      ];

      bind = [
        "$mod, RETURN, exec, kitty"
        "$mod, Q, killactive"
        "$mod, M, exit"
        "$mod, D, exec, rofi -show drun"
        "$mod, E, exec, kitty -e yazi"
        "$mod, F, fullscreen"

        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        "$mod SHIFT, left, movewindow, l"
        "$mod SHIFT, right, movewindow, r"
        "$mod SHIFT, up, movewindow, u"
        "$mod SHIFT, down, movewindow, d"
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"   
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
      };

      decoration = {
        rounding = 8;
      };

      input = {
        kb_layout = "gb";
      };
    };
  };
}
