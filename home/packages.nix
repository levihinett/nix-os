{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty # dev stuff
    neovim
    git
    gh
    tmux
    zoxide
    eza
    bat
    fzf
    ripgrep
    fd
    starship
    cliphist
    fastfetch
    btop
    yazi
    floorp-bin

    wl-clipboard
    vscodium

    waybar # aesthetic stuff
    rofi
    mako
    grim
    slurp
    brightnessctl
    playerctl

    swww
    hypridle
  ];
}
