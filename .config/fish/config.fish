function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

function ls --description "Replacement for Bash 'ls !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command ls $history[1]
else
    command ls $argv
    end
end

function cd --description "Replacement for Bash 'cd !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command builtin cd $history[1]
else
    command builtin cd $argv
    end
end

thefuck --alias | source

alias whereami="pwd"

alias cd="builtin cd"

set -g theme_display_user yes
set -g theme_display_sudo_user yes
set -g theme_display_hostname yes
set -g theme_git_worktree_support yes
set -g theme_display_vi yes
set -g theme_color_scheme terminal-dark
