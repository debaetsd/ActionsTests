#include <iostream>
#include <boost/thread.hpp>

#include <ImfRgbaFile.h>

int main(int argc, char** argv)
{
	std::cout << "Testing Boost " << boost::thread::hardware_concurrency() << std::endl;

	std::cout << "Testing OpenEXR";
	Imf::RgbaInputFile file(argv[1]);
	Imath::Box2i dw = file.dataWindow();
	int width = dw.max.x - dw.min.x + 1;
	int height = dw.max.y - dw.min.y + 1;
	std::cout << width << "x" << height << std::endl;

	return 0;
}