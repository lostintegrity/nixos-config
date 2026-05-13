{ config, pkgs, lib, ... }:

{
  # installed fonts
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.symbols-only
    
    terminus_font
  ];
  
  # TTY font  
  console.font = "${pkgs.terminus_font}/share/consolefonts/ter-v28b.psf.gz";
}
