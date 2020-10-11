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

alias whereami=`echo pwd`



export OSH=/Users/bfu4/.oh-my-bash
OSH_THEME="agnoster"
completions=(
  git
  composer
  ssh
)
plugins=(
  git
  bashmarks
)
aliases=(
  general
)
