{...}: {
  services.hyprpaper = {
    enable = true;
    settings = 
    let
      path = "~/.config/home-manager/wm/bgimages/Mocha-hald8-maria-KrJ03A1r8Qo-unsplash.jpg";
    in {
      splash = false;
      preload = path;
      wallpaper = ["HDMI-A-1,${path}"];
    };
  };
}
