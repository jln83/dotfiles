{ config, pkgs, ... }:

{

  # Enable the X11 windowing system
  services.xserver.enable = true;

  # KDE Env
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Keymap in X11
  services.xserver.xkb = {
  layout = "fr";
  variant = "";
  };

  # Console keymap
  console.keyMap = "fr";

  # CUPS to print documents.
  services.printing.enable = true;



  # Touchpad
  services.xserver.libinput.enable = true;

}