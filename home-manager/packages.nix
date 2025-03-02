{pkgs, ...}: {
  home.packages = with pkgs; [
    arduino-ide
    audacity
    blender
    eza
    file
    flameshot
    fzf
    gimp
    git
    grim
    kdenlive
    killall
    krita
    lazygit
    libreoffice
    libresprite
    lunar-client
    man-pages
    man-pages-posix
    obs-studio
    python3
    prismlauncher
    ripgrep
    slurp
    telegram-desktop
    tor-browser
    unzip
    vlc
    wl-clipboard
  ];
}
