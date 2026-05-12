{ config, pkgs, lib, ... }:

{
  users.users.bhowes = {
    isNormalUser = true;
    description = "Benjamin Howes";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
