{ theme ? import ../currentTheme.nix }:

{
  dunst = import ./dunst.nix {};
  picom = import ./picom.nix;
  redshift = import ./redshift.nix;
  sxhkd = import ./sxhkd.nix;
}
