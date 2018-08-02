function y = filt1_transpose(x)
C = 0;
D = 0;
L = numel(x);
for n=1:L
y(n) = D - 2*x(n);
D = 0.5*y(n) + C;
C = 0.25*y(n)+x(n);
end