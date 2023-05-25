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

# install source code pro too.
mkdir -p $HOME/.source/
mkdir -p $HOME/.bin
sudo apt-get build-dep emacs24
sudo apt-get install fonts-powerline
git clone https://github.com/emacs-mirror/emacs $HOME/.source/emacs
cd $HOME/.source/emacs
./configure --prefix=$HOME/.bin/emacs \
    --with-native-compilation=aot \
    --with-tree-sitter \
    --with-gif \
    --with-png \
    --with-jpeg \
    --with-rsvg \
    --with-tiff \
    --with-xft \
    --with-modules \
    --with-xml2 \
    --with-pgtk \
    --with-imagemagick \
    --with-dbus \
    --with-xpm \
    --with-x-toolkit=gtk3
make -j 32
make install
