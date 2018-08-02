clear all; clc;
A = imread('cameraman.tif');
subplot(2,2,1);
imagesc(A);
B = dct2(A)
subplot(2,2,2);
imagesc(B);
