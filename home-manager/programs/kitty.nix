{...}: {
  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      cursor_shape = "beam";
      term = "xterm-256color";
      shell_integration = "disabled";
      open_url_with = "firefox";
      cursor_blink_interval = 0;
    };
    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 12;
    };
  };
}
