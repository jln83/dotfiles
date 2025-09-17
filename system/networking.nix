{ config, pkgs, ... }:

{

  # Hostname
  networking.hostName = "bunny"; 

  # Wireless support
  networking.wireless.enable = true;  

  #Network Manager
  networking.networkmanager.enable = true;

}