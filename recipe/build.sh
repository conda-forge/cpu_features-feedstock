set -xe
mkdir build
cd build
cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -DCMAKE_INSTALL_PREFIX="${PREFIX}" -DCMAKE_INSTALL_LIBDIR="lib" -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON ..
make -j
make test
make install
