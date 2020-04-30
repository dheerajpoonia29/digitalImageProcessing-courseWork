I = imread("image.jpg");
g = rgb2gray(I);
imshow(g);
[rows,cols]=size(g)
i=1; j=1;
c=zeroes(rows/2,cols/2);
for x=1:2:rows 
  for y=1:2:cols 
    c(i,j)=i(x,y)
    j=j+1;
  endfor
  i=i+1;
  j=1;
endfor
figure,imshow(g);
figure,imshow(c/225);