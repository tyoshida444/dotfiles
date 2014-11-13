PS1="\h:\W$\[ \]"

#-------- cdと同時にlsもしちゃう -----------
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

#-------- java文字化け --------
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

#-------- Kaoriya --------
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

#-------- 複数端末間で履歴を共有 --------

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=300000

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
