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

# Terminal colors

# black
export color0='#000000'
export color8='#767676'

# red
export color1='#3a57af'
export color9='#4f7af9'

# green
export color2='#2cc9af'
export color10='#47fcdb'

# yellow
export color3='#376363'
export color11='#5ca8a8'

# blue
export color4='#2ec0d3'
export color12='#37e5fc'

# megenta
export color5='#2684af'
export color13='#37befc'

# cyan
export color6='#0dcdcd'
export color14='#14ffff'

# white
export color7='dddddd'
export color15='ffffff'


powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# NUM_UPDATES=$(yay -Qqu | wc -l)
# NUM_UPDATES_AUR=$(yay -Qqmu | wc -l)
	
figlet -f slant "kylelovestoad" 
neofetch --color_blocks off

# if [ $NUM_UPDATES = 0 ]
# then
#	echo "You have no package updates" | lolcat
# else
#	echo "You have $NUM_UPDATES packages that need to be updated, $NUM_UPDATES_AUR of which are from the AUR" | lolcat
# fi
