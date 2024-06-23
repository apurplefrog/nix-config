{...}: {
  services.picom = {
    enable = true;
    backend = "glx";
    activeOpacity = 1;
    inactiveOpacity = 1;
    fade = true;
    fadeExclude = [];
    shadow = true;
    shadowExclude = ["class_g = 'Polybar'"];
    settings = {
      fade-delta = 4;
      no-fading-openclose = false;
      glx-no-stencil = true;
      glx-copy-from-front = false;
      glx-swap-method = 2;
      blur = {
        method = "dual_kawase";
        strength = 6;
      };
      blur-background = true;
      corner-radius = 20;
      rounded-corners-exclude = ["class_g = 'Polybar'"];
      opacity-rule = [
        "80:class_g = 'kitty'"
        #"80:class_g = 'ArmCord'"
      ];
    };
  };
}
