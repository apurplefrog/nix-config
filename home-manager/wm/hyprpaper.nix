{...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      splash = false;
      preload = "~/.config/home-manager/wm/bgimages/flowers2.png";
      wallpaper = ["HDMI-A-1,~/.config/home-manager/wm/bgimages/flowers2.png"];
    };
  };
}
