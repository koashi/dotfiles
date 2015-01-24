#!/bin/sh

# install.sh

# Make bin dir
if [ ! -d ~/bin ]; then
    mkdir -p ~/bin
fi

# Symbolic link
ln -s ~/git/dotfiles/bin/git_diff_wrapper ~/bin

if [ -x $(which curl) ]; then
    # Get git-prompt
    curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

    # Get git-completion
    curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

    # Install NeoBundle
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi
