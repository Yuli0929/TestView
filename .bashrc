# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e[1;36m\][\[\e[1;33m\]\u@\[\e[1;35m\]\h:\[\e[1;32m\]\w\[\e[1;36m\]]\$\[\e[0;37m\] '
