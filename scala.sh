# Install scala.

SCALA_VERSION=2.12.0
mkdir -p $HOME/.scala-$SCALA_VERSION
wget -qO- http://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xvz -C $HOME/.scala-$SCALA_VERSION
rm .scala
ln -sf ~/.scala-$SCALA_VERSION ~/.scala
