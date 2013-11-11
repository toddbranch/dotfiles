#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1="[\u@\h${NC} \W]\$ "

mkcd() {
    mkdir -p $1
    cd $1
}

PATH+=":/home/toddbranch/.gem/ruby/2.0.0/bin"

alias ..='cd ..'
alias ..2='cd ..; cd ..;'


alias la='ls -lahF'
alias ls='ls -lahF'

function sprunge()
{
    $@ | curl -F 'sprunge=<-' http://sprunge.us;
}

function cl()
{
    cd "$@" && la;
}

function so()
{
    source ~/.bashrc;
}

set -o vi

alias "E"="exit"
alias "grep"="egrep"

export DISPLAY=:0

function enMouse() {
    xinput set-int-prop 10 "Device Enabled" 8 1
}

function disMouse() {
    xinput set-int-prop 10 "Device Enabled" 8 0
}

disMouse

function homeDisplay() {
    xrandr --output LVDS1 --auto
    xrandr --output VGA1 --auto --left-of LVDS1
}

function workDisplay() {
    xrandr --output LVDS1 --auto
    xrandr --output VGA1 --auto --right-of LVDS1
}

msp430_assembly()
{
    git clone ~/msp430-assembly-project/ ./$1
}

alias "notes"="cd ~/courses/site/ECE382/notes"
alias "labs"="cd ~/courses/site/ECE382/labs"
alias "ECE382"="cd ~/courses/site/ECE382"
alias "syncECE382"="rsync -r ~/courses root@oceanWeddingHost:"
alias "build"="blah=$(pwd); cd ~/courses; node build.js; cd $blah"

export HISTCONTROL=ignorespace
