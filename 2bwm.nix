let 
  t = import ./currentTheme.nix;
in
  with t;
{

  "twobwm.border_width"       = 8;
  "twobwm.outer_border"       = 2;
  "twobwm.focus_color"        = base01;
  "twobwm.unfocus_color"      = base01;
  "twobwm.fixed_color"        = base0D;
  "twobwm.unkill_color"       = base08;
  "twobwm.fixed_unkill_color" = base0E;
  "twobwm.outer_border_color" = base00;
  "twobwm.inverted_colors"    = true;
}
