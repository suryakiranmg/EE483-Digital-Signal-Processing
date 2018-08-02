%%%%---ParksMcClellan Algorithm----%%%%%%%
clc; clear all;
%Length =37 thus Order = 36
f = [0 0.17 0.33 0.67 0.83 1]; %freq vector
a = [0 0.0 1.0 1.0 0.0 0]; % amplitude vector
b = firpm(36,f,a); % FIR filter by ParksMcClellean
figure(1); freqz(b);
figure(2); zplane(b);
figure(3);
[h,w] = freqz(b);
plot(f,a,w/pi,abs(h))
legend('Ideal Chara','firpm Design Chara')
xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'