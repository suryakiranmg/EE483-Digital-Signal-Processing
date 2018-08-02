clc; clear all;
x = double(imread('cameraman.tif'));
subplot(2,2,1);
imagesc(x);
%colorbar
axis equal
axis tight
 hold;
y=dct2(x)
subplot(2,2,2)
imagesc(log(abs(y)));