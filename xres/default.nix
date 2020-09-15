{ theme ? import ../currentTheme.nix }:

{
  properties = import ./2bwm.nix {} // import ./xft.nix // import ./rofi.nix {} // import ./rxvt.nix {};
}
