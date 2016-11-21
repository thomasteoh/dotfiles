#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# vim launches nvim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
