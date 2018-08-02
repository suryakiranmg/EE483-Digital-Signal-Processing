%%%%---ParksMcClellan Algorithm----%%%%%%%
clc; clear all;
%Length =15 thus Order = 14
wp=0.25*pi; ws = 0.45*pi;
f = [0 0.25 0.45 1]; %freq vector
a = [1 1 0 0]; % amplitude vector
W = [1 1] % Weights
b1 = firpm(14,f,a,W); % FIR filter by ParksMcClellean
figure(1);
[h,w] = freqz(b1);
plot(f,a,w/pi,abs(h))
legend('Ideal Chara','firpm LPF Design - 1')
xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'
%%%-----------second LPF
wp=0.5*pi; ws = 0.6*pi;
f = [0 0.5 0.6 1]; %freq vector
b2 = firpm(14,f,a,W); % FIR filter by ParksMcClellean
figure(2);
[h,w] = freqz(b2);
plot(f,a,w/pi,abs(h))
legend('Ideal Chara','firpm LPF Design - 2')
xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'