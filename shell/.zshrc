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

# keymap definitions

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

# keybinds

bindkey '^H' backward-kill-word-alphanumeric
bindkey '^[[3;5~' kill-word-alphanumeric


bindkey "^[[1;5C" forward-word-alphanumeric
bindkey "^[[1;5D" backward-word-alphanumeric

alias ls='ls --color=auto'
alias rs='sudo $(fc -ln -1)'
alias kitty='kitty --single-instance'

powerline-daemon -q
. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

figlet -f slant "kylelovestoad"
neofetch

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
