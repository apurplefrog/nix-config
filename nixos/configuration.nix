# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

system.autoUpgrade.channel = "https://channels.nixos.org/nixos-unstable";

  # Set your time zone.
  time.timeZone = "America/Toronto";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_CA.UTF-8";

  programs.hyprland = {
    enable = true;
  };

  services.displayManager.sddm = {
    enable = true;
    theme = "catppuccin-mocha";
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
  };

  programs.steam = {
    enable = true;
  };

  services.blueman.enable = true;
  
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  
    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.autumn = {
    isNormalUser = true;
    description = "Autumn Baker";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
    shell = pkgs.zsh;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable nix flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.dconf.enable = true;
  
  programs.zsh.enable = true;

  programs.thunar.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    networkmanagerapplet
    home-manager
    flatpak
    gparted
    hyprpaper
    (pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      font = "CaskaydiaCove Nerd Font";
      fontSize = "12";
    })
  ];

  # Install Specific Nerd Fonts
  fonts.packages = [
    pkgs.nerd-fonts.caskaydia-cove
    pkgs.fira-mono
  ];

  # Set defult applications
  environment.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    SUDO_EDITOR = "nvim";
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}

