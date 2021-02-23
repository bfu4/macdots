##############################################
#		  bashrc ^u^                 #
##############################################


#---- oh my bash

export OSH=/Users/elon/.oh-my-bash
OSH_THEME="nwinkler"

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)


plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh


#---- basic settings

export SSH_KEY_PATH="~/.ssh/rsa_id"

if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
shopt -s checkwinsize

#---- thefuck


[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"
eval 
            function fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=bash;
                export TF_ALIAS=fuck;
                export TF_SHELL_ALIASES=$(alias);
                export TF_HISTORY=$(fc -ln -10);
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER "$@"
                ) && eval "$TF_CMD";
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                history -s $TF_CMD;
            }

#---- custom aliases

alias whereami=`echo pwd`


alias nano="/opt/homebrew/bin/nano"
alias ct="/usr/local/bin/classtest"

alias gay="toilet -f smmono12 -F gay"

# this is hard to type
ubersicht=Übersicht
# sdkman but fuck that $HOME/.sdkman/candidates/java/current/bin:

# more env
export PATH=/Users/elon/Library/Python/2.7/bin:/opt/homebrew/Cellar/openjdk@11/11.0.9/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GUILE_TLS_CERTIFICATE_DIRECTORY=/usr/local/etc/gnutls/

# lazy
alias python=python3

# thefuck, again
eval $(thefuck --alias)

# rosetta
alias rosetta="arch -x86_64"

# make ls great again
alias ls="ls -lahtG"
export BREW_PATH=/opt/homebrew/
export BREW_INTEL_PATH=/usr/local/Homebrew
export JAVA_HOME=/opt/homebrew/opt/openjdk/
alias rosetta-brew="/usr/local/bin/brew"
export ROSETTA_GEM="/usr/local/Cellar/ruby/3.0.0_1/bin/gem"
alias pythong=python3
alias py=python3
alias pip="python3 -m pip"
