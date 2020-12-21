cmake_minimum_required(VERSION 3.10)			 
project(ActionTests)

enable_testing()

add_executable(Test01 main.cpp)

find_package(Boost 1.72 REQUIRED COMPONENTS thread)
add_definitions (-DBOOST_ALL_NO_LIB=1)
target_link_libraries(Test01 Boost::thread)

find_package(OpenEXR REQUIRED)
target_link_libraries(Test01 OpenEXR::IlmImf)

install(TARGETS Test01 DESTINATION ${CMAKE_INSTALL_BINDIR})

add_test (unit_Test01 ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Test01 ${CMAKE_CURRENT_SOURCE_DIR}/../tests/test.exr)
