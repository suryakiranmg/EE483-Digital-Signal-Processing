clc;clear all;
T = 0.1 % 10Hz
t = 0:T:40;t = t(1:end-1);len = length(t)
for n= 1:len
if((t(n)>= 0)&&(t(n)<10))    x(n) = cos(3*pi*t(n));
elseif((t(n)>= 10)&&(t(n)<20))    x(n) = 0.5*sin(3.5*pi*t(n));
elseif ((t(n)>= 20)&&(t(n)<30))    x(n) = (1/6)*cos(4*pi*t(n));
else     x(n) = sin(4.75*pi*t(n));
end
end
figure(1);subplot(2,3,1);grid on;
plot(x);xlabel('Freq');ylabel('Mag');title('Plot of x(n)')
% DFT of x(n)
DFT_X = fft(x);
subplot(2,3,2);plot(abs(DFT_X));xlabel('Freq');
ylabel('Mag');title('Plot of DFT of x(n)')
% to shift x label of DFT
for i=0:len-1
    if((i>=0)&&(i<= len/2))  
        f(i+1) = i/(len*T);
    else 
        f(i+1) = (i-len)/(len*T);
    end
end
subplot(2,3,3);
DFT_X_Shift = fftshift(fft(x));plot(f,abs(DFT_X_Shift));
xlabel('Freq');ylabel('Mag');title('Plot of DFT of x(n)')
%Hamming Window
W_Hamming = hamming(1,'periodic');
Hamming_X = x.*W_Hamming;
DFT_Hamming_X = fft(Hamming_X);
subplot(2,3,4);plot(f,abs(Hamming_X));xlabel('Freq');
ylabel('Mag');title('Hamming');xlim([-5,5]);
%Hann Window 
W_Hann = hann(1,'periodic');
Hann_X = x.*W_Hann;
DFT_Hann_X = fft(Hann_X);
subplot(2,3,5);plot(f,abs(Hann_X));xlabel('Freq');
ylabel('Mag');title('Hann');xlim([-5,5]);
%Blackmann Window
W_Blackman = blackman(1,'periodic');
Blackman_X = x.*W_Blackman;
DFT_Blackman_X = fft(Blackman_X);
subplot(2,3,6);plot(f,abs(Blackman_X));xlabel('Freq');
ylabel('Mag');title('Blackman');xlim([-5,5]);
%STFT
STFT_X = log(abs(DFT_Hamming_X));
figure(2);
imagesc(STFT_X);
colorbar;


