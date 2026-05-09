{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
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

    waybar
    rofi
    mako
    grim
    slurp
    brightnessctl
    playerctl
  ];
}
