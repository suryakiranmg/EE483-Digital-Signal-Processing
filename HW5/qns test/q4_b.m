clc;clear all;
I = imread('cameraman.tif');J = dct2(I);
subplot(2, 2, 1); imagesc(log(abs(J)));
subplot(2, 2, 2); imagesc(J); colorbar;
y=0;
for i = 1:5
 for j = 1:5
 y=y +(J(i,j)^2);
 end
end
 display(y)
 g=0;
for i = 1:5
 for j = 1:5
g=g+(I(i,j)^2);
 end
end
display(g)