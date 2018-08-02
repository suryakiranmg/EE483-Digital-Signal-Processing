n = 0:2^10;x1 = cos(pi*n/11); % Cos fun
x2 = zeros(n);
for i = 1:n-1
    if(n<(n/2-1))
        x2(n) = 1;
    end  
end

x1_dft = dft(x1);  % dft
figure(1)
subplot(2,2,1);
%plot(n,x1_dft)
plot(n/2,angle(x1_dft));
hold all;
subplot(2,2,2);
plot(n/2,mag2db(abs(x1_dft)));

figure(2)
freqz(x1,n);
