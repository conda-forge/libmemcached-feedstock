set -eux

cd $(cygpath -u $SRC_DIR)
./configure \
    --prefix=$(cygpath -u $PREFIX) \
    --without-docs
make
make install
