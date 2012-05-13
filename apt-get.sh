#!/bin/bash
sudo apt-get install git
sudo apt-get install vim
sudo apt-get install ack-grep
sudo apt-get install curl

#installing rvm
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm reload 
rvm install 1.9.3
rvm reload
rvm use 1.9.3
#general requirement for dev
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison

source ~/.rvm/scripts/rvm
