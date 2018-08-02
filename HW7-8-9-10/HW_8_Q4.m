clc;clear all;  % TF = (z-1)/(z^2-4z+4)
figure(1); 
[z,p,k]=tf2zp([1 -1],[1 -4 4]);
zplane(z,p); title('PZ plot a');
figure(2); 
[a,b] = zp2tf(z,p,k);freqz(a,b);title('Freq Resp a');

clc;clear all;  % TF = (z^4-Z^3+(3/8)z-(1/16)z+(1/256))/(z^2-4z+4)
figure(3);
[z,p,k]=tf2zp([1 -1 (3/8) (-1/16) (1/256)],[1 (5/2) (5/2) (5/4) (5/16) (1/32)]);
zplane(z,p); title('PZ plot b');
figure(4); 
[a,b] = zp2tf(z,p,k);freqz(a,b);title('Freq Resp b');

clc;clear all;  
figure(5); 
[z,p,k]=tf2zp([1 -1],[1 -2 0]);
zplane(z,p); title('PZ plot c');
figure(6); 
[a,b] = zp2tf(z,p,k);freqz(a,b);title('Freq Resp c');

clc;clear all;  
figure(7); 
num = [1 2 1];
den = [1 -2];
zplane(num,den); title('PZ plot d');
figure(8);
[h,w] = freqz(num,den);
plot(w/pi,abs(h));title('Freq Resp d');

clc;clear all;  
figure(9); 
num = [1 (-5/4) (5/8) (-5/32) (5/256) (-1/1024)];
den = [1 2 (3/2) (1/2) (1/16)];
zplane(num,den); title('PZ plot e');
figure(10);
[h,w] = freqz(num,den);
plot(w/pi,abs(h));title('Freq Resp e');

clc;clear all;  
figure(11); 
num = [1 4 3];
den = [1 (7/3) (-17/9) (1/3)];
zplane(num,den); title('PZ plot f');
figure(12);
[h,w] = freqz(num,den);
plot(w/pi,abs(h));title('Freq Resp f');
