let
  t = import ./currentTheme.nix;
in
  with t;
{
  "*foreground"  = base05;
  "*background"  = base00;
  "*cursorColor" = base05;

  "*color0" = base00;
  "*color1" = base08;
  "*color2" = base0B;
  "*color3" = base0A;
  "*color4" = base0D;
  "*color5" = base0E;
  "*color6" = base0C;
  "*color7" = base05;

  "*color8"  = base03;
  "*color9"  = base09;
  "*color10" = base01;
  "*color11" = base02;
  "*color12" = base04;
  "*color13" = base06;
  "*color14" = base0F;
  "*color15" = base07;

  "*.cursorBlink " = "on";
  "*.font       "  = "xft:Input:size=12:style=Regular";

  "*.italicFont" = "xft:Input:size=12:style=Italic";
  "*.boldFont" = "xft:Input:size=12:style=Bold";

  "*.lineSpace"       = 0;
  "*.letterSpace"     = -1;
  "*.scrollBar"       = false;
  "*.internalBorder"  = 25;
  "*.cursorUnderline" = false;
  "*.geometry"        = "70x35";
  "*.thickness"       = 5;
  "*.titleBar"        = false;
  "*.intensityStyles" = false;


  "*.perl-ext-common" = "default,matcher";
  "*.url-launcher"    = "firefox";
  "*.matcher.button"  = 1;
}
