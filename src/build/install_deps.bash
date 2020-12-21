echo RUNNING install_deps.bash

INSTALL_DIR="$PWD/_install/"
BUILD_DIR="$PWD/_build/"

if [[ ! -e $INSTALL_DIR ]] ; then
    mkdir -p $INSTALL_DIR
fi
if [[ ! -e $BUILD_DIR ]] ; then
    mkdir -p $BUILD_DIR
fi

source src/build/build_zlib.bash
source src/build/build_openexr.bash