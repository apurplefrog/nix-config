{...}: {
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
      };

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          font_color = "rgb(198,208,245)";
          inner_color = "rgb(30,30,46)";
          outer_color = "rgb(203,166,247)";
          placeholder_text = "whats da passwowd >_<";
        }
      ];

      background = [
        {
          path = "./bgimages/Mocha-hald8-maria-KrJ03A1r8Qo-unsplash.jpg";
        }
      ];
    };
  };
}
