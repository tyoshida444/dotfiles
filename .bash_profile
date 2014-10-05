#----- TeX -----
export PATH="/Applications/UpTeX.app/teTeX/bin:$PATH"
function tex(){
	platex -kanji=sjis $1.tex
	jbibtex -kanji=sjis $1
	platex -kanji=sjis $1.tex
	platex -kanji=sjis $1.tex
	dvipdfmx $1.dvi
	open $1.pdf
}

if [ -f ~/.bashrc ] ; then
	. ~/dotfiles/.bashrc
fi

export PATH=$PATH/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin
export PATH=:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/heroku/bin:/opt/local/bin:/opt/local/sbin:/Applications/UpTeX.app/teTeX/bin:/sbin:/opt/X11/bin:/Applications/android-sdk/sdk/platform-tools:/Applications/android-sdk/sdk/platform-tools:/usr/local/mysql/bin
