{ theme ? import ../currentTheme.nix }:

with theme;
{
  "rofi.color-enabled" = true;

  "rofi.color-window" = "${base00} , ${base00} , ${base00} , ${base00} , ${base03}";
  "rofi.color-normal" = "${base00} , ${base03} , ${base00} , ${base00} , ${base07}";
  "rofi.color-active" = "${base03} , ${base0E} , ${base00} , ${base0B} , ${base00}";
  "rofi.color-urgent" = "${base00} , ${base03} , ${base00} , ${base00} , ${base03}";

  "rofi.fake-transparency" = true;
  "rofi.font"              = "Input 13";
  "rofi.columns"           = 1;
  "rofi.separator-style"   = "none";
  "rofi.hide-scrollbar"    = true;
  "rofi.location"          = 1;
  "rofi.yoffset"           = 20;
  "rofi.xoffset"           = 20;
  "rofi.padding"           = 32;
  "rofi.fullscreen"        = false;
  "rofi.width"             = 300;
  "rofi.lines"             = 6;
}
