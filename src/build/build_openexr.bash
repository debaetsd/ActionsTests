
git_src="https://github.com/AcademySoftwareFoundation/openexr.git"
src=$BUILD_DIR/openexr
build_dir=$src/cmBuild

git clone --depth 1 --branch $OPENEXR_VERSION $git_src $src

mkdir $build_dir

pushd $build_dir

cmake -G "$CMAKE_COMPILER" -A "$CMAKE_ARCH" ..  -DCMAKE_DEBUG_POSTFIX=d -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" -DCMAKE_PREFIX_PATH="$INSTALL_DIR"

cmake --build . --target install -j 8 --config $BUILD_TYPE

popd