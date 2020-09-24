# System-wide .bashrc file for interactive bash(1) shells. 
if [ -z "$PS1" ]; then 
	return fi PS1='\h:\W \u\$ ' # Make bash check its window size after a process completes 
shopt -s checkwinsize [ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM" 

eval function fuck () { TF_PYTHONIOENCODING=$PYTHONIOENCODING; 
	export TF_SHELL=bash; 
	export TF_ALIAS=fuck; 
	export TF_SHELL_ALIASES=$(alias); 
	export TF_HISTORY=$(fc -ln -10); 
	export PYTHONIOENCODING=utf-8; 
	TF_CMD=$( thefuck THEFUCK_ARGUMENT_PLACEHOLDER "$@" ) && eval "$TF_CMD"; 
	unset TF_HISTORY; export PYTHONIOENCODING=$TF_PYTHONIOENCODING; 
	history -s $TF_CMD; } 

alias whereami=`echo pwd` 

export NVM_DIR="$HOME/.nvm" [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
