[[ $- != *i* ]] && return

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin/core_perl:/home/toddbranch/.gem/ruby/2.0.0/bin

alias git="hub"

alias ..='cd ..'
alias ..2='cd ..; cd ..'
alias ..3='cd ..; cd ..; cd ..'

function so()
{
    source ~/.zshrc;
}

set -o vi

alias "E"="exit"

alias "grep"="egrep"

export DISPLAY=:0

trackpadId=`xinput --list | grep GlidePoint | grep -o "id=[0-9]+"| grep -o "[0-9]+"`

function enMouse() {
    xinput set-int-prop $trackpadId "Device Enabled" 8 1
}

function disMouse() {
    xinput set-int-prop $trackpadId "Device Enabled" 8 0
}

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
alias "ECE383"="cd ~/courses/site/ECE383"
alias "datasheets"="cd ~/courses/site/ECE382/datasheets"
alias "syncCourses"="rsync -r ~/courses root@oceanWeddingHost:"

alias "build2"="cd ~/courses/; node build.js ./site/ECE382 ./site/ECE382/template.ejs ECE382"
alias "build3"="cd ~/courses/; node build.js ./site/ECE383 ./site/ECE383/template.ejs ECE383"
alias "build4"=""
alias "buildS"="cd ~/courses/; node build.js ./site/SummerSeminar ./site/SummerSeminar/template.ejs SummerSeminar"

export HISTCONTROL=ignorespace

alias ls='ls -a --color=auto'

function sprunge()
{
    $@ | curl -F 'sprunge=<-' http://sprunge.us;
}

function cl()
{
    cd "$@" && la;
}

function mkcd() {
    mkdir -p $1
    cd $1
}

alias blank="xset dpms force off"

function clone-fork()
{
    git clone https://github.com/toddbranch/$@
}

function px() {
  chmod u+rx $1
}

bindkey -v
bindkey '^R' history-incremental-search-backward

alias "d"="sdcv"
