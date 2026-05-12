{ config, pkgs, lib, ... }:

{
  hardware.bluetooth.enable = false;
  
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
