{ inputs, outputs, lib, config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home = {
    username = "jannik";
    homeDirectory = "/home/jannik";
    stateVersion = "24.05";

    packages = with pkgs; [
      # Base packages
      # Add your base packages here

      # Editor packages
      vscode
      zed-editor

      # Office packages
      libreoffice
      # thunderbird

      # Programming packages
      python3
      nodejs
      go
    ];
  };

  programs = {
    home-manager.enable = true;
    bash.enable = true;
    git = {
      enable = true;
      userName = "jannikh";
      userEmail = "abaris004@gmail.com";
      # Add any additional git configurations here
    };
  };

  # Add any editor-specific configurations here

  # Add any office-related configurations here

  # Add any programming-related configurations here

  systemd.user.startServices = "sd-switch";
}