#applying low pass filter on images in special domain
clear all
clc
i = imread('img.png');

#filter2 fx used for convolutional process
# 3p full->zero padding same->no zero padding 

f2 = fspecial('average',[5,5]); 
#average we have more filter -> disk, gaussian, log, laplacian, unsharp, motion
# increase the mask size [n,n] image is goes on high blurr
i2 = filter2(f2,i,'same'); #default - same
# same->no padding
subplot(2,2,1);
imshow(i2/255);
title('original image');

#filter2 fx (work in double), imfilter fx, conv2 fx work same
i3 = filter2(f2,i,'full');
# full->zero padding include so boundary is getting dark
subplot(2,2,2);
imshow(i3/255);
title('full filter image');


f4 = fspecial('average',[5,5]);
i4 = filter2(f4,i,'same');
# same->no padding
subplot(2,2,3);
imshow(i4/255);
title('mask size [5,5] image')

f5 = fspecial('average',[15,15]);
i5 = filter2(f5,i,'same');
# same->no padding
subplot(2,2,4);
imshow(i5/255);
title('mask size [15,15] image')
