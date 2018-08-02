clc; clear all;
w_cutoff = 0.4636;
[b,a] = butter(17,w_cutoff);
[h,w] = freqz(b,a);
plot(w/pi,abs(h));
title('Freq Resp of Butterworth IIR filter');