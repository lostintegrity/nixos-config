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
  
  systemd.services.reapply-tty-font = {
    description = "Re-apply TTY font after framebuffer setup";

    wantedBy = [ "multi-user.target" ];
    after = [
      "systemd-vconsole-setup.service"
      "systemd-user-sessions.service"
    ];

    serviceConfig = {
      Type = "oneshot";
    };

    script = ''
      for tty in /dev/tty1 /dev/tty2 /dev/tty3 /dev/tty4 /dev/tty5 /dev/tty6; do
        ${pkgs.kbd}/bin/setfont -C "$tty" ${pkgs.terminus_font}/share/consolefonts/ter-v28b.psf.gz || true
      done
    '';
  };  
}
