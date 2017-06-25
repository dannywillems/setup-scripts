set -o nounset                              # Treat unset variables as an error

git clone https://github.com/ocaml/opam $HOME/.compile/opam
cd $HOME/.compile/opam
./configure --prefix=$HOME/.install-compiled/opam
make lib-ext
make -j 4
make install
