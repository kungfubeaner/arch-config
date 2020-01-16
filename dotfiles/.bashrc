#!/bin/bash
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

alias aur=yay
alias vimode='set -o vi && bind "set show-mode-in-prompt on"'
alias emacsmode='set -o emacs && bind "set show-mode-in-prompt off"'
alias getip='echo -e "\n  $(curl -s http://checkip.dyndns.org | sed "s/<\/*[^>]*>//g" | grep -o "IP Address:.*")\n"'
alias weather2='echo -e "\n$(curl -s wttr.in/{Houston,Hesperia}?format="%20%20%l,%20%c%20%20%C,%20%t,%20%w")\n"'
alias gold='curl -sL https://kitco.com | sed -n "s/.*<span id=\"AU-low\">\(.*\)<\/span> \/ <span id=\"AU-high\">\(.*\)<\/span><\/td>/\n  Gold Price:\n  low:\1 high:\2\n/p"'

moon() { echo; curl -s wttr.in/Moon@$1 | head -n 24; }
weather() { echo; curl -s wttr.in/$1 | sed "s/Follow.*//g"; }
weather3() { echo -e "\n$(curl -s wttr.in/{$(echo $@ | sed 's/ /%20/g')}?format="%13%20%20%l,%20%c%20%20%C,%20%t,%20%w")\n"; }
clbin() { cat $1 | curl -F 'clbin=<-' https://clbin.com; }
ipinfo() { echo -e "$(ping -4 -c 1 $1 2> /dev/null | curl -s ipinfo.io/$(awk 'NR==1 { print substr($3,2,length($3)-2) }') | sed "s/[{},\"]//g" | grep -v missingauth)\n"; }
github() { if [[ -z "$1" ]]; then r=kungfubeaner; else r=$1; fi; curl -s https://api.github.com/users/$r/repos?per_page=1000 | jq .[].git_url | sed 's/git:/https:/g;s/\"//g'; }
gitclone() { if [[ -z "$1" ]]; then r=kungfubeaner; else r=$1; fi; dialog --stdout --no-tags --menu "Choose: " 30 80 30 $(curl -s https://api.github.com/users/$r/repos?per_page=1000 | jq .[].git_url | sed 's/git:/https:/g;s/\"//g' | sed -n 's/\(.*\)/\1 \1/p') | xargs git clone; }

PS1='[\[\033[01;32m\]\u@\h\[\033[0m\]:\[\033[00;36m\]\w\[\033[00m\]]\$ '

#source /usr/share/doc/pkgfile/command-not-found.bash
#xmodmap -e "keycode 135 = Super_R"

export PYTHONDONTWRITEBYTECODE=X
export PATH=$PATH:.:~/.local/bin:~/scripts
export LS_COLORS=$LS_COLORS'di=0;36:ow=0;35:'
export EDITOR=vim
