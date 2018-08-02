clc; clear all;
x = zeros(1,200);
x(1)= 1;
y = filt1(x);
plot(y);