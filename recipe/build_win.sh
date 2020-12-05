set -eux

./configure \
    --prefix=$PREFIX \
    --without-docs

patch_libtool

make
make install
