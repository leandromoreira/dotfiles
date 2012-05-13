#!/bin/bash
sudo apt-get install git
sudo apt-get install vim-nox
sudo apt-get install ack-grep xclip curl build-essential openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-jdk7-installer
sudo apt-get install rhino

#installing rvm
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm reload 
rvm pkg install zlib
rvm install 1.9.3
rvm reload
rvm use 1.9.3
source ~/.rvm/scripts/rvm

