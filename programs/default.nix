{ theme ? import ../currentTheme.nix }:

{
  bash = import ./bash.nix;
  feh = import ./feh.nix;
  fzf = import ./fzf.nix;
  git = import ./git.nix;
  htop = import ./htop.nix;
  zathura = import ./zathura.nix {};
}
