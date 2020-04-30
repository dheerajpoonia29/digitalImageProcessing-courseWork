%% lab bitwise logical operation
A = imread("flower.jpg");
B = imread("cats.jpg");

c=zeros(size(A));
for (x=100:200)
  for (y=100:200)
    c(x,y)=255;
  endfor
endfor

subplot(3,3,1);
imshow(c);
C=unit8(c);
an=bitand(A,C);
subplot(3,3,2);
imshow(an);
an1=bitand(A,B);
subplot(3,3,3);
imshow(an1);
% playground created

% continue...


