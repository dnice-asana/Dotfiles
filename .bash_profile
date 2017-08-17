# fancy ###############################################

# append to the history file, don't overwrite it
shopt -s histappend

# Add an "alert" alias for long running commands.  Use like so:
#   build giant_project && alert 'finished building' || alert 'failed building'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#######################################################
# aliases #############################################

alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias h=history
alias pybin=/~/../usr/local/bin

# Navagational aliases
alias toConfig=/~/etc/

# keeping aliases in separate file
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

#######################################################
# Bash Prompt #########################################

# for showing git branch on prompt
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# PS1 is the bash prompt
export PS1="\[\033[35m\]\u\[\033[m\]@\[\033[31m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# export PS1="\[\033[35m\]\u\[\033[m\]@\[\033[31m\]\h:\[\033[33;1m\]\w\[\033[m\]$(parse_git_branch)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#######################################################
