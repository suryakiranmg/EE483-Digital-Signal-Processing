f_cutoff = [1/4 3/4];
mag = [1 0];
alpha = [0.02 0.002];
[n,Wn,beta,ftype] = kaiserord(f_cutoff,mag,alpha);
h = fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');
[H,W] = freqz(h,1);
figure(1)
plot(W/pi,abs(H));
title('Magnitude Response-Kaiser Window method');
