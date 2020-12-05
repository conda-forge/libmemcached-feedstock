set -eux

export CC=clang-cl.exe
export CXX=clang-cl.exe

cd $(cygpath -u $SRC_DIR)

./configure \
    --prefix=$(cygpath -u $PREFIX) \
    --without-docs
make
make install
