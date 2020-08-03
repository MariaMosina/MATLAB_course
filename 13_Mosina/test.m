im = imread('image.jpg');
res = processingFun(im, 51);
imshow(res);
imwrite(res, 'imagenew.jpg', 'jpg');