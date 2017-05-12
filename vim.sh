git clone git@github.com:vim/vim $COMPILE_DIRECTION/vim
cd $COMPILE_DIRECTORY/vim

./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --enable-python3interp=yes \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=$INSTALL_COMPILED_DIRECTORY/vim
make -j 8
make install
