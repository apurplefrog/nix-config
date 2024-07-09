{...}: {
# https://github.com/Oughie/dotfiles/blob/main/fastfetch/config.jsonc
  programs.fastfetch = {
    enable = true;
    settings = {
      display = {
        "color" = "magenta";
        "separator" = "  ";
      };
      modules = [
        "break"
        {
          "type" = "custom";
          "format" = " System";
        }
        {
          "type" = "title";
          "key" = " ";
        }
        {
          "type" = "os";
          "key" = " ❄️";
        }
        {
          "type" = "kernel";
          "key" = " ";
        }
        {
          "type" = "packages";
          "key" = " 󰏗";
        }
        {
          "type" = "custom";
          "format" = " ──────────────────────────────";
        }
        {
          "type" = "custom";
          "format" = " Hardware";
        }
        {
          "type" = "cpu";
          "key" = " ";
          "format" = "{}";
        }
        {
          "type" = "gpu";
          "key" = " ";
          "format" = "{} {}";
        }
        {
          "type" = "memory";
          "key" = " ";
          "format" = "{/1}{-}{/}{/2}{-}{/}{} / {}";
        }
        {
          "type" = "disk";
          "key" = " ";
          "format" = "{/1}{-}{/}{/2}{-}{/}{} / {}";
        }
        {
          "type" = "custom";
          "format" = " ──────────────────────────────";
        }
        {
          "type" = "custom";
          "format" = " Profile";
        }
        {
          "type" = "wm";
          "key" = " 󰖯";
          "format" = "{}";
        }
        {
          "type" = "terminal";
          "key" = " ";
        }
        {
          "type" = "shell";
          "key" = " ";
        }
        {
          "type" = "uptime";
          "key" = " 󰥔";
        }
        {
          "type" = "custom";
          "format" = " ──────────────────────────────";
        }
        {
          "type" = "custom";
          "format" = "{#90}⬤ {#90}⬤ {#31}⬤ {#31}⬤ {#32}⬤ {#32}⬤ {#33}⬤ {#33}⬤ {#34}⬤ {#34}⬤ {#35}⬤ {#35}⬤ {#36}⬤ {#36}⬤ {#37}⬤ {#37}⬤ ";
        }
        "break"
      ];
    };
  };
       }
