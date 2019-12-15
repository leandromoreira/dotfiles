# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="steeef"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/common_aliases

take()
{
  mkdir $1
  cd $1
}

#random quote
fortune

#nailgun server
export VIMCLOJURE_SERVER_JAR="$HOME/bin/server-2.3.3.jar"

#increase the history size
export HISTSIZE=20000
export HISTFILESIZE=20000

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]]; then
    source "$HOME/.hitch_export_authors"
  fi
}
alias unhitch='hitch -u'
alias t='py.test -vs'

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
export PATH=/usr/local/share/npm/bin:$PATH

if [ `uname` = "Darwin" ]; then
  source ~/dotfiles/mac_aliases
elif [ `uname -o` = "GNU/Linux" ]; then
  source ~/dotfiles/linux_aliases
fi

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
#source <(kubectl completion zsh)
#alias k=kubectl
#complete -F __start_kubectl k
#source <(minikube completion zsh)
