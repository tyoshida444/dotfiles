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
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
