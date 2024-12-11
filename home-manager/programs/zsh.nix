{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      "ls" = "exa --all --icons";
      "ll" = "exa --all -l --icons";
    };
    oh-my-zsh = {
      enable = true;
      theme = "sorin";
      plugins = [
        "git"
        "sudo"
        "colored-man-pages"
      ];
    };
    plugins = [
      {
        name = "zsh-completions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-completions";
          rev = "7a884c75b4f3ce2d8d24df8e55dcc359a020be3f";
          sha256 = "sha256-ZMkGQT27PKi5yYT9eIF2yj8Hlk2oRIQTkY+J+aXZZ5E=";
        };
      }

      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.4.0";
          sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
        };
      }

      {
        name = "zsh-syntax-highlighting";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-syntax-highlighting";
          rev = "e0165eaa730dd0fa321a6a6de74f092fe87630b0";
          sha256 = "sha256-4rW2N+ankAH4sA6Sa5mr9IKsdAg7WTgrmyqJ2V1vygQ=";
        };
      }

      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "82ca15e638cc208e6d8368e34a1625ed75e08f90";
          sha256 = "sha256-Rtg8kWVLhXRuD2/Ctbtgz9MQCtKZOLpAIdommZhXKdE=";
        };
      }
    ];
  };
}
