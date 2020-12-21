

export CMAKE_COMPILER="Visual Studio 16 2019"
export CMAKE_ARCH="x64"
export BUILD_TYPE="Release"
export BOOST_ROOT_1_72_0="C:\Code\boost_1_74_0"

source src/build/setup_ci.bash
source src/build/install_deps.bash
source src/build/build_test.bash

