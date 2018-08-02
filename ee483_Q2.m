n = -20:1:20;
y1 = (heaviside(-n+2) + 0.5*(n==-2));
y2 = (heaviside(n-4) + 0.5*(n==4));


y = y1.*y2;
stem(n,y);




