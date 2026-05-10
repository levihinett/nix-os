{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty # dev stuff
    neovim
    tree-sitter
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

    awww
    hyprlock # for lock and idle
    hypridle

    # required for mason and lsp plugins with neovim
    nodejs
    npm
    lua_5_4

    # for development
    direnv
    nix-direnv
  ];
}
