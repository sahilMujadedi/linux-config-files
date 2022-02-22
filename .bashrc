#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -la'
alias update='sudo pacman -Syu'
alias arstdhneio='echo "pretty bored arent you..."'

PS1='\n[\u@\h \W]\n\$ > '

