{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#hp-envy";
      update = "nix flake update && sudo nixos-rebuild switch --flake /etc/nixos#hp-envy";
      ll = "eza -la";
      cat = "bat";
    };
  };

  programs.starship = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
  };

  programs.bat = {
    enable = true;
  };

  programs.eza = {
    enable = true;
  };
}