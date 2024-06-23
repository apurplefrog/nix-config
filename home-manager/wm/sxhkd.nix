{...}: {
  services.sxhkd = {
    enable = true;
    keybindings = {
      "super + q" = "kitty";
      "super + {d,r}" = "rofi -show {drun,run}";
      "super + p" = "rofi -show power-menu -modi power-menu:rofi-power-menu";
      "super + s" = "flameshot gui";
      "super + c" = "bspc node -c";
      "super + f" = "firefox";
      "super + a" = "armcord";

      "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";
      "super + {_,shift + }{h,j,k,l}" = "bspc node -{f,s} {west,south,north,east}";

      "super + {x, z}" = "bspc node -t {tiled,floating}";
    };
  };
}
