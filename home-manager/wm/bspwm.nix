{...}: {
  xsession.windowManager.bspwm = {
    enable = true;
    extraConfig = ''
      killall polybar; polybar &
      killall picom; picom -c --config ~/.config/picom/picom.conf &
      killall feh; feh --bg-scale ~/.config/home-manager/wm/bgimage.png

      xsetroot -xcf ~/.icons/catppuccin-mocha-mauve-cursors/cursors/left_ptr 12

      bspc monitor -d 1 2 3 4 5 6 7 8 9 10
      bspc config normal_border_color \#7f849c
      bspc config focused_border_color \#cba6f7
      bspc config active_border_color \#cba6f7

      bspc config focus_follows_pointer true
      
      bspc config border_width 2
    '';
  };

}
