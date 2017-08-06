#!/bin/bash -
#===============================================================================
#
#          FILE: git.sh
#
#         USAGE: ./git.sh
#
#   DESCRIPTION: Install git from source
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Danny Willems
#  ORGANIZATION:
#       CREATED: 05/21/2017 15:37
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

mkdir -p $HOME/.compile/
mkdir -p $HOME/.bin

sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \
  libz-dev libssl-dev

git clone https://github.com/git/git $HOME/.source/git
cd $HOME/.source/git/
./configure --prefix=$HOME/.bin/git
make
make install
