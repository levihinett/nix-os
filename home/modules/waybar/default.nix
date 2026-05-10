{ pkgs, ... }:
{
  home.packages = with pkgs; [ waybar ];

  xdg.configFile."waybar/config".text = ''
    {
      "layer": "top",
      "position": "top",
      "height": 36,
      "margin-top": 8,
      "margin-left": 16,
      "margin-right": 16,
      "spacing": 4,

      "modules-left": ["hyprland/workspaces"],
      "modules-center": ["clock"],
      "modules-right": ["pulseaudio", "network", "battery"],

      "hyprland/workspaces": {
        "format": "{icon}",
        "format-icons": {
          "default": "●",
          "active": "●",
          "urgent": "●"
        },
        "persistent-workspaces": { "*": 5 }
      },

      "clock": {
        "format": "  {:%H:%M   %a %d %b}",
        "tooltip-format": "<tt>{calendar}</tt>"
      },

      "pulseaudio": {
        "format": "{icon}  {volume}%",
        "format-muted": "  muted",
        "format-icons": { "default": ["", "", ""] },
        "on-click": "pavucontrol"
      },

      "network": {
        "interface": "wlp3s0",
        "format-wifi": "  {essid}",
        "format-disconnected": "  offline",
        "on-click": "nm-connection-editor"
      },

      "battery": {
        "format": "{icon}  {capacity}%",
        "format-icons": ["", "", "", "", ""],
        "format-charging": "  {capacity}%"
      }
    }
  '';

  xdg.configFile."waybar/style.css".text = ''
    * {
      font-family: "JetBrains Mono", monospace;
      font-size: 13px;
      border: none;
      border-radius: 0;
      min-height: 0;
    }

    window#waybar {
      background: transparent;
    }

    .modules-left,
    .modules-center,
    .modules-right {
      background: rgba(30, 30, 46, 0.85);
      border: 1px solid rgba(203, 166, 247, 0.15);
      border-radius: 12px;
      padding: 0 12px;
      margin: 4px 0;
    }

    #workspaces {
      padding: 0 4px;
    }

    #workspaces button {
      color: #6c7086;
      background: transparent;
      padding: 0 6px;
      border-radius: 8px;
      transition: all 0.2s ease;
    }

    #workspaces button.active {
      color: #cba6f7;
    }

    #workspaces button:hover {
      color: #cdd6f4;
      background: rgba(203, 166, 247, 0.1);
    }

    #clock {
      color: #cdd6f4;
      padding: 0 8px;
      font-weight: 500;
    }

    #pulseaudio {
      color: #89b4fa;
      padding: 0 8px;
    }

    #pulseaudio.muted {
      color: #6c7086;
    }

    #network {
      color: #a6e3a1;
      padding: 0 8px;
    }

    #network.disconnected {
      color: #f38ba8;
    }

    #battery {
      color: #a6e3a1;
      padding: 0 8px;
    }

    #battery.warning {
      color: #fab387;
    }

    #battery.critical {
      color: #f38ba8;
    }

    #battery.charging {
      color: #a6e3a1;
    }
  '';
}