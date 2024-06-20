{...}: {
  programs.fastfetch = {
    enable = true;
    settings = {
      modules = [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "display"
        "wm"
        "wmtheme"
        "theme"
        "icons"
        "font"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "disk"
        "battery"
        "break"
        "colors"
      ];
    };
  };
}
