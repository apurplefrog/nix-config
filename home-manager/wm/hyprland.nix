{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
    extraConfig = ''
      monitor=,preferred,auto,auto

      $terminal = kitty
      $fileManager = thunar 
      $menu = rofi -show drun 
      $screenshot = hyprshot -z -m region --clipboard-only
      $powermenu = rofi -show power-menu -modi power-menu:rofi-power-menu
      $lockscreen = hyprlock

      exec-once = waybar & hyprpaper

      env = XCURSOR_SIZE,24
      env = HYPRCURSOR_SIZE,24
      env = MOZ_ENABLE_WAYLAND,1

      general { 
        gaps_in = 5
        gaps_out = 10
        border_size = 2
        col.active_border = rgba(cba6f7ff) #rgba(89dcebff) 45deg
        col.inactive_border = rgba(595959aa)
        resize_on_border = false 
        allow_tearing = false
        layout = dwindle
      }

    decoration {
      rounding = 10
      active_opacity = 1.0
      inactive_opacity = 1.0

      drop_shadow = true
      shadow_range = 4
      shadow_render_power = 3
      col.shadow = rgba(1a1a1aee)

      blur {
        enabled = yes
        special = true
        size = 6
        passes = 3
        new_optimizations = on
        ignore_opacity = on
        xray = false
      }
    }

    animations {
      enabled = true

      bezier = myBezier, 0.05, 0.9, 0.1, 1.05

      animation = windows, 1, 7, myBezier
      animation = windowsOut, 1, 7, default, popin 80%
      animation = border, 1, 10, default
      animation = borderangle, 1, 8, default
      animation = fade, 1, 7, default
      animation = workspaces, 1, 6, default
    }

    dwindle {
      pseudotile = true # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
      preserve_split = true # You probably want this
    }

    misc { 
      force_default_wallpaper = 0 # Set to 0 or 1 to disable the anime mascot wallpapers
      disable_hyprland_logo = true # If true disables the random hyprland logo / anime girl backg#round. :(
    }

    input {
      kb_layout = us
      kb_variant =
      kb_model =
      kb_options =
      kb_rules =

      follow_mouse = 1

      sensitivity = 0 # -1.0 - 1.0, 0 means no modification.

      touchpad {
        natural_scroll = true 
      }
    }

    gestures {
      workspace_swipe = false
    }

    device {
      name = epic-mouse-v1
      sensitivity = -0.5
    }


    $mainMod = SUPER # Sets "Windows" key as main modifier

    bind = $mainMod, Q, exec, $terminal
    bind = $mainMod, C, killactive,
    bind = $mainMod, M, exit,
    bind = $mainMod, E, exec, $fileManager
    bind = $mainMod, V, togglefloating,
    bind = $mainMod, D, exec, $menu
    #bind = $mainMod, P, pseudo, # dwindle
    bind = $mainMod, T, togglesplit, # dwindle
    bind = $mainMod, S, exec, $screenshot
    bind = $mainMod, P, exec, $powermenu

    bind = $mainMod, F, fullscreen

    bind = $mainMod, O, exec, $lockscreen

    bind = $mainMod, left, movefocus, l
    bind = $mainMod, right, movefocus, r
    bind = $mainMod, up, movefocus, u
    bind = $mainMod, down, movefocus, d

    bind = $mainMod, H, movefocus, l
    bind = $mainMod, L, movefocus, r
    bind = $mainMod, K, movefocus, u
    bind = $mainMod, J, movefocus, d

    bind = SUPER SHIFT, H, movewindow, l
    bind = SUPER SHIFT, L, movewindow, r
    bind = SUPER SHIFT, K, movewindow, u
    bind = SUPER SHIFT, J, movewindow, d

    bind = SUPER SHIFT, left, movewindow, l
    bind = SUPER SHIFT, right, movewindow, r
    bind = SUPER SHIFT, up, movewindow, u
    bind = SUPER SHIFT, down, movewindow, d

    bind = $mainMod, 1, workspace, 1
    bind = $mainMod, 2, workspace, 2
    bind = $mainMod, 3, workspace, 3
    bind = $mainMod, 4, workspace, 4
    bind = $mainMod, 5, workspace, 5
    bind = $mainMod, 6, workspace, 6
    bind = $mainMod, 7, workspace, 7
    bind = $mainMod, 8, workspace, 8
    bind = $mainMod, 9, workspace, 9
    bind = $mainMod, 0, workspace, 10

    bind = $mainMod SHIFT, 1, movetoworkspace, 1
    bind = $mainMod SHIFT, 2, movetoworkspace, 2
    bind = $mainMod SHIFT, 3, movetoworkspace, 3
    bind = $mainMod SHIFT, 4, movetoworkspace, 4
    bind = $mainMod SHIFT, 5, movetoworkspace, 5
    bind = $mainMod SHIFT, 6, movetoworkspace, 6
    bind = $mainMod SHIFT, 7, movetoworkspace, 7
    bind = $mainMod SHIFT, 8, movetoworkspace, 8
    bind = $mainMod SHIFT, 9, movetoworkspace, 9
    bind = $mainMod SHIFT, 0, movetoworkspace, 10

    bind = $mainMod, mouse_down, workspace, e+1
    bind = $mainMod, mouse_up, workspace, e-1

    bindm = $mainMod, mouse:272, movewindow
    bindm = $mainMod, mouse:273, resizewindow

    windowrule = opacity 0.8,^(kitty)$
    windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.
    '';
  };
}
