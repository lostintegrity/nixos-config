{ config, pkgs, lib, ... }:

{
  networking.hostName = "megatron";
  networking.networkmanager.enable = true;
}
