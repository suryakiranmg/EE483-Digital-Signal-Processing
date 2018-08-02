n = -20:1:20;
y1 = 6.*(heaviside(n+3) + 0.5*(n==-3));
y2 = -3.*(heaviside(n-2) + 0.5*(n==2));
y3 = -3.*(heaviside(n-4) + 0.5*(n==4));

y = y1+y2+y3;
stem(n,y);