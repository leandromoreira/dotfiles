#!/bin/bash

#java from oracle
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-jdk7-installer

#general tools
sudo apt-get install -y git subversion
sudo apt-get install -y vim-nox exuberant-ctags
sudo apt-get install -y tmux
sudo apt-get install -y zsh
sudo apt-get install -y ack-grep xclip curl build-essential openssl libpq-dev libcurl4-openssl-dev
sudo apt-get install -y libreadline6 libreadline6-dev curl zlib1g zlib1g-dev
sudo apt-get install -y libssl-dev libyaml-dev libsqlite3-dev sqlite3
sudo apt-get install -y libxml2-dev libxslt-dev autoconf libc6-dev fortune
sudo apt-get install -y ncurses-dev automake libtool bison gyp tree htop
sudo apt-get install -y apache2-utils httperf
sudo apt-get install -y rhino
sudo apt-get install -y nodejs

