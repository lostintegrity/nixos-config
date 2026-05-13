{ pkgs, ... }:

{
{ pkgs, ... }:

{
  services.xserver = {
    enable = true;

    xkb = {
      layout = "custom";
      variant = "";

      extraLayouts.custom = {
        description = "Custom keyboard layout";
        languages = [ "eng" ];

        symbolsFile = pkgs.writeText "custom.xkb" ''
          default partial alphanumeric_keys modifier_keys
          xkb_symbols "basic" {
            include "us(basic)"

            // Caps Lock -> Backspace
            key <CAPS> { [ BackSpace ] };

            // Tab -> Control
            key <TAB> { [ Control_L ] };
            modifier_map Control { <TAB> };

            // The key currently known as keycode 94 is usually <LSGT>
            // on many ISO keyboards. Make it Tab.
            key <LSGT> { [ Tab, ISO_Left_Tab ] };
          };
        '';
      };
    };
  };
}
