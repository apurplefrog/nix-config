{pkgs, ...}: {
home.packages = with pkgs; [
    hyprpicker
    hyprshot
    swww
  ];


  home.file.".config/hypr/hyprland.conf".text = ''
$fileManager=thunar
$mainMod=SUPER
$menu=rofi -show drun
$powerMenu=rofi -show power-menu -modi power-menu:rofi-power-menu
$screenshot=slurp | grim -g - - | wl-copy
$terminal=ghostty
animations {
  bezier=myBezier, 0.05, 0.9, 0.1, 1.05
  animation=windows, 1, 7, myBezier
  animation=windowsOut, 1, 7, default, popin 80%
  animation=border, 1, 10, default
  animation=borderangle, 1, 8, default
  animation=fade, 1, 7, default
  animation=workspaces, 1, 6, default
  enabled=true
}

decoration {
  blur {
    enabled=yes
    ignore_opacity=on
    new_optimizations=on
    passes=3
    size=6
    special=true
    xray=false
  }
#  active_opacity=1.000000
#  inactive_opacity=1.000000
  rounding=10
  shadow {
    color=rgba(00000099)
    enabled=true
    range=4
    render_power=3
  }
}

dwindle {
  preserve_split=true
  pseudotile=true
}

general {
  allow_tearing=false
  border_size=2
  col.active_border=rgb(5bcefa) rgb(cba6f7) 45deg
  col.inactive_border=rgba(595959aa)
  gaps_in=5
  gaps_out=10
  layout=dwindle
  resize_on_border=false
}

gestures {
  workspace_swipe=false
}

group {
  col.border_active=rgb(5bcefa) rgb(f5a9b8) 45deg
  col.border_inactive=rgb(888888)
}

input {
  touchpad {
    natural_scroll=true
    disable_while_typing=0
  }
  kb_layout=us
}

misc {
  disable_hyprland_logo=true
  force_default_wallpaper=0
}
bind=$mainMod, Q, exec, $terminal
bind=$mainMod, C, killactive
bind=$mainMod, M, exit
bind=$mainMod, E, exec, $fileManager
bind=$mainMod, V, togglefloating
bind=$mainMod, D, exec, $menu
bind=$mainMod, P, pseudo
bind=$mainMod, T, togglesplit
bind=$mainMod, S, exec, $screenshot
bind=$mainMod SHIFT, P, exec, $powerMenu
bind=$mainMod SHIFT, S, exec, $screenshot
bind=$mainMod, F, fullscreen
bind=$mainMod, left, movefocus, l
bind=$mainMod, right, movefocus, r
bind=$mainMod, up, movefocus, u
bind=$mainMod, down, movefocus, d
bind=$mainMod, H, movefocus, l
bind=$mainMod, L, movefocus, r
bind=$mainMod, K, movefocus, u
bind=$mainMod, J, movefocus, d
bind=$mainMod SHIFT, H, movewindow, l
bind=$mainMod SHIFT, L, movewindow, r
bind=$mainMod SHIFT, K, movewindow, u
bind=$mainMod SHIFT, J, movewindow, d
bind=$mainMod SHIFT, left, movewindow, l
bind=$mainMod SHIFT, right, movewindow, r
bind=$mainMod SHIFT, up, movewindow, u
bind=$mainMod SHIFT, down, movewindow, d
bind=$mainMod, 1, workspace, 1
bind=$mainMod, 2, workspace, 2
bind=$mainMod, 3, workspace, 3
bind=$mainMod, 4, workspace, 4
bind=$mainMod, 5, workspace, 5
bind=$mainMod, 6, workspace, 6
bind=$mainMod, 7, workspace, 7
bind=$mainMod, 8, workspace, 8
bind=$mainMod, 9, workspace, 9
bind=$mainMod, 0, workspace, 10
bind=$mainMod SHIFT, 1, movetoworkspace, 1
bind=$mainMod SHIFT, 2, movetoworkspace, 2
bind=$mainMod SHIFT, 3, movetoworkspace, 3
bind=$mainMod SHIFT, 4, movetoworkspace, 4
bind=$mainMod SHIFT, 5, movetoworkspace, 5
bind=$mainMod SHIFT, 6, movetoworkspace, 6
bind=$mainMod SHIFT, 7, movetoworkspace, 7
bind=$mainMod SHIFT, 8, movetoworkspace, 8
bind=$mainMod SHIFT, 9, movetoworkspace, 9
bind=$mainMod SHIFT, 0, movetoworkspace, 10
bind=$mainMod, mouse_down, workspace, e+1
bind=$mainMod, mouse_up, workspace, e-1
bindm=$mainMod, mouse:272, movewindow
bindm=$mainMod, mouse:273, resizewindow
env=XCURSOR_SIZE,24
env=HYPRCURSOR_SIZE,24
exec-once=swww-daemon & swww img .config/home-manager/pixel.png
exec-once=waybar & flameshot
windowrulev2=suppressevent maximize, class:.*
windowrulev2 = opacity 0.9, class:(ghostty)
    '';
  }
