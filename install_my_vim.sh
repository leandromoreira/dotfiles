sufix=".old99l"

create_file_backup(){
  mv $1 $1$sufix
}

create_dir_backup(){
  mv -r $1 $1$sufix
}

if [ ! -f ~/.vimrc ];
then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
else
  create_file_backup ~/.vimrc
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ];
then
  ln -s ~/dotfiles/.vim ~/.vim
else
  create_dir_backup ~/.vim
  ln -s ~/dotfiles/.vim ~/.vim
fi

if [ ! -d ~/dotfiles/.vim/tmp ];
then
  mkdir ~/dotfiles/.vim/tmp
fi

if [ ! -d ~/dotfiles/.vim/backup ];
then
  mkdir ~/dotfiles/.vim/backup
fi

cd ~/dotfiles
git submodule init
git submodule update

os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . ~/dotfiles/linux_aliases
elif [[ "$os" == 'Darwin' ]]; then
  . ~/dotfiles/mac_aliases
  export CLICOLOR=1
fi
. ~/dotfiles/common_aliases
. ~/dotfiles/dev-bash-git-ps1/bash_git_ps1.sh
