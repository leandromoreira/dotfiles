#!/bin/bash
sufix=".old99l"

create_file_backup(){
  mv $1$sufix $1
}

create_dir_backup(){
  mv $1$sufix $1
}

if [ -f ~/.vimrc$sufix ];
then
  rm ~/.vimrc
  create_file_backup ~/.vimrc
fi

if [ -d ~/.vim$sufix ];
then
  rm -rf ~/.vim
  create_dir_backup ~/.vim
fi
echo "Done!"
