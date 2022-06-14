#!/usr/bin/env bash

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -SL# git.io/tvimrc -o ~/.vimrc
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
~/.vimpkg/bin/apt-vim install -y https://github.com/scrooloose/nerdtree.git
