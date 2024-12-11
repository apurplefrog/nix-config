{...}: {

  home.file.".config/waybar/config".text = ''
{
    "position": "top",
    "width": 1904,
    "spacing": 4,
    "modules-left": ["hyprland/workspaces"],
    "modules-center": ["clock"],
    "modules-right": ["pulseaudio", "cpu", "memory", "temperature", "battery", "battery#bat2", "tray"],
    "tray": {
        "spacing": 10
    },
    "clock": {
        "format": "{:L%Y-%m-%d<small>[%a]</small> <tt><small>%p</small></tt>%I:%M}"
    },
    "cpu": {
        "format": " {usage}%",
        "tooltip": false
    },
    "memory": {
        "format": " {}%"
    },
    "temperature": {
        "thermal-zone": 2,
        "critical-threshold": 80,
        "format-critical": "{icon} {temperatureC}°C",
        "format": "{icon} {temperatureC}°C",
        "format-icons": ["", "", ""]
    },
    "battery": {
        "states": {
            "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": "{icon} {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-alt": "{icon} {time}",
        "format-icons": ["", "", "", "", ""]
    },
    "battery#bat2": {
        "bat": "BAT2"
    },
    "pulseaudio": {
        "scroll-step": 5, // %, can be a float
        "format": "{icon} {volume}% {format_source}",
        "format-bluetooth": " {icon} {volume}% {format_source}",
        "format-bluetooth-muted": "  {icon} {format_source}",
        "format-muted": "  {format_source}",
        "format-source": " {volume}%",
        "format-source-muted": "",
        "format-icons": {
            "default": ["", "", ""]
        },
        "on-click-right": "pavucontrol",
#        "on-click": "foot -a pw-top pw-top"
    },
}
  '';
  programs.waybar = {
    enable = true;
#    style = ''
#      * {
#        border-radius: 10pt;
#        font-size: 14pt;
#      }
#      
#      window#waybar {
#        border-width: 1pt;
#        border-style: solid;
#        border-color: @base0D;
#      }
#    '';
#
#    settings = {
#      mainBar = {
#        margin-top = 10;
#        margin-left = 7;
#        width = 1904;
#        height = 32;
#        modules-left = [
#          "image"
#          "hyprland/workspaces"
#        ];
#        modules-center = [
#          "clock"
#        ];
#        modules-right = [
#          "network"
#          "memory"
#          "battery"
#          "pulseaudio"
#        ];  
#        clock = {
#          format = " {:%r  %d/%m/%y}";
#          interval = 1;
#          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
#        };
#        image = {
#          path = "../nixos-logo.png";
#          size = 32;
#        };
#      };
#    };
  };
}
