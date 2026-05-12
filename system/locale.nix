{ config, pkgs, lib, ... }:

{
  time.timeZone = "Asia/Yerevan";
  
  i18n.defaultLocale = "en_US.UTF-8";
  
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "hy_AM";
    LC_IDENTIFICATION = "hy_AM";
    LC_MEASUREMENT = "hy_AM";
    LC_MONETARY = "hy_AM";
    LC_NAME = "hy_AM";
    LC_NUMERIC = "hy_AM";
    LC_PAPER = "hy_AM";
    LC_TELEPHONE = "hy_AM";
    LC_TIME = "hy_AM";
  };
}
