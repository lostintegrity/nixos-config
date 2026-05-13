{ config, pkgs, lib, ... }:

{
  programs.firefox.enable = true;
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    mpv
    
    kdePackages.okular
  ];
  
  services.flatpak.packages = [
    "com.opera.Opera"
  ];
}
