os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . ~/dotfiles/linux_aliases
elif [[ "$os" == 'Darwin' ]]; then
  . ~/dotfiles/mac_aliases
  export CLICOLOR=1
  
  #git completion
  COMPLETION="/usr/local/etc/bash_completion.d" 
  if [ ! -L $COMPLETION ]; then
    ln -fs "/usr/local/Library/Contributions/brew_bash_completion.sh" $COMPLETION
  fi

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

#export
export PATH=$PATH:"~/bin/"

#random quote
fortune

#nailgun server
export VIMCLOJURE_SERVER_JAR="$HOME/bin/server-2.3.3.jar"

#increase the history size
export HISTSIZE=2000
export HISTFILESIZE=2000
