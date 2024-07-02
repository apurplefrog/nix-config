{...}: {
  programs.waybar = {
    enable = true;
    catppuccin.enable = false;
    style = ./style.css;
    settings = {
      mainBar = {
        margin-top = 10;
        margin-left = 7;
        width = 1900;
        height = 32;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "network"
          "memory"
          "battery"
          "pulseaudio"
        ];  
        clock = {
          format = " {:%r  %d/%m/%y}";
          interval = 1;
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };
      };
    };
  };
}
