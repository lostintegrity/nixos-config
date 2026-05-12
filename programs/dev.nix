{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    gdb
    radare2

    gcc
    gnumake

    rustup
    cargo
    
    go
  ];
}
