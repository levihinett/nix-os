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
      ls = "eza";
      cat = "bat";

      v = "nvim";
      c = "clear";

      gs = "git status";
      ga = "git add .";
      gc = "git commit -m";
      gp = "git push";

      ff = "fastfetch";
    };

    initContent = ''
      if [ -z "$TMUX" ]; then
        exec tmux
      fi

      fastfetch
    '';
  };

  programs.starship = {
    enable = true;

    settings = {
      add_newline = true;

      character = {
        success_symbol = "[❯](green)";
        error_symbol = "[❯](red)";
      };

      directory = {
        truncation_length = 3;
      };

      git_branch = {
        symbol = " ";
      };
    };
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

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}