#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize
shopt -s globstar

alias ls='ls -h --color=auto'
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'

alias vimode='set -o vi && bind "set show-mode-in-prompt on"'
alias emacsmode='set -o emacs && bind "set show-mode-in-prompt off"'
alias getip='curl -s http://checkip.dyndns.org | grep -o "IP Address:.*</body>" | sed "s/<\/*[^>]*>//g"'

moon() { echo; curl -s wttr.in/Moon@$1 | head -n 24; }
weather() { echo; curl -s wttr.in/$1 | sed "s/Follow.*//g"; }
clbin() { cat $1 | curl -F 'clbin=<-' https://clbin.com; }
ipinfo() { curl -s "ipinfo.io" | sed "s/[{},\"]//g"; echo ""; }

PS1='[\[\033[01;32m\]\u@\h\[\033[0m\]:\[\033[00;36m\]\w\[\033[00m\]]\$ '

source /usr/share/doc/pkgfile/command-not-found.bash

export PYTHONDONTWRITEBYTECODE=X
export PATH=$PATH:.:~/scripts
export LS_COLORS=$LS_COLORS'di=0;36:ow=0;35:'
export EDITOR=vim
