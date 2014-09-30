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

function enMouse() {
    xinput set-int-prop 12 "Device Enabled" 8 1
}

function disMouse() {
    xinput set-int-prop 12 "Device Enabled" 8 0
}

# disMouse

function homeDisplay() {
    xrandr --output LVDS1 --auto
    xrandr --output VGA1 --auto --left-of LVDS1
}

function workDisplay() {
    xrandr --output eDP1 --auto
    xrandr --output HDMI2 --auto --right-of eDP1
}

msp430_assembly()
{
    git clone ~/msp430-assembly-project/ ./$1
}

alias "notes"="cd ~/courses/site/ECE382/notes"
alias "labs"="cd ~/courses/site/ECE382/labs"
alias "ECE382"="cd ~/courses/site/ECE382"
alias "syncECE382"="rsync -r ~/courses root@oceanWeddingHost:"

alias "build2"="cd ~/courses/; node build.js ./site/ECE382 ./site/ECE382/template.ejs ECE382"
alias "build3"="cd ~/courses/; node build.js ./site/ECE383 ./site/ECE383/template.ejs ECE383"
alias "build4"=""
alias "buildS"="cd ~/courses/; node build.js ./site/SummerSeminar ./site/SummerSeminar/template.ejs SummerSeminar"

export HISTCONTROL=ignorespace

alias "c"="chromium"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

alias zf=/home/toddbranch/lib/ZendFramework-1.12.9/bin/zf.sh

export EDITOR=vim

alias serve="python -m http.server"
