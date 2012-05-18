if [ ! -f ~/.vimrc ];
then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -f ~/.gitconfig ];
then
  ln -s ~/dotfiles/.gitconfig ~/.gitconfig
fi

if [ ! -d ~/.vim ];
then
  ln -s ~/dotfiles/.vim ~/.vim
  mkdir ~/dotfiles/.vim/tmp
  mkdir ~/dotfiles/.vim/backup
fi

if [ ! -d ~/bin ];
then
  ln -s ~/dotfiles/bin/ ~/bin
else
  cp -r ~/dotfiles/bin/ ~/bin
fi

export PATH=$PATH:"~/bin/"

if [ ! -f ~/.bash_profile ];
then
  touch ~/.bash_profile
fi

echo "source ~/dotfiles/unix_bash" >> ~/.bash_profile
source ~/.bash_profile

export CLICOLOR=1

