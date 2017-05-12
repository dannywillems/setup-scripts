mkdir -p $HOME/.compile/
mkdir -p $HOME/.install-compiled/tmux

sudo apt-get install libevent-dev pkg-config autoconf
git clone https://github.com/tmux/tmux $HOME/.compile/tmux
cd $HOME/.compile/tmux/
sh autogen.sh
./configure --prefix=$HOME/.install-compiled/tmux
make
make install
