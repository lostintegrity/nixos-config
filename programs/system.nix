{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    xorg.xinit
    xorg.xmodmap
    xorg.xev
    
    devilspie2
  ];
}
