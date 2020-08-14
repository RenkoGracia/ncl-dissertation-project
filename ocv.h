#pragma once
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <iostream>
#include <string>

using namespace cv;
Mat imgTranslate(Mat& matSrc, int xOffset, int yOffset)
{
	// 判断是否改变图像大小,并设定被复制ROI
	int nRows = matSrc.rows;
	int nCols = matSrc.cols;
	int nRowsRet = 0;
	int nColsRet = 0;
	Rect rectSrc;
	Rect rectRet;
	
	
		nRowsRet = nRows + abs(yOffset);
		nColsRet = nCols + abs(xOffset);
		rectSrc.x = 0;
		rectSrc.y = 0;
		rectSrc.width = nCols;
		rectSrc.height = nRows;
	
	// 修正输出的ROI
	if (xOffset >= 0)
	{
		rectRet.x = xOffset;
	}
	else
	{
		rectRet.x = 0;
	}
	if (yOffset >= 0)
	{
		rectRet.y = yOffset;
	}
	else
	{
		rectRet.y = 0;
	}
	rectRet.width = rectSrc.width;
	rectRet.height = rectSrc.height;
	// 复制图像
	Mat matRet(nRowsRet, nColsRet, matSrc.type(), Scalar(0));
	matSrc(rectSrc).copyTo(matRet(rectRet));
	return matRet;
}