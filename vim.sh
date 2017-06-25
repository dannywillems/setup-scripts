mkdir -p $HOME/.compile/vim
mkdir -p $HOME/.install-compiled/vim

git clone https://github.com/vim/vim $HOME/.compile/vim
cd $HOME/.compile/vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --enable-python3interp=yes \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=$HOME/.install-compiled/vim
make -j 8
make install
