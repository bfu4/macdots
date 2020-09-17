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
    eval command cd $history[1]
else
    command cd $argv
    end
end

thefuck --alias | source

alias whereami="pwd"
