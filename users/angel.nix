# Define a user account. Don't forget to set a password with ‘passwd’.
users.users.angel = {
  isNormalUser = true;
  description = "AngeL";
  extraGroups = [ "networkmanager" "wheel" ];
  packages = with pkgs; [
    kdePackages.kate

  ];
};
