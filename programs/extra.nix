{ config, pkgs, lib, ... }:

{
  programs.firefox.enable = true;
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    mpv    
    kdePackages.okular
    
    discord
    heroic
  ];
  
  services.flatpak.packages = [
    "com.opera.Opera"
  ];

  programs.steam.extraCompatPackages = with pkgs; [
    proton-ge-bin
  ];
}
