clc; clear all;
a = zeros (17,18) ;
c = 0.4636 ;
for L = 1:17
a(L,1:2)= [1-c*exp(j*pi*((8+L)/17)),-1-c*exp(j*pi*((8+L)/17 ))];
end
multifft = ones(1,18);
for L = 1:17
multifft = fft(a(L,:)).* multifft;
end
coefficientDen = ifft(multifft);
%//
num = zeros(1,18);
for i = 0:17
num(i+1) = nchoosek(17,i);
end
num = c^17*num ;
[h ,w]= freqz(num ,coefficientDen ) ;
plot (w/pi , abs (h) ) ;
title('magnitude response') ;