{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    bash
    xclip
    
    alacritty
    tmux
  ];
}
