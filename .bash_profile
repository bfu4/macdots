
if [[ -f ~/.profile ]]; then
	. ~/.profile
fi

if [[ $- == *i* && -f ~/.bashrc ]]; then
	. ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/elon/.sdkman"
[[ -s "/Users/elon/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/elon/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
