{ config, pkgs, ... }:

let 
  s = import ./services {};
  p = import ./programs {};
  x = import ./xres {};
in
{
  home.stateVersion = "20.03";
  home.packages = with pkgs; [

    vim        maim
    unzip      wget
    curl       neovim
    tmux       cmus
    weechat    tree
    rofi       rxvt-unicode
    firefox    chromium
    neomutt    nix-direnv
    xclip      mpv
    ripgrep

  ];

  programs = {
    inherit (p) feh zathura fzf git bash htop;
    home-manager.enable = true;
    direnv = {
      enable = true;
      enableBashIntegration = true;
    };
  };

  services = {
    inherit (s) dunst redshift sxhkd picom;
    lorri.enable = true;
  };

  xdg = {
    userDirs = {
      enable = true;
      desktop = "\$HOME/desktop";
      documents="\$HOME/docs";
      download="\$HOME/dloads";
      music="\$HOME/music";
      pictures="\$HOME/pics";
      videos="\$HOME/vids";
    };
  };

  xresources = {
    inherit (x) properties;
  };
}
