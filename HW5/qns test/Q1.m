clc; clear all;
N= 0:2^10;x1= cos(N*pi/11); % Cos
tic; dft_x1= dft(x1);toc
figure(1);subplot(2,2,1);
plot(N,mag2db(abs(dft_x1)));subplot(2,2,2); 
plot(N,angle(dft_x1));
% Freqz plot
figure(2);freqz(x1,N);
tic;fft_x1= fft(x1);toc;
x2=[]; % Rect
for i=0:(length(N)-1)
    if (i<(length(N)/2)-1)
        x2(end+1)= 1;
    else
        x2(end+1)=0;
    end
end
tic;dft_x2= dft(x2);toc;
figure(3);subplot(2,2,1);
plot(N,mag2db(abs(dft_x2)));
subplot(2,2,2);plot(N,angle(dft_x2));
% Freqz plot
figure(4);
freqz(x2,N);
tic; fft_x2= fft(x2); toc;
