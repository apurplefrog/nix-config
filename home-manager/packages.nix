{pkgs, ...}: {
  home.packages = with pkgs; [
    audacity
    blender
    eza
    file
    flameshot
    fzf
    ghidra
    gimp
    git
    grim
    kdenlive
    killall
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
