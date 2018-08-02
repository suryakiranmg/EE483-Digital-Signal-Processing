clear all; clc;
load('orig10k.mat');
% upsampling 
audio_upsamp = upsample(x10k,4);
%Filtering - with Hanning window
n = -30:30; ord = 60;
w_cut = pi/5; up_factor = 4;
h = up_factor*(sin(w_cut*n)./(pi*n));
h((ord/2)+1) = up_factor*(w_cut/pi);
h = h.*hann(ord+1)';
[H,w] = freqz(h,1);
figure(1); plot(w/pi,abs(H)); 
title('Magnitude Response-Hanning Window');
audio_filtered = filter(h,1,audio_upsamp);
%downsampling by factor of 5
y = downsample(audio_filtered,5);
soundsc(x10k);
soundsc(y);
% plotting the difference between the sound
figure(2)
plot(x10k)
hold on;plot(y)
title('Difference b/n 2 audio samples');
