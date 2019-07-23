#install basic toolset
os=`uname`

ln -sF `pwd` ~/dotfiles

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
#zsh config
if [ ! -f ~/.zshrc ];
then
  ln -s ~/dotfiles/.zshrc ~/.zshrc
fi

ln -sF ~/dotfiles/.vim ~/.vim
ln -sF ~/dotfiles/bundle ~/.vim/bundle

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

git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim

#installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp .mackup.cfg ~/.mackup.cfg
mackup restore
vim +PluginInstall +qall


