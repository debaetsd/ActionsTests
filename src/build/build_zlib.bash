
git_src="https://github.com/madler/zlib.git"
src=$BUILD_DIR/zlib
build_dir=$src/cmBuild

git clone --depth 1 --branch $ZLIB_VERSION $git_src $src

mkdir $build_dir

pushd $build_dir

cmake -G "$CMAKE_COMPILER" -A "$CMAKE_ARCH" ..  -DCMAKE_DEBUG_POSTFIX=d -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" -DCMAKE_PREFIX_PATH="$INSTALL_DIR"

cmake --build . --target install -j 8 --config $BUILD_TYPE

popd