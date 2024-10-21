export CC=/usr/bin/clang-15
export CXX=/usr/bin/clang++-15
mkdir build
cd build
cmake -G Ninja -DCMAKE_INSTALL_PREFIX:PATH=install ..