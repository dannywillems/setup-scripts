#!/bin/bash - 
#===============================================================================
#
#          FILE: redis.sh
# 
#         USAGE: ./redis.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/04/2017 12:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

GIT_DIR=$HOME/.compile
DIR_INSTALL=$HOME/.install-compiled/redis

git clone https://github.com/antirez/redis $GIT_DIR/redis
cd $GIT_DIR/redis
cd deps
make geohash-int hiredis jemalloc linenoise lua -j 8
cd ../
make -j cd ../
make -j 8
make PREFIX=$DIR_INSTALL install
