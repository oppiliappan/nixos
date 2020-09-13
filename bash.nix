{
  enable = true;
  historyControl = [ "erasedups" ];
  historyFile = "\$HOME/.bash_history";
  historyFileSize = 2000;
  historyIgnore = [ "ls" "exit" "kill" ];
  historySize = 1000;
  shellAliases = {
    "..."="cd -- ../..";
    grep="grep --color=auto";
    l="ls -CF";
    la="ls -A";
    ll="ls -alF";
    ls="ls -F --color=always";
    nerdz="~/scripts/nerdinfo.sh";
    o="xdg-open";
    rless="less -r";
    spdtst="curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip";
    tmux="tmux -u";
    tree="tree -C";
    vim="nvim";
    vime="nvim ~/.config/nvim/init.vim";
    tb="nc termbin.com 9999";

    # git aliases
    gb="git branch -v";
    gc="git commit --verbose";
    gd="git diff --minimal";
    ggp="git push";
    gl="git log -p --abbrev-commit --pretty=medium";
    glo="git log --pretty=oneline --abbrev-commit";
    gst="git status --short";
  };
  shellOptions = [
    "histappend"
    "autocd"
    "globstar"
    "checkwinsize" 
    "cdspell" 
    "dirspell" 
    "expand_aliases" 
    "dotglob" 
    "gnu_errfmt" 
    "histreedit" 
    "nocasematch" 
  ];
  sessionVariables = {
    PROMPT_CHAR="λ";
    PROMPT_CHAR_COLOR="cyan";
    PROMPT_CHAR_ROOT="#";
    PROMPT_CHAR_ROOT_COLOR="magenta";
    SHORTEN_CWD=1;
    CWD_COLOR="white";
    EXPAND_TILDE=0;
    GIT_CLEAN="·";
    GIT_CLEAN_COLOR="green";
    GIT_WT_MODIFIED="×";
    GIT_WT_MODIFIED_COLOR="red";
    GIT_INDEX_MODIFIED="±";
    GIT_INDEX_MODIFIED_COLOR="yellow";
    BRANCH_COLOR="bright black";
    COMMIT_COLOR="green";
    PF_INFO="ascii title os kernel uptime pkgs shell ";
    PF_SEP=" ";
    PF_COL1=7;
    PF_COL2=7;
    PF_COL3=6;
    PF_ALIGN="9";
    PF_ASCII="nixos";
    _JAVA_AWT_WM_NONREPARENTING=1;
    TERM="xterm-256color-italic";
    EDITOR="nvim";
    MANPAGER="nvim +Man!";
  };
  initExtra = ''
    bind 'set completion-ignore-case on'
    bind 'set show-all-if-ambiguous on'
    bind 'set colored-stats on'
    bind 'set completion-display-width 1'
    bind 'TAB:menu-complete'
    bind Space:magic-space
    [ -f $HOME/.github ] && . $HOME/.github
    [ -f ~/.bash_aliases ] && . ~/.bash_aliases
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    eval "$(direnv hook bash)"
    export PS1='\n$(pista)'
    export PROMPT_COMMAND=""
    '';
}
