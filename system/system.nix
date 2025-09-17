{ config, pkgs, ... }:

{

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Timezone
  time.timeZone = "Europe/Paris";

  # Lang
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
  LC_ADDRESS = "fr_FR.UTF-8";
  LC_IDENTIFICATION = "fr_FR.UTF-8";
  LC_MEASUREMENT = "fr_FR.UTF-8";
  LC_MONETARY = "fr_FR.UTF-8";
  LC_NAME = "fr_FR.UTF-8";
  LC_NUMERIC = "fr_FR.UTF-8";
  LC_PAPER = "fr_FR.UTF-8";
  LC_TELEPHONE = "fr_FR.UTF-8";
  LC_TIME = "fr_FR.UTF-8";
  };

  # openSSH module
  services.openssh.enable = true;

  # System AutoUpgrade
  system.autoUpgrade = {

    enable = true;
    channel = "https://nixos.org/channels/nixos-unstable";

  };

  # Garbage collector, older than 7D
  nix = {

    settings.auto-optimise-store = true;

    gc = {

      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d"

    };
  };

  #System state version
  system.stateVersion = "25.05"; 

  # Experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}