#!/bin/sh

# install.sh

# Get git-prompt
if [ -x $(which curl) ]; then
    curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

# Install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
