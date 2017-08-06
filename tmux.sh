mkdir -p $HOME/.source
mkdir -p $HOME/.bin

sudo apt-get install libevent-dev pkg-config autoconf
git clone https://github.com/tmux/tmux $HOME/.source/tmux
cd $HOME/.source/tmux/
sh autogen.sh
./configure --prefix=$HOME/.bin/tmux
make
make install
