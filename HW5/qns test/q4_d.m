I = imread('cameraman.tif');
I = im2double(I);
T = dctmtx(32);
fun = @dct2;
J = blkproc(I,[8 8],fun);
imshow(I), figure, imshow(J)