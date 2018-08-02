clc;
clear all;
close all;
x = double(imread('cameraman.tif'));
imagesc(x);
A=x.';
disp(A)
axis equal tight;
colormap(gray);
title('Signal Original)')
y=fft(A);
disp(y)
Xk=y(1:256);
disp(Xk)
z=zeros(1,1024);
Zk=z(257:1024);
Xk=[Xk Zk];
disp(Xk)
xn=ifft(Xk);
disp(xn)
figure;
imagesc(xn);
axis equal tight;
colormap(gray);
title('Signal Duplicate)')