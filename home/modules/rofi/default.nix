{ pkgs, ... }:
{
  home.packages = with pkgs; [ rofi wofi ];

  xdg.configFile."rofi/themes/matugen.rasi".text = ''
    * {
      bg:      rgba(30, 30, 46, 0.92);
      surface: rgba(49, 50, 68, 0.85);
      border-color: rgba(203, 166, 247, 0.25);
      fg:      #cdd6f4;
      fg-dim:  #6c7086;
      accent:  #cba6f7;
      background-color: transparent;
      text-color:       @fg;
      font:             "JetBrains Mono 13";
    }
    window {
      background-color: @bg;
      border:           1;
      border-color:     @border-color;
      border-radius:    16;
      width:            480;
      padding:          16;
    }
    mainbox {
      background-color: transparent;
      spacing:          8;
    }
    inputbar {
      background-color: @surface;
      border-radius:    10;
      padding:          10 14;
      spacing:          8;
      children:         [prompt, entry];
    }
    prompt {
      text-color: @accent;
    }
    entry {
      text-color:        @fg;
      placeholder:       "Search...";
      placeholder-color: @fg-dim;
    }
    listview {
      background-color: transparent;
      lines:            8;
      spacing:          4;
      scrollbar:        false;
    }
    element {
      background-color: transparent;
      border-radius:    8;
      padding:          8 12;
      spacing:          10;
      children:         [element-icon, element-text];
    }
    element.selected {
      background-color: rgba(203, 166, 247, 0.15);
    }
    element-icon {
      size: 20;
    }
    element-text {
      text-color: @fg;
    }
    element.selected > element-text {
      text-color: @accent;
    }
  '';

  wayland.windowManager.hyprland.settings.bind = [
    "$mod, D, exec, rofi -show drun -theme ~/.config/rofi/themes/matugen.rasi"
  ];
}