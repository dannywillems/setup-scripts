mkdir -p $HOME/.compile/
mkdir -p $HOME/.install-compiled/tmux

git clone https://github.com/tmux/tmux $HOME/.compile/tmux
cd $HOME/.compile/tmux/
sh autogen.sh
./configure --prefix=$HOME/.install-compiled/tmux
make -j 4
make install
