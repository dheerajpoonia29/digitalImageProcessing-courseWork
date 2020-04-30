clc
clear all
I = imread("image.jpg");
g = rgb2gray(I);

title("addition");
a = imadd(g,100);
subplot(2,2,2);
imshow(a);

title("substraction");
s = imsubstract(g,50);
subplot(2,2,2);
imshow(s);

title("mutliplicaiton");
m = immultiply(g,50);
subplot(2,2,3);
imshow(m);

title("divide");
d=imdivide(g,50);
subplot(2,2,4);
imshow(d);
