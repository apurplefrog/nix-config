{pkgs, ...}: {
  home.packages = with pkgs; [
    rofi-power-menu
    rofi-screenshot
  ];

  programs.rofi = {
    enable = true;
    extraConfig = {
      modi = "run,drun,window";
      icon-theme = "Oranchelo";
      show-icons = true;
      terminal = "kitty";
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      display-run = "   Run ";
      display-window = " ⊞  Window ";
      sidebar-mode = true;
    };
    theme = ./themes/catppuccin-mocha.rasi;
  };
}
