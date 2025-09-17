{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    firefox
    obsidian
    kitty
  ];
}


