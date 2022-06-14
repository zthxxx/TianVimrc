# for antigen bundle init pipepine
# https://github.com/zsh-users/antigen/blob/v2.2.3/bin/antigen.zsh#L518

(
  if [[ ! -e ~/.vim/bundle/nerdtree ]]; then
    echo '+ install vim plugins'

    # bash strict mode (https://gist.github.com/mohanpedala/1e2ff5661761d3abd0385e8223e16425)
    set -ex;

    local timestamp=`date +"%Y-%m-%dT%H:%M:%S"`
    mkdir -p ~/.vim/autoload ~/.vim/bundle

    if [[ -e ~/.vimrc ]]; then
      cp -f ~/.vimrc ~/.vimrc.bak.${timestamp}
    fi
    curl -SL# git.io/tvimrc -o ~/.vimrc

    if [[ ! -e ~/.vimpkg ]]; then
      curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
    fi
    
    curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
    
    export PATH=$PATH:$HOME/.vimpkg/bin
    ~/.vimpkg/bin/apt-vim install -y https://github.com/scrooloose/nerdtree.git
  fi
)
