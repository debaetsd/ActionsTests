

export CMAKE_COMPILER="Visual Studio 16 2019"
export CMAKE_ARCH="x64"
export BUILD_TYPE="Release"

source src/build/setup_ci.bash
source src/build/install_deps.bash
source src/build/build_test.bash

