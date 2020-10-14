{
  enable = true;
  ignores = [ ".envrc" ];
  userEmail = "nerdy@peppe.rs";
  userName = "Akshay";
  delta = {
    enable = true;
    options = {
      features = "decorations labels";
      syntax-theme = "none";
      zero-style = "8";
      navigate = "true";
      decorations = {
        file-decoration-style = "none";
        whitespace-error-style = "22 reverse";
        minus-style = "7 \"#440000\"";
        minus-emph-style = "7 bold \"#990000\"";
        plus-style = "7 \"#003300\"";
        plus-emph-style = "7 bold \"#009900\"";
        file-style = "7 italic";
        hunk-header-style = "7";
        hunk-header-decoration-style = "8 ul";
      };
      labels = {
        file-modified-label = " MODIFIED ";
        file-removed-label  = " REMOVED ";
        file-added-label    = " ADDED ";
        file-renamed-label  = " RENAMED ";
      };
    };
  };
  extraConfig = {
    commit.verbose = true;
  };
}
