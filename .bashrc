# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# PS1
PS1='\[\033[36m\][\u@\H:\w]\[\033[0m\]\n\[\033[36m\]\$\[\033[0m\] '

# User specific aliases and functions
# Alias
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
