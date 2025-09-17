{ config, ...}:

{
  imports = [
    ./cli-utils.nix
    ./dev-tools.nix
    ./gui-apps.nix
    ./lang.nix
    ./media.nix
    ./shell.nix
    ./cyber.nix
  ];

  nixpkgs.config.allowUnfree = true;
}
