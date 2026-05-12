{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    xinit
    xmodmap
    xev
    
    devilspie2
  ];
}
