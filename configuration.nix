{ config, pkgs, lib, ... }:

{
  imports = [
    ./hardware-configuration.nix
	
    ./system/boot.nix		# Boot configurations
    ./system/graphics.nix	# NVIDIA!!!!!!
    ./system/hardware.nix	# Hardware configurations
    ./system/locale.nix		# Locale configurations
    ./system/printing.nix	# Printing configurations?
    
    ./users/bhowes.nix		# User configurations
    
    ./desktop/xfce.nix		# X11 + Xfce configuration
    ./desktop/keyboard.nix	# Keyboard remaps
				
    ./services/audio.nix	# Audio configurations
    ./services/networking.nix	# Networking configurations (Includes hostname)
	
    ./programs/dev.nix		# Developement packages
    ./programs/system.nix	# System packages
    ./programs/terminal.nix	# Terminal-related packages
    ./programs/extra.nix	# Extra/miscellaneous packages
    ./programs/fonts.nix	# Font-related packages
  ];

  fileSystems."/games" = {
    device = "/dev/disk/by-label/games";
    fsType = "ext4";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  
  system.stateVersion = "25.11";
}
