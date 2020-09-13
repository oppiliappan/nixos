{ config, pkgs, ... }:

let 
  twobwm = import ./2bwm.nix;
  rofi_settings = import ./rofi.nix;
  terminal = import ./rxvt.nix;
  xft_settings = import ./xft.nix;
in
{
  home.stateVersion = "20.03";
  home.packages = with pkgs; [

    vim        maim
    unzip      wget
    curl       neovim
    tmux       cmus
    weechat    compton
    sxhkd      ripgrep
    rofi       rxvt-unicode
    firefox    chromium
    neomutt    nix-direnv
    xclip      mpv

  ];

  programs = {
    feh = import ./feh.nix;
    zathura = import ./zathura.nix;
    fzf = import ./fzf.nix;
    git = import ./git.nix;
    bash = import ./bash.nix;
    htop = import ./htop.nix;

    home-manager.enable = true;
    direnv = {
      enable = true;
      enableBashIntegration = true;
    };
  };

  services = {
    lorri.enable = true;
    dunst = import ./dunst.nix;
    redshift = import ./redshift.nix;
    sxhkd = import ./sxhkd.nix;
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

  xresources.properties = twobwm // rofi_settings // xft_settings // terminal;
}
