wp = pi/4;
ws = 3*pi/8;
w_cutoff = (wp + ws)/2;
M = 8; %From calcln
n = -M:M;
hd = sin(w_cutoff*n)./(pi*n);
hd(M+1) = w_cutoff/pi;
[h,w] = freqz(hd,1);
figure(1);
plot(w/pi,abs(h));
title('Magnitude Resp-Least Square FIR Design');
