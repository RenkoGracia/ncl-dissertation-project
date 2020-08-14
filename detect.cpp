#include <iostream>
#include "Detect.h"
#include"ocv.h"

#include <opencv2/opencv.hpp>

#include <vector>
#include <string>
#include <fstream>

using namespace std;
using namespace cv;

int DetectFaceEyes()
{
	cv::String path = "C:\\Users\\Freja He\\Documents\\cv\\Photos";//待处理图片路径
	vector<cv::String> filenames;
	

	cv::glob(path, filenames);

	for (int k = 0;k < filenames.size();++k)
	{


		Mat heying = imread(filenames[k]);


		Mat hyGray = imread(filenames[k], 0);

		equalizeHist(hyGray, hyGray);        //直方图均匀化
		double noseX = 0;
		double noseY = 0;
		double eye = 0;
		size_t chosenface = 0;
		size_t choseneye1 = 0;
		size_t choseneye2 = 0;
		size_t chosennose = 0;
		float eyescompare = 0;
		float standard = 0.5;
		float nosecompare = 0;
	

		vector<Rect> faces, eyes,nose;
		const char* faceCascadeFilename = "E:\\opencv\\opencv\\sources\\data\\haarcascades\\haarcascade_frontalface_alt.xml";
		const char* eyeCascadeFilename = "E:\\opencv\\opencv\\sources\\data\\haarcascades\\haarcascade_eye.xml";
		const char* noseCascadeFilename="E:\\opencv\\opencv\\sources\\data\\haarcascades\\haarcascade_nose.xml";
		CascadeClassifier faceCascade;
		CascadeClassifier eyeCascade;
		CascadeClassifier noseCascade;
		if (!faceCascade.load(faceCascadeFilename))
		{
			cout << "人脸检测级联分类器没找到！！" << endl;
			return -1;
		}
		if (!eyeCascade.load(eyeCascadeFilename))
		{
			cout << "眼睛检测级联分类器没找到！！" << endl;
			return -1;
		}
		if (!noseCascade.load(noseCascadeFilename))
		{
			cout << "鼻子检测级联分类器没找到！！" << endl;
			return -1;
		}
		faceCascade.detectMultiScale(hyGray, faces, 1.2, 5, 0, Size(30, 30));
		for (auto b : faces)
		{
			cout << "human face position：(x,y):" << "(" << b.x << "," << b.y << "),\
            (width,heigh):(" << b.width << "," << b.height << ")\n";
		}
		if (faces.size() > 0)
		{
			for (size_t i = 0; i < faces.size(); i++)
			{
				if (faces[i].width >= faces[chosenface].width)
				{
					chosenface = i;
				}
				// putText(heying,"xxx", cvPoint(faces[i].x, faces[i].y - 10), FONT_HERSHEY_PLAIN, 2.0, Scalar(0, 0, 255));
				//rectangle(heying, Point(faces[i].x, faces[i].y), Point(faces[i].x + faces[i].width, faces[i].y + faces[i].height), Scalar(255, 255, 0), 1, 8);
				//cout << faces[i] << endl;

				//Mat face_ = hyGray(faces[i]);    // 选定人脸的基础上定位眼睛
				//eyeCascade.detectMultiScale(face_, eyes, 1.3, 5, 0, Size(30, 30));
				//for (size_t j = 0; j < eyes.size(); j++)
				//{int radius = cvRound((eyes[j].width + eyes[j].height) * 0.07);
				//cout <<"radius"<< radius << endl;
				//
				//	Point eyeCenter(faces[i].x + eyes[j].x + eyes[j].width * 0.55, faces[i].y + eyes[j].y + eyes[j].height * 0.55);


				//	if (j < 2)
				//	{
				//		noseX = noseX + faces[i].x + eyes[j].x + eyes[j].width * 0.55;
				//		noseY = noseY + faces[i].y + eyes[j].y + eyes[j].height * 0.55;
				//		cout << "nose" << noseX <<","<< noseY << endl;
				//	}
				//	
				//	circle(heying, eyeCenter, radius, Scalar(255, 0, 255), 4, 8, 0);
				//
				//}
			}
			rectangle(heying, Point(faces[chosenface].x, faces[chosenface].y), Point(faces[chosenface].x + faces[chosenface].width, faces[chosenface].y + faces[chosenface].height), Scalar(255, 255, 0), 1, 8);
			cout << faces[chosenface] << endl;

			Mat face_ = hyGray(faces[chosenface]);    // 选定人脸的基础上定位眼睛
			eyeCascade.detectMultiScale(face_, eyes, 1.3, 5, 0, Size(30, 30));
			
			/*noseCascade.detectMultiScale(face_, nose, 1.3, 5, 0, Size(30, 30));
			if (nose.size() > 0)
			{
				for (size_t m = 0; m < nose.size(); m++)
				{
					if (nose[m].width >= nose[chosenface].width)
					{
						chosennose = m;
					}
				}
				Point noseCenter1(faces[chosenface].x + nose[chosennose].x + nose[chosennose].width * 0.55, faces[chosenface].y + nose[chosennose].y + nose[chosennose].height * 0.55);
				circle(heying, noseCenter1, cvRound((nose[chosennose].width + nose[chosennose].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
				circle(heying, Point(1000,2000), cvRound((nose[chosennose].width + nose[chosennose].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
				cout << "nose position" << nose[chosennose].x << "," << nose[chosennose].y << endl;



			}*/
			if (eyes.size() > 1)
			{
				cout << "eyes number" << eyes.size() << endl;
				for (size_t j = 0; j < eyes.size() - 1; j++)
				{
					for (size_t p = j + 1;p < eyes.size();p++)

					{
						eyescompare = (float)cvRound((eyes[j].width + eyes[j].height) * 0.07) / (float)cvRound((eyes[p].width + eyes[p].height) * 0.07);

						Point eyeCenter1(faces[chosenface].x + eyes[p].x + eyes[p].width * 0.5, faces[chosenface].y + eyes[p].y + eyes[p].height * 0.5);
						circle(heying, eyeCenter1, cvRound((eyes[p].width + eyes[p].height) * 0.07), Scalar(0, 255, 255), 4, 8, 0);
						

						cout << cvRound((eyes[j].width + eyes[j].height) * 0.07) << "," << cvRound((eyes[p].width + eyes[p].height) * 0.07) << "," << eyescompare << endl;
						if (abs(eyescompare - 1.0) < standard)

						{
							standard = abs(eyescompare - 1.0);

							choseneye1 = j;
							choseneye2 = p;
							cout << "chosen" << choseneye1 << "," << choseneye2 << endl;
						}

					}

				}
				if (choseneye1 == 0 && choseneye2 == 0)
				{
					cout << "no eyes match" << endl;
					noseCascade.detectMultiScale(face_, nose, 1.3, 5, 0, Size(30, 30));
					if (nose.size() > 0)
					{
						for (size_t m = 0; m < nose.size(); m++)
						{
							if (nose[m].width >= nose[chosenface].width)
							{
								chosennose = m;
							}
						}
						for (size_t n = 0;n < eyes.size();n++)
						{
							nosecompare = abs(((float)nose[chosennose].y - (float)eyes[n].y) / ((float)nose[chosennose].x - (float)eyes[n].x));
							if (abs(nosecompare - 1.25) < standard)

							{
								standard = abs(eyescompare - 1.25);
								choseneye1 = n;
								cout << "chosen" << choseneye1 << endl;
							}
						}

					}


					Point eyeCenter1(faces[chosenface].x + eyes[choseneye1].x + eyes[choseneye1].width * 0.5, faces[chosenface].y + eyes[choseneye1].y + eyes[choseneye1].height * 0.5);


					noseX = faces[chosenface].x + nose[chosennose].x + nose[chosennose].width * 0.5;
					noseY = faces[chosenface].y + eyes[choseneye1].y + eyes[choseneye1].height * 0.5;

					eye = abs(2 * eyes[choseneye1].x + eyes[choseneye1].width - 2 * nose[chosennose].x - nose[chosennose].width);

					circle(heying, eyeCenter1, cvRound((eyes[choseneye1].width + eyes[choseneye1].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);

				}
				Point eyeCenter1(faces[chosenface].x+eyes[choseneye1].x + eyes[choseneye1].width * 0.5, faces[chosenface].y+eyes[choseneye1].y + eyes[choseneye1].height * 0.5);
				Point eyeCenter2(faces[chosenface].x+eyes[choseneye2].x + eyes[choseneye2].width * 0.5, faces[chosenface].y+eyes[choseneye2].y + eyes[choseneye2].height * 0.5);

				noseX = (faces[chosenface].x+eyes[choseneye1].x + eyes[choseneye1].width * 0.5 + faces[chosenface].x+eyes[choseneye2].x + eyes[choseneye2].width * 0.5) * 0.5;
				noseY = (faces[chosenface].y+eyes[choseneye1].y + eyes[choseneye1].height * 0.5 + faces[chosenface].y+eyes[choseneye1].y + eyes[choseneye1].height * 0.5) * 0.5;

				eye = abs(eyes[choseneye1].x + eyes[choseneye1].width * 0.5 - eyes[choseneye2].x - eyes[choseneye2].width * 0.5);

				circle(heying, eyeCenter1, cvRound((eyes[choseneye1].width + eyes[choseneye1].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
				circle(heying, eyeCenter2, cvRound((eyes[choseneye2].width + eyes[choseneye2].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
			}

			if (eyes.size() < 2)
			{
				cout << "detecting eyes" << endl;
				eyeCascade.detectMultiScale(hyGray, eyes, 1.3, 5, 0, Size(30, 30));
				if (eyes.size() > 1)
				{
					cout << "eyes number" << eyes.size() << endl;
					for (size_t j = 0; j < eyes.size() - 1; j++)
					{
						for (size_t m = j + 1;m < eyes.size();m++)

						{
							eyescompare = (float)cvRound((eyes[j].width + eyes[j].height) * 0.07) / (float)cvRound((eyes[m].width + eyes[m].height) * 0.07);

							cout << cvRound((eyes[j].width + eyes[j].height) * 0.07) << "," << cvRound((eyes[m].width + eyes[m].height) * 0.07) << "," << eyescompare << endl;
							if (abs(eyescompare - 1.0) < standard)

							{
								standard = abs(eyescompare - 1.0);

								choseneye1 = j;
								choseneye2 = m;
								cout << "chosen" << choseneye1 << "," << choseneye2 << endl;
							}

						}

					}

					Point eyeCenter1(eyes[choseneye1].x + eyes[choseneye1].width * 0.5, eyes[choseneye1].y + eyes[choseneye1].height * 0.5);
					Point eyeCenter2(eyes[choseneye2].x + eyes[choseneye2].width * 0.5, eyes[choseneye2].y + eyes[choseneye2].height * 0.5);

					noseX = (eyes[choseneye1].x + eyes[choseneye1].width * 0.5 + eyes[choseneye2].x + eyes[choseneye2].width * 0.5) * 0.5;
					noseY = (eyes[choseneye1].y + eyes[choseneye1].height * 0.5 + eyes[choseneye1].y + eyes[choseneye1].height * 0.5) * 0.5;
					
					eye = abs(eyes[choseneye1].x + eyes[choseneye1].width * 0.5 - eyes[choseneye2].x - eyes[choseneye2].width * 0.5);

					circle(heying, eyeCenter1, cvRound((eyes[choseneye1].width + eyes[choseneye1].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
					circle(heying, eyeCenter2, cvRound((eyes[choseneye2].width + eyes[choseneye2].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
				}
			}
		}
		if (faces.size() == 0)
		{
			cout << "no face found" << endl;
			eyeCascade.detectMultiScale(hyGray, eyes, 1.3, 5, 0, Size(30, 30));
			if (eyes.size() > 1)
			{
				cout << "eyes number" << eyes.size() << endl;
				for (size_t j = 0; j < eyes.size() - 1; j++)
				{
					for (size_t m = j + 1;m < eyes.size();m++)

					{
						eyescompare = (float)cvRound((eyes[j].width + eyes[j].height) * 0.07) / (float)cvRound((eyes[m].width + eyes[m].height) * 0.07);

						cout << cvRound((eyes[j].width + eyes[j].height) * 0.07) << "," << cvRound((eyes[m].width + eyes[m].height) * 0.07) << "," << eyescompare << endl;
						if (abs(eyescompare - 1.0) < standard)

						{
							standard = abs(eyescompare - 1.0);

							choseneye1 = j;
							choseneye2 = m;
							cout << "chosen" << choseneye1 << "," << choseneye2 << endl;
						}

					}

				}

				Point eyeCenter1(eyes[choseneye1].x + eyes[choseneye1].width * 0.5, eyes[choseneye1].y + eyes[choseneye1].height * 0.5);
				Point eyeCenter2(eyes[choseneye2].x + eyes[choseneye2].width * 0.5, eyes[choseneye2].y + eyes[choseneye2].height * 0.5);

				noseX = (eyes[choseneye1].x + eyes[choseneye1].width * 0.5 + eyes[choseneye2].x + eyes[choseneye2].width * 0.5) * 0.5;
				noseY = (eyes[choseneye1].y + eyes[choseneye1].height * 0.5 + eyes[choseneye1].y + eyes[choseneye1].height * 0.5) * 0.5;
				cout << "nose" << noseX << "," << noseY << endl;
				eye = abs(eyes[choseneye1].x + eyes[choseneye1].width * 0.5 - eyes[choseneye2].x - eyes[choseneye2].width * 0.5);

				circle(heying, eyeCenter1, cvRound((eyes[choseneye1].width + eyes[choseneye1].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
				circle(heying, eyeCenter2, cvRound((eyes[choseneye2].width + eyes[choseneye2].height) * 0.07), Scalar(255, 0, 255), 4, 8, 0);
			}
		}

        Mat matScale_0 = imgTranslate(heying, 2400 - noseX, 1600 - noseY);
		
		
		namedWindow("result", WINDOW_NORMAL);
		// 显示图像
		
		
resizeWindow("result", 1080000 / eye, 7200000/ eye);
imshow("result", matScale_0);





		waitKey(5000);
	}
	
	return 0;
}