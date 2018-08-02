n = -20:1:20;
y1 = (heaviside(n+1) + 0.5*(n==-1));
y2 = (heaviside(n-3) + 0.5*(n==3));


y = ((n+1).^2).*(y1-y2);
stem(n,y);




