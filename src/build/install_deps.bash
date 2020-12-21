echo RUNNING install_deps.bash

export INSTALL_DIR="$PWD/_install_deps/"
export BUILD_DIR="$PWD/_build_deps/"

if [[ ! -e $INSTALL_DIR ]] ; then
    mkdir -p $INSTALL_DIR
fi
if [[ ! -e $BUILD_DIR ]] ; then
    mkdir -p $BUILD_DIR
fi

source src/build/build_zlib.bash
export PATH="$PATH:$INSTALL_DIR/bin:$INSTALL_DIR/lib"

source src/build/build_openexr.bash
export PATH="$PATH;$INSTALL_DIR/bin;$INSTALL_DIR/lib"

export PATH="$PATH:$BOOST_ROOT/lib64-msvc-14.2:$BOOST_ROOT/lib"
