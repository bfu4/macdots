
if [[ -f ~/.profile ]]; then
	. ~/.profile
fi

if [[ $- == *i* && -f ~/.bashrc ]]; then
	. ~/.bashrc
fi
