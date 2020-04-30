%% lab arithmetics operation
I = imread("flower.jpg");
J = imread("cats.jpg");

subplot(2,3,1);
imshow(I);
title("Cats");

subplot(2,3,2);
imshow(J);
title("Flower");

subplot(2,3,3);
a=imadd(I,J);
imshow(a);
title("Added");

subplot(2,3,4);
b=imsubtract(I,J);
imshow(b);
title("Substacted")

subplot(2,3,5);
c=immultiply(I,J);
imshow(c);
title("Multiplied");

subplot(2,3,6);
d=imdivide(I,J);
imshow(d);
title("Divided");
