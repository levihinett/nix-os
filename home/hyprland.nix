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
