clc; clear all;
M = 18; L = 2*M+1;
n = -M:M;
wc1= 0.25*pi; wc2= 0.75*pi;
% Desired band pass filter
h_bp = (sin(wc2*n)./(pi*n))-(sin(wc1*n)./(pi*n));
h_bp(M+1)=(wc2-wc1)/pi;
%The system filter function
h = h_bp.*hamming(2*M+1)';
[H,W]=freqz(h,1);
figure(1); subplot(2,1,1) 
plot(W/pi,abs(H)); grid on;
title('Magnitude Response of the filter')
subplot(2,1,2);
plot(W/pi,angle(H));
title('Phase response of the filter');
figure(2); zplane(h,1);
