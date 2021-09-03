# Path to your oh-my-bash installation.
export OSH=/Users/elon/.oh-my-bash

OSH_THEME="nwinkler"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

# ====== Rosetta
alias rosetta="arch -x86_64"

# ====== Exports
export PY_INCLUDES="-I/opt/homebrew/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/include/python3.9 -I/opt/homebrew/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/include/python3.9"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="$PY_INCLUDES -I/opt/homebrew/opt/llvm/include"
export GUILE_TLS_CERTIFICATE_DIRECTORY=/opt/homebrew/etc/gnutls/
export SONATYPE_USERNAME="bellafusari"
export SONATYPE_PASSWORD=""

export GH_TOKEN_ALL=""
# ======= Python
alias pythong=python3
alias py=python3
alias pip="python3 -m pip"
alias python=python3

# ====== Generic Aliases
alias ls="ls -lahtG"
alias cat=bat $@ --paging=never

export WASM_HOME=""

# ====== Java: Homes
JAVA_HOME_8=""
JAVA_HOME_11="/opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home"
GRAAL_HOME_11="/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.2.0/Contents/Home"
# ====== Java: Path Exports
export DEFAULT_PATH="/usr/local/bin:/Users/elon/.cargo/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"
export PATH="$JAVA_HOME/bin:$WASM_HOME/build:$DEFAULT_PATH"

# ====== Java: JDK Aliases
alias j8="export JAVA_HOME=$JAVA_HOME_8 && source ~/.bashrc"
alias j11="export JAVA_HOME=$JAVA_HOME_11 && source ~/.bashrc"
alias jg11="export JAVA_HOME=$GRAAL_HOME_11 && source ~/.bashrc"

eval $(thefuck --alias)
alias more="/opt/homebrew/opt/source-highlight/bin/src-hilite-lesspipe.sh"

PATH="/Users/elon/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/elon/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/elon/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/elon/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/elon/perl5"; export PERL_MM_OPT;
