# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
# PS1
if [ -f ~/.git-prompt.sh ]; then
    # Add git repository status
    . ~/.git-prompt.sh
    PS1='\[\033[36m\][\u@\H:\w$(__git_ps1 " (%s)")]\[\033[0m\]\n\[\033[36m\]\$\[\033[0m\] '
else
    PS1='\[\033[36m\][\u@\H:\w]\[\033[0m\]\n\[\033[36m\]\$\[\033[0m\] '
fi

# Add git completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Alias
# ls
if [ $(uname) = "Darwin" ]; then
    # Mac
    alias ls='ls -G'
    alias ll='ls -lG'
    alias la='ls -laG'
else
    alias ls='ls --color'
    alias ll='ls -l --color'
    alias la='ls -la --color'
fi
