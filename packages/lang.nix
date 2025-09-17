{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # C/C++
    gcc
    gnumake

    # Python
    python3
    python311Packages.pip

    # JavaScript / Web
    nodejs
    yarn

    # Rust
    rustup
    cargo

    # Go
    go
  ];
}
