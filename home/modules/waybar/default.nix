{ pkgs, ... }:

{
  home.packages = with pkgs; [ waybar ];

  xdg.configFile."waybar/config".text = ''
    {
      "modules-left": ["workspaces"],
      "modules-center": ["window"],
      "modules-right": ["network", "pulseaudio", "battery", "clock"],

      "network": { "interface": "wlp3s0", "on-click": "nm-connection-editor" },
      "pulseaudio": { "on-click": "pavucontrol" },
      "battery": { "on-click": "gnome-power-statistics" }
    }
  '';
}