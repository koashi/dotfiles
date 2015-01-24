# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# PS1
if [ -f ~/.git-prompt.sh ]; then
    # Add git repository status
    . ~/.git-prompt.sh
    PS1='\[\033[36m\][\u@\H:\w$(__git_ps1 " (%s)")]\[\033[0m\]\n\[\033[36m\]\$\[\033[0m\] '
else
    PS1='\[\033[36m\][\u@\H:\w]\[\033[0m\]\n\[\033[36m\]\$\[\033[0m\] '
fi

# User specific aliases and functions
# Alias
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
