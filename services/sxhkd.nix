let 
  pkgs = import <nixpkgs> {};
in
{
  enable = true;
  keybindings = {
    "XF86Audio{Lower,Raise}Volume" = "amixer sset Master 2%{-,+}";
    "XF86AudioMute" = "amixer sset Master toggle";
    "XF86MonBrightness{Down,Up}" = "light -{U,A} 5";
    "super + Escape" = "pkill -USR1 -x sxhkd";
    #"ctrl + Escape:" = "${pkgs.nur.repos.npkgs.xcursorlocate}/bin/xcursorlocate";
  };
}
