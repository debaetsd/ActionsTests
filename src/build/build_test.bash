echo RUNNING build_test.bash

mkdir _cmBuild

PROJ_INSTALL_DIR="$PWD/_install/"

pushd _cmBuild

echo "$INSTALL_DIR"

cmake -G "$CMAKE_COMPILER" -A "$CMAKE_ARCH" ../src  -DCMAKE_DEBUG_POSTFIX=d -DCMAKE_INSTALL_PREFIX="$PROJ_INSTALL_DIR" -DCMAKE_PREFIX_PATH="$INSTALL_DIR"

cmake --build . --target install -j 8 --config $BUILD_TYPE


echo $PATH
ctest -C $BUILD_TYPE -E broken --force-new-ctest-process --output-on-failure --verbose

popd

