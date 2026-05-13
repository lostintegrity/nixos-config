{ config, pkgs, lib, ... }:

{
  # X11 + XFCE
  services.xserver.enable = true;
  
  services.xserver.displayManager.lightdm.enable = false; # BE GONE!!!
  services.xserver.displayManager.startx.enable = true;
  
  services.xserver.desktopManager.xfce.enable = true;
  
  services.xserver.xkb = {
    layout = "us";
    variant = "";
    options = "caps:backspace";
  };
  
  console.useXkbConfig = true;
}
