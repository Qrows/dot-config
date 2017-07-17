#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias
alias ls='ls --color=auto'

# Pront PS config and color

PS1='[\u@\h \W]\$ '
if [[ "$TERM" =~ 256color ]]; then
    PS1='\[\e[1;32m\][\u@\h]\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
fi
