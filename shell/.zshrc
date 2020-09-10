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

# keybinds 

bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word


bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word 

alias ls='ls --color=auto'

powerline-daemon -q
. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

figlet -f slant "kylelovestoad"
neofetch
