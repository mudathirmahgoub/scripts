export CC=/usr/bin/clang-15
export CXX=/usr/bin/clang++-15
./configure.sh debug --auto-download --java-bindings --prefix=build/install --tracing --ninja --docs --auto-download debug --asan
