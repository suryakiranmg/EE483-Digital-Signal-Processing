fq = [0 1/4 3/8 1];
amp = [1 1 0 0];
weight = [50 500];
b = firpm(34,fq,amp,weight);
[h,w] = freqz(b,1,512);
figure()
plot(w/pi,abs(h));
title('Magnitude Response-Minimax');
