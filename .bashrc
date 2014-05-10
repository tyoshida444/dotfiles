PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")' 

#-------- cdと同時にlsもしちゃうやつ -----------
function cdls() {
   \cd $1;
    ls -G;
}
alias cd=cdls

#-------- lsに色を付ける --------
alias ls='ls -G'
export LSCOLORS=gxfxcxdxbxegedabagacad


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#-------- rmを安全に --------
alias rm='rm -i'