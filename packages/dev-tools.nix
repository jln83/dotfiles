{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Build & debug
    git
    cmake
    gdb
    strace
    ltrace

    # Conteneurs & VM
    docker

    nvim
    nano
  ];
}
