#!/bin/bash
export GIT_SSL_NO_VERIFY=true
sufix=".old99l"

create_file_backup(){
  mv $1 $1$sufix
}

create_dir_backup(){
  mv $1 $1$sufix
}
if [ ! -f ~/.vimrc$sufix ];
then
  if [ ! -f ~/.vimrc ];
  then
    ln -s ~/dotfiles/.vimrc ~/.vimrc
  else
    create_file_backup ~/.vimrc
    ln -s ~/dotfiles/.vimrc ~/.vimrc
  fi
fi

if [ ! -d ~/.vim$sufix ];
then
  if [ ! -d ~/.vim ];
  then
    ln -s ~/dotfiles/.vim ~/.vim
  else
    create_dir_backup ~/.vim
    ln -s ~/dotfiles/.vim ~/.vim
  fi
fi

if [ ! -d ~/dotfiles/.vim/tmp ];
then
  mkdir ~/dotfiles/.vim/tmp
fi

if [ ! -d ~/dotfiles/.vim/backup ];
then
  mkdir ~/dotfiles/.vim/backup
fi

os=`uname`

if [[ "$os" == 'Linux' ]]; then
  source ~/dotfiles/linux_aliases
elif [[ "$os" == 'Darwin' ]]; then
  source ~/dotfiles/mac_aliases
  export CLICOLOR=1
fi
source ~/dotfiles/common_aliases

cd ~/dotfiles
git submodule init
git submodule update

source ~/dotfiles/dev-bash-git-ps1/bash_git_ps1.sh
