#!/bin/bash -
#===============================================================================
#
#          FILE: emacs.sh
#
#         USAGE: ./emacs.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 05/17/2017 05:53
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

mkdir -p $HOME/.source/
mkdir -p $HOME/.bin
sudo apt-get build-dep emacs24
git clone https://github.com/emacs-mirror/emacs $HOME/.source/emacs
cd $HOME/.source/emacs
./configure --prefix=$HOME/.bin/emacs
make -j 8
make install
