{...}: {

  home.file.".config/waybar/config".text = ''
{
    "position": "top",
    "width": 1904,
    "spacing": 4,
    "modules-left": ["custom/icon", "hyprland/workspaces", "tray"],
    "modules-center": ["clock"],
    "modules-right": ["pulseaudio", "cpu", "memory", "temperature", "battery", "battery#bat2"],
    "custom/icon": {
        "format": "  ",
        "tooltip": false
    },
    "tray": {
        "spacing": 10
    },
    "clock": {
        "format": "{:L%Y-%m-%d<small>[%a]</small> <tt><small>%p</small></tt>%I:%M}"
    },
    "cpu": {
        "format": " {usage}%",
        "tooltip": false
    },
    "memory": {
        "format": " {}%"
    },
    "temperature": {
        "thermal-zone": 2,
        "critical-threshold": 80,
        "format-critical": "{icon} {temperatureC}°C",
        "format": "{icon} {temperatureC}°C",
        "format-icons": ["", "", ""]
    },
    "battery": {
        "states": {
            "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": "{icon} {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-alt": "{icon} {time}",
        "format-icons": ["", "", "", "", ""]
    },
    "battery#bat2": {
        "bat": "BAT2"
    },
    "pulseaudio": {
        "scroll-step": 5, // %, can be a float
        "format": "{icon} {volume}% {format_source}",
        "format-bluetooth": " {icon} {volume}% {format_source}",
        "format-bluetooth-muted": "  {icon} {format_source}",
        "format-muted": "  {format_source}",
        "format-source": " {volume}%",
        "format-source-muted": "",
        "format-icons": {
            "default": ["", "", ""]
        },
        "on-click-right": "pavucontrol",
    },
}
  '';
  programs.waybar = {
    enable = true;
    style = ''
* {
	border: none;
	border-radius: 10;
  font-family: "Caskaydia Cove Nerd Font" ;
	font-size: 15px;
	min-height: 10px;
}

window#waybar {
	background: transparent;
}

window#waybar.hidden {
	opacity: 0.2;
}

#window {
	margin-top: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
  color: transparent;
	background: transparent;
}

#network {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 10px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: none;
	color: #161320;
	background: #bd93f9;
}

#pulseaudio {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 10px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: none;
	color: #1A1826;
	background: #FAE3B0;
}

#battery {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 10px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: none;
	color: #161320;
	background: #B5E8E0;
}

#battery.charging, #battery.plugged {
	color: #161320;
    background-color: #B5E8E0;
}

#battery.critical:not(.charging) {
    background-color: #B5E8E0;
    color: #161320;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

@keyframes blink {
    to {
        background-color: #BF616A;
        color: #B5E8E0;
    }
}

#clock {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 10px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: none;
	color: #161320;
	background: #ABE9B3;
}

#memory {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	color: #161320;
	background: #DDB6F2;
}
#cpu {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	color: #161320;
	background: #96CDFB;
}

#custom-icon,
#tray {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	color: #7eb3df;
	background: #161320;
}

#workspaces {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	background: #161320;
}

#workspaces button.hover {
  color: #000000;
}

#workspaces button.active {
  color: #cba6f7;
}
    '';
  };
}
