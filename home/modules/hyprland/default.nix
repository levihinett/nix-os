{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable   = true;
    settings = {

      "$mod"      = "SUPER";
      "$terminal" = "kitty";

      animations = {
        enabled = true;
        bezier   = "smooth,0.05,0.9,0.1,1.0";
        animation = [
          "windows,1,7,smooth"
          "windowsOut,1,7,default,popin 80%"
          "border,1,10,default"
          "fade,1,7,default"
          "workspaces,1,6,default"
        ];
      };

      decoration = {
        rounding = 12;
        blur = {
          enabled = true;
          passes  = 2;
          size    = 8;
        };
        shadow = {
          enabled      = true;
          range        = 20;
          render_power = 3;
        };
      };

      general = {
        border_size          = 2;
        "col.active_border"  = "rgba(cba6f7ff)";
        "col.inactive_border"= "rgba(313244aa)";
        gaps_in  = 6;
        gaps_out = 14;
      };

      input.kb_layout = "gb";

      monitor = ",preferred,auto,1";

      "exec-once" = [
        "waybar"
        "mako"
        "mkdir -p /home/levih/.cache/awww && awww-daemon"
        "sleep 1 && awww img -o eDP-1 /home/levih/Pictures/wallpapers/wallpaper.jpg"
      ];

      bind = [
        # Apps
        "$mod, RETURN, exec, $terminal"
        "$mod, Q, killactive"
        "$mod, L, exec, hyprlock"
        "$mod, M, exit"
        "$mod, D, exec, $HOME/.local/bin/set-launcher"
        "$mod, E, exec, $terminal -e yazi"
        "$mod, F, fullscreen"
        "$mod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
        # Focus
        "$mod, left,  movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up,    movefocus, u"
        "$mod, down,  movefocus, d"
        # Move windows
        "$mod SHIFT, left,  movewindow, l"
        "$mod SHIFT, right, movewindow, r"
        "$mod SHIFT, up,    movewindow, u"
        "$mod SHIFT, down,  movewindow, d"
        # Workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        # Move to workspace
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
    };
  };
}