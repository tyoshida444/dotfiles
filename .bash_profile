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

export PATH=$PATH:/Applications/android-sdk/sdk/platform-tools

##
# Your previous /Users/yoshidatakuma/.bash_profile file was backed up as /Users/yoshidatakuma/.bash_profile.macports-saved_2013-05-18_at_13:42:17
##

# MacPorts Installer addition on 2013-05-18_at_13:42:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/yoshidatakuma/.bash_profile file was backed up as /Users/yoshidatakuma/.bash_profile.macports-saved_2013-05-18_at_15:34:05
##

# MacPorts Installer addition on 2013-05-18_at_15:34:05: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi

