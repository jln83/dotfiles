{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vlc
    mpv
    audacity
  ];
}
