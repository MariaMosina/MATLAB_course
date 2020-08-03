im = imread('sample.jpg');
res = processingFun(im, 50);
imshow(res);
imwrite(res, 'samplenew.jpg', 'jpg');