#include <iostream>
#include <opencv2\opencv.hpp>
#include "Detect.h"

int main()
{
    int isFaceDetect;

    // 测试图片中的人脸
    isFaceDetect = DetectFaceEyes();
    return 0;
}
