/*
 javascript interface for ezsift
*/
#include <emscripten.h>
#include "ezsift.h"

//	returns number of features found
EMSCRIPTEN_KEEPALIVE
extern "C" int ExtractFeaturesFromRgba(float* Outputxs,float* Outputys,int OutputMax,int ImageWidth,int ImageHeight,uint8_t* ImageLuma)
{
	auto ExtractDescriptor = false;
	ezsift::Image<unsigned char> Image( ImageWidth, ImageHeight, ImageLuma );
	std::list<ezsift::SiftKeypoint> Keypoints;
	ezsift::sift_cpu( Image, Keypoints, ExtractDescriptor );

	return Keypoints.size();
}



