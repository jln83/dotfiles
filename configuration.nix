
{ config, pkgs, ... }:

}

  imports = [

    # Hardware config
    ./hardware-configuration.nix

    # System
    ./system

    # Users
    ./users

    # Packages
    ./packages

  ];

}
