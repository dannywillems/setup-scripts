mkdir -p $HOME/.source/vim
mkdir -p $HOME/.bin/vim

git clone https://github.com/vim/vim $HOME/.source/vim
cd $HOME/.source/vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --enable-python3interp=yes \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=$HOME/.bin/vim
make -j 8
make install
