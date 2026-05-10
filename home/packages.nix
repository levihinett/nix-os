{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Dev tools
    kitty
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

    # Clipboard / desktop
    wl-clipboard
    vscodium
    obsidian
    pcloud
    onlyoffice-desktopeditors # like ms suite

    # Hyprland ecosystem
    waybar
    mako
    grim
    slurp
    brightnessctl
    playerctl

    # Wallpaper / lockscreen
    awww
    hyprlock
    hypridle

    # Neovim / development
    nodejs
    direnv
    nix-direnv

    # Theming
    matugen
    wofi
    hyprpicker
    papirus-icon-theme
    bibata-cursors

    # Discord and dependencies
    libappindicator
    libXScrnSaver
    discord

    # Fonts
    (nerd-fonts.jetbrains-mono)
  ];
}