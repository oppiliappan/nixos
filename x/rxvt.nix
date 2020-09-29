{ theme ? import ../currentTheme.nix }:

with theme;
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

  "*.cursorBlink" = "on";
  "URxvt.font"         = "xft:Nerd Input:size=11:style=Regular";
  "URxvt.italicFont" = "xft:Nerd Input:size=11:style=Italic";
  "URxvt.boldFont" = "xft:Nerd Input:size=11:style=Bold";
  "*font"         = "Nerd Input:size=11:style=Regular";
  "*italicFont" = "Nerd Input:size=11:style=Italic";
  "*boldFont" = "Nerd Input:size=11:style=Bold";

  "*.lineSpace"       = 0;
  "*.letterSpace"     = -1;
  "*.scrollBar"       = false;
  "*.internalBorder"  = 25;
  "*.cursorUnderline" = false;
  "*.geometry"        = "70x35";
  "*.thickness"       = 5;
  "*.titleBar"        = false;
  "*.intensityStyles" = false;


  "*.perl-ext-common"    = "default,matcher,font-size";
  "URxvt.keysym.C-Up"    = "perl:font-size:increase";
  "URxvt.keysym.C-Down"  = "perl:font-size:decrease";
  "URxvt.keysym.C-equal" = "perl:font-size:reset";
  "*.url-launcher"       = "firefox";
  "*.matcher.button"     = 1;
}
