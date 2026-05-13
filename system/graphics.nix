{ config, pkgs, lib, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
    
  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];
    
  hardware.nvidia = {
    modesetting.enable = true;
     
    open = true;
     
    nvidiaSettings = true;
    
    package = config.boot.kernelPackages.nvidiaPackages.production;
     
    powerManagement = {
      enable = true;
      finegrained = true;
    };
    
    prime = {
      offload = {
        enable = true;
	enableOffloadCmd = true;
      };
      
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
  
  environment.systemPackages = with pkgs; [
    vulkan-tools
    mesa-demos
    mangohud
    protonup-qt
  ];
  
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
  
  programs.gamemode.enable = true;
}
