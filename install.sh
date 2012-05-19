#vim config file
if [ ! -f ~/.vimrc ];
then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ];
then
  ln -s ~/dotfiles/.vim ~/.vim
  mkdir ~/dotfiles/.vim/tmp
  mkdir ~/dotfiles/.vim/backup
fi

#git config file
if [ ! -f ~/.gitconfig ];
then
  ln -s ~/dotfiles/.gitconfig ~/.gitconfig
fi

#general bin
if [ ! -d ~/bin ];
then
  ln -s ~/dotfiles/bin/ ~/bin
else
  cp -r ~/dotfiles/bin/ ~/bin
fi

export PATH=$PATH:"~/bin/"

#linking my aliases, configs, functions to my bash_profile
if [ ! -f ~/.bash_profile ];
then
  touch ~/.bash_profile
fi

echo "source ~/dotfiles/unix_bash.sh" >> ~/.bash_profile
. ~/.bash_profile

