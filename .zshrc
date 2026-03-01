# Lines configured by zsh-newuser-install
export TERM="xterm-256color"
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/avery/.zshrc'


PS1="%F{yellow}%n@%m%f%k %F{blue}%~ \$%f "
autoload -Uz compinit
autoload -U colors && colors
compinit
# End of lines added by compinstall

alias hrc='nvim ~/.config/hypr/hyprland.conf'
alias rc='nvim ~/.zshrc && source ~/.zshrc'
alias tree='tree -C'
alias ls='ls --color=auto'
alias csp='wine "C:\Program Files\CELSYS\CLIP STUDIO 1.5\CLIP STUDIO PAINT\CLIPStudioPaint.exe"'
alias epita='cd ~/Desktop/EPITA'
alias personal='cd ~/Desktop/PersonalProjects'
alias neofetch='fastfetch'
alias texinit='cp ~/.config/nvim/latex-templates/basic ./main.tex; nvim main.tex'
alias discord='vesktop'
alias img='gthumb'
alias pt='git push --follow-tags'

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/avery/.opam/opam-init/init.zsh' ]] || source '/home/avery/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

trim_names() {
    PATTERN=$(pwd | sed "s/.*\/\(.*\)/\1/g")
    echo "Album name: '$PATTERN'"
    for FILE in * ; do 
        NEWFILE=$(echo $FILE | sed "s/$PATTERN - //g")
        mv "$FILE" "$NEWFILE" 
        echo "moved '$FILE' to '$NEWFILE'"
    done
}

order_names() {
    for FILE in * ; do 
        NEWFILE=$(echo $FILE | sed "s/\(.*\) \([0-9]\{2\}\) \(.*\)/\2 - \1 \3/g")
        mv "$FILE" "$NEWFILE" 
        echo "moved '$FILE' to '$NEWFILE'"
    done
}

export -f trim_names
export -f order_names

clear
fastfetch 

# Created by `pipx` on 2026-02-02 14:55:51
export PATH="$PATH:/home/avery/.local/bin"


export QSYS_ROOTDIR="/home/avery/altera_lite/25.1std/quartus/sopc_builder/bin"
