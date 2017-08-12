set -o nounset                              # Treat unset variables as an error

git clone https://github.com/ocaml/opam $HOME/.source/opam
cd $HOME/.source/opam
./configure --prefix=$HOME/.bin/opam
make lib-ext
make -j 4
make install
