N= 0:2^10;
x1= cos(N*pi/11);
display 'Now DFT of probelm 1'
tic
a1= dft(x1);
toc
figure(1)
title('Phase of DFT')
xlabel('Blah')
plot(N,mag2db(angle(a1)))
figure(2)
title('Maginitude of DFT')
xlabel('Apple')
plot(N,mag2db(abs(a1)))

% Freqz plot
figure(5)
freqz(x1,N)
display 'Now FFT of probelm 1'
tic
b1= fft(x1);
toc
x2=[];
for i=0:(length(N)-1)
    if (i<(length(N)/2)-1)
        x2(end+1)= 1;
    else
        x2(end+1)=0;
    end
end

display 'Now DFT for second system'
tic
a2= dft(x2);
toc
figure(3)
title('Phase of DFTof probelm 2')
plot(N,mag2db(angle(a2)))
figure(4)
title('Maginitud of DFT of problem 2')
plot(N,mag2db(abs(a2)))
% Freqz plot
figure(6)
freqz(x2,N)
display 'Now FFT for second system'
tic
b2= fft(x2);
toc