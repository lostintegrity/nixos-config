{ config, pkgs, lib, ... }:

{
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    mpv
  ];
}
