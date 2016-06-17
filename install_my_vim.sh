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
else
  ln -s ~/dotfiles/.vimrc ~/.vimrc
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
else
  ln -s ~/dotfiles/.vim ~/.vim
fi

os=`uname`

if [[ "$os" == 'Linux' ]]; then
  source ~/dotfiles/linux_aliases
elif [[ "$os" == 'Darwin' ]]; then
  source ~/dotfiles/mac_aliases
  export CLICOLOR=1
fi
source ~/dotfiles/common_aliases
