os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . ~/dotfiles/linux_aliases
elif [[ "$os" == 'Darwin' ]]; then
  . ~/dotfiles/mac_aliases
  export CLICOLOR=1
  #git completion
  ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

fi

. ~/dotfiles/common_aliases

#change shell prompt to show git info
. ~/dotfiles/dev-bash-git-ps1/bash_git_ps1.sh

take()
{
  mkdir $1
  cd $1
}

#random quote
fortune

