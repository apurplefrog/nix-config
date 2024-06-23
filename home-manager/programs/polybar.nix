{...}: {
  services.polybar = {
    enable = true;
    script = "polybar";
    settings = {
      screenchange.reload = true;
      pseudo.transparency = true;
    };
    config = {
      "bar/main" = {
        wm-name = "bspwm";
        radius = 10;
        offset-x = 7;
        offset-y = 7;
        width = "99%";
        height = "24pt";
        background = "#1e1e2e";
        foreground = "#cdd6f4";
        line-size = "3pt";
        border-size = "2pt";
        border-color = "#11111b";
        padding-left = 1;
        padding-right = 1;
        module-margin = 1;
        separator = "|";
        font-0 = "CaskaydiaCove Nerd Font Mono:scale=12;2";
        modules-left = ["xworkspaces"];
        modules-right = [
          "memory"
          "cpu"
          "date"
          "time"
          "battery"
        ];
        cursor-click = "pointer";
        cursor-scroll = "pointer";
        enable-ipc = true;
      };
      "module/xworkspaces" = {
        type = "internal/xworkspaces";
        label-active = "%name%";
        label-active-foreground = "#cba6f7";
        label-active-backgroud = "#181825";
        label-active-underline = "#cba6f7";
        label-active-padding = 1;
        label-occupied = "%name%";
        label-occupied-padding = 1;
        label-urgent = "%name%";
        label-urgent-padding = 1;
        label-empty = "%name%";
        label-empty-padding = 1;
      };
      "module/battery" = {
        type = "internal/battery";
        full-at = 99;
        battery = "BAT1";
        adapter = "ADP1";
        poll-interval = 2;
        format-charging = [
          "<animation-charging>"
          "<label-charging>"
        ];
        format-charging-padding = 1;
        format-charging-underline = "#cba6f7";
        format-discharging = [
          "<ramp-capacity>"
          "<label-discharging>"
        ];
        format-discharging-underline = "#cba6f7";
        format-discharging-padding = 1;
        label-charging = "%percentage%%";
        label-discharging = "%percentage%%";
        label-full = "%percentage%%";
        label-full-underline = "#cba6f7";
        label-full-padding = 1;
        ramp-capacity-0 = " ";
        ramp-capacity-1 = " ";
        ramp-capacity-2 = " ";
        ramp-capacity-3 = " ";
        ramp-capacity-4 = " ";
        animation-charging-0  = "";
        animation-charging-1= "";
        animation-charging-2 = "";
        animation-charging-3 = "";
        animation-charging-4 = "";
        animation-discharging-0 = " ";
        animation-discharging-1 = " ";
        animation-discharging-2 = " ";
        animation-discharging-3 = " ";
        animation-discharging-4 = " ";
        animation-charging-framerate = 750;
      };
      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        format-prefix = "CPU ";
        label = "%percentage%%";
        format-underline = "#f9e2af";
      };
      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        format-prefix = "RAM ";
        label = "%percentage_used:2%%";
        format-underline = "#f38ba8";
      };
      "module/date" = {
        type = "internal/date";
        interval = 1;
        date = "%Y/%m/%d";
        label = "%date%";
        format-underline = "#a6e3a1";
      };
      "module/time" = {
        type = "internal/date";
        interval = 1;
        date = "%I:%M:%S";
        label = "%date%";
        format-underline = "#89b4fa";
      };
    };
  };
}
