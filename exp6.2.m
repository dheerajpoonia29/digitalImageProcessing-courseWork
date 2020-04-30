#noise = gaussian noise
clear all
clc


i = imread('img.png');
subplot(2,2,1);
imshow(i);
title('Original Image');

s = imnoise(i,'gaussian',0.01);
#p3 std deviation or variance or noise ratio pixel
#salt & pepper, gaussian
subplot(2,2,2);
imshow(s);
title('Gaussian Noise');

#MAKING GAUSSIAN FILTER
sigma=10; #value of std deviation
h=fspecial('gaussian',[5,5],sigma) ;
c=conv2(s,h,'same');  #h-filter
subplot(2,2,3);
imshow(c/255)
title('Gaussian Filter');

#MAKING WIENER FILTER
w=wiener2(s,[7,7]);
subplot(2,2,4);
imshow(w)
title('Wiener Filter');

