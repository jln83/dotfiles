{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Nav & files
    tree
    bat             
    fd              
    ripgrep         

    # Monitoring
    btop            
    ncdu          

    # Reseau
    curl
    wget
    dig             

    # Files


  ];
}
