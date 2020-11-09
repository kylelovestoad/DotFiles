#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias kitty='kitty --single-instance'
alias rs='sudo !!'

PS1='[\u@\h \W]\$ '

export MSBuildSDKsPath=$( echo /usr/share/dotnet/sdk/3.1.107/Sdks );
export EDITOR='vim'
export VISUAL='vim'
export QT_QPA_PLATFORMTHEME=qt5ct

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# NUM_UPDATES=$(yay -Qqu | wc -l)
# NUM_UPDATES_AUR=$(yay -Qqmu | wc -l)
	
figlet -f slant "kylelovestoad" 
neofetch

# if [ $NUM_UPDATES = 0 ]
# then
#	echo "You have no package updates" | lolcat
# else
#	echo "You have $NUM_UPDATES packages that need to be updated, $NUM_UPDATES_AUR of which are from the AUR" | lolcat
# fi
