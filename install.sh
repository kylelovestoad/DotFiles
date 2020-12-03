#!/bin/bash

#TODO make script install paru
packages=("bspwm" "dunst" "kitty" "neovim" "picom" "polybar" "pulseaudio" "pulseaudio-bluetooth" "sxhkd" "zsh") 

sudo pacman -S ${packages[*]}
