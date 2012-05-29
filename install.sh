#install basic toolset
os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . ~/dotfiles/apt-get.sh
elif [[ "$os" == 'Darwin' ]]; then
  . ~/dotfiles/brew.sh
fi

#vim config file
if [ ! -f ~/.vimrc ];
then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ];
then
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

#git config file
if [ ! -f ~/.gitconfig ];
then
  ln -s ~/dotfiles/.gitconfig ~/.gitconfig
fi

#git update submodules
git submodule init
git submodule update

#general bin
if [ ! -d ~/bin ];
then
  ln -s ~/dotfiles/bin/ ~/bin
else
  cp -r ~/dotfiles/bin/ ~/bin
fi

#linking my aliases, configs, functions to my bash_profile
echo ". ~/dotfiles/unix_bash.sh" >> ~/.bash_profile
. ~/.bash_profile

echo '#now remember to install command t'

