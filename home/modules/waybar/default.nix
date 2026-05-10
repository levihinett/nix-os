{ pkgs, ... }:
{
  home.packages = with pkgs; [ waybar blueman ];

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
      "modules-right": ["bluetooth", "pulseaudio", "network", "battery"],
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
      "bluetooth": {
        "format": "  {status}",
        "format-connected": "  {device_alias}",
        "format-connected-battery": "  {device_alias} {device_battery_percentage}%",
        "on-click": "blueman-manager"
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

  xdg.configFile."waybar/style.css".source = ./style.css;
}