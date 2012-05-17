#!/bin/bash
#make symbolic links for .files and folders

if [ ! -f ~/.vimrc ];
then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ];
then
  ln -s ~/dotfiles/.vim ~/.vim
fi

if [ ! -d ~/bin ];
then
  mkdir ~/bin
fi

cp -r ~/dotfiles/bin/ ~/bin
  
#config git for me
git config --global alias.st status
git config --global alias.l log
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch
git config --global user.name "Leandro Moreira"
git config --global user.email leandro.ribeiro.moreira@gmail.com 
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
git config --global core.editor "vim"
