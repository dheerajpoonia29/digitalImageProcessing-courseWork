# applying noise on image and removing the noise using suitable filter 
clear all
clc
i = imread('img.png');
subplot(2,2,1);
imshow(i);
title('Original');

s = imnoise(i,'salt & pepper',0.1);
#p3 noise pixel ration
#salt & pepper, gaussian
subplot(2,2,2);
imshow(s);
title('salt & pepper Nois');

a = fspecial('average',[17,17]);
a1 = filter2(a,s);
subplot(2,2,3);
imshow(a1/255);
title('Avg Filter');
#avg filter on salt&pepper not giving good result, blurr the image 

#now applying median filter
m=medfilt2(s);
subplot(2,2,4);
imshow(m);
title('Median Filter');

#subplot 1 oriImg, 2noisey image, 3avgFilter, 4midFitler

