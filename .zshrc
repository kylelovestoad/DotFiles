# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kyle/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Keymap definitions

backward-kill-word-alphanumeric () {
      	local WORDCHARS="${WORDCHARS:s#/#}"
      	zle backward-delete-word
}

kill-word-alphanumeric () {
      	local WORDCHARS="${WORDCHARS:s#/#}"
      	zle delete-word
}

forward-word-alphanumeric () {
      	local WORDCHARS="${WORDCHARS:s#/#}"
      	zle forward-word
}

backward-word-alphanumeric () {
      	local WORDCHARS="${WORDCHARS:s#/#}"
      	zle backward-word
}

zle -N backward-kill-word-alphanumeric
zle -N kill-word-alphanumeric
zle -N forward-word-alphanumeric
zle -N backward-word-alphanumeric

# Keybinds

bindkey '^H' backward-kill-word-alphanumeric
bindkey '^[[3;5~' kill-word-alphanumeric

bindkey "^[[1;5C" forward-word-alphanumeric
bindkey "^[[1;5D" backward-word-alphanumeric

bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char

# Aliases

alias ls='ls --color=auto'
alias sudo='sudo '
alias rs='sudo $(fc -ln -1)'
alias kitty='kitty --single-instance'
alias yay='paru'
alias yayq='paru -Sy && yay -Qu'
alias vim='nvim'
alias bigopenfiles="sudo lsof / | awk '{if(\$7 > 1048576) print \$7/1048576 \"MB\" \" \" \$9 }' | sort -n -u" 
alias deletedfiles="sudo lsof / | egrep 'PID|\(deleted\)'"

# Other

powerline-daemon -q
. /usr/lib/python$(python -V | grep -oE "[0-9]+\.[0-9]+")/site-packages/powerline/bindings/zsh/powerline.zsh

setopt extendedglob
setopt autocd

figlet -f slant "kylelovestoad"
neofetch

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# EOF #
