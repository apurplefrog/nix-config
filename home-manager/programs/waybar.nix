{...}: {
  programs.waybar = {
    enable = true;
    style = ''
      * {
        border-radius: 10pt;
        font-size: 14pt;
      }
      
      window#waybar {
        border-width: 1pt;
        border-style: solid;
        border-color: @base0D;
      }
    '';

    settings = {
      mainBar = {
        margin-top = 10;
        margin-left = 7;
        width = 1350;
        height = 32;
        modules-left = [
          "image"
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
        image = {
          path = "../nixos-logo.png";
          size = 32;
        };
      };
    };
  };
}
